/*
 *  This file is part of the optimized implementation of the Picnic signature scheme.
 *  See the accompanying documentation for complete details.
 *
 *  The code is provided under the MIT license, see LICENSE for
 *  more details.
 *  SPDX-License-Identifier: MIT
 */


#include "picnic.h"

#include <assert.h>
#include <stdlib.h>
#include <string.h>

#include "compat.h"
#include "io.h"
#include "lowmc.h"
#include "picnic_instances.h"
#include "picnic3_impl.h"
#include "randomness.h"

#include <stdio.h>

/* All PICNIC3L3 Jasmin versions linked into one binary (see import_s.sh).
 * Each version's exported functions carry a suffix:
 *   _for   : for-loop version          (code/for_loops)
 *   _base  : while loops, formosa-Keccak (code/old_bitstream)
 *   _tweak : + L3 LowMC tweak           (code/no_sliced_arrays)
 *   _slice : + array slicing            (code/sliced_arrays)
 * Within every run, C and all Jasmin versions are measured back to back,
 * and the order of the Jasmin versions is rotated from run to run, so that
 * all versions see the same machine conditions. */
#define DECL_JAZZ(suf) \
  extern void keyGen_jazz_##suf(uint64_t* privatekey_data, uint64_t* publickey_data); \
  extern void verify_picnic3_jazz_##suf(uint64_t* pubkey, uint64_t* plaintext, uint64_t* message, uint64_t* signature, uint64_t sigSize, uint64_t* result); \
  extern void sign_picnic3_jazz_##suf(uint64_t* privateKey, uint64_t* pubKey, uint64_t* plaintext, uint64_t* message, uint64_t* sig_j);
DECL_JAZZ(for)
DECL_JAZZ(base)
DECL_JAZZ(tweak)
DECL_JAZZ(slice)

typedef void (*keygen_fn)(uint64_t*, uint64_t*);
typedef void (*sign_fn)(uint64_t*, uint64_t*, uint64_t*, uint64_t*, uint64_t*);
typedef void (*verify_fn)(uint64_t*, uint64_t*, uint64_t*, uint64_t*, uint64_t, uint64_t*);

#define NV 4
static const char* jazz_name[NV]   = { "for-loop", "base (formosa-Keccak)", "+ L3 tweak", "+ array slicing" };
static keygen_fn   jazz_keygen[NV] = { keyGen_jazz_for, keyGen_jazz_base, keyGen_jazz_tweak, keyGen_jazz_slice };
static sign_fn     jazz_sign[NV]   = { sign_picnic3_jazz_for, sign_picnic3_jazz_base, sign_picnic3_jazz_tweak, sign_picnic3_jazz_slice };
static verify_fn   jazz_verify[NV] = { verify_picnic3_jazz_for, verify_picnic3_jazz_base, verify_picnic3_jazz_tweak, verify_picnic3_jazz_slice };

static void print_results(const char* op, double* avg, int total, int runs)
{
  printf("\n\n%s (avg over %d runs of the median of %d executions)\n", op, runs, total);
  printf("  %-24s %14.0f cycles\n", "C", avg[0]);
  for (int v = 0; v < NV; v++)
    printf("  %-24s %14.0f cycles  (%6.2f%% of C)\n", jazz_name[v], avg[1+v], 100.0 * avg[1+v] / avg[0]);
  printf("\n");
}

/* The old-harness comparison is only built with -DOLD_HARNESS (make test OLD_HARNESS=1). */
#ifdef OLD_HARNESS
#define OLDH(...) __VA_ARGS__
#else
#define OLDH(...)
#endif

/* Old-harness comparison: the submitted version stored rdtsc timestamps in double arrays
 * and passed them to cpucycles_median(), which reads them as uint64_t. For a timestamp T
 * with 2^e <= T < 2^(e+1), consecutive doubles are 2^(e-52) apart, so the old harness
 * reports (true cycles) / 2^(e-52). */
OLDH(static void print_old_harness(const char* op, double* avg, double* avg_old, uint64_t ts)
{
  int e = 63 - __builtin_clzll(ts);
  double predicted = (e >= 52) ? (double)(1ULL << (e - 52)) : 1.0 / (double)(1ULL << (52 - e));
  printf("%s with the OLD harness (double arrays); timestamp ~2^%d, predicted fixed/old ratio %g\n", op, e, predicted);
  printf("  %-24s %14.0f cycles  (fixed/old = %6.2f)\n", "C", avg_old[0], avg[0] / avg_old[0]);
  for (int v = 0; v < NV; v++)
    printf("  %-24s %14.0f cycles  (fixed/old = %6.2f, %6.2f%% of C)\n", jazz_name[v], avg_old[1+v], avg[1+v] / avg_old[1+v], 100.0 * avg_old[1+v] / avg_old[0]);
  printf("\n");
})

static inline uint64_t cpucycles(void) {
  uint64_t result;

  __asm__ volatile (" rdtsc; shlq $32,%%rdx; orq %%rdx,%%rax"
    : "=a" (result) : : "%rdx", "memory");

  return result;
}

static int cmp_uint64(const void *a, const void *b)
{
  if(*(uint64_t *)a < *(uint64_t *)b){ return -1; }
  if(*(uint64_t *)a > *(uint64_t *)b){ return 1; }
  return 0;
}

static uint64_t median(uint64_t *l, size_t llen)
{
  qsort(l,llen,sizeof(uint64_t),cmp_uint64);

  if(llen%2) return l[llen/2];
  else return (l[llen/2-1]+l[llen/2])/2;
}

static uint64_t cpucycles_median(uint64_t *cycles, size_t timings)
{
  size_t i;
  for (i = 0; i < timings-1; i++)
  { cycles[i] = cycles[i+1] - cycles[i]; }

  return median(cycles, timings-1);
}
// Public and private keys are serialized as follows:
// - public key: instance || C || p
// - secret key: instance || sk || C || p

#define SK_SK(sk) &(sk)->data[1]
#define SK_C(sk) &(sk)->data[1 + input_size]
#define SK_PT(sk) &(sk)->data[1 + input_size + output_size]

#define PK_SK(pk) &(pk)->data[1]
#define PK_C(pk) &(pk)->data[1]
#define PK_PT(pk) &(pk)->data[1 + output_size]

size_t PICNIC_CALLING_CONVENTION picnic_get_lowmc_block_size(picnic_params_t param) {
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return 0;
  }

  return instance->output_size;
}

size_t PICNIC_CALLING_CONVENTION picnic_signature_size(picnic_params_t param) {
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return 0;
  }

  return instance->max_signature_size;
}

size_t PICNIC_CALLING_CONVENTION picnic_get_private_key_size(picnic_params_t param) {
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return 0;
  }

  return picnic_get_public_key_size(param) + instance->input_size;
}

size_t PICNIC_CALLING_CONVENTION picnic_get_public_key_size(picnic_params_t param) {
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return 0;
  }

  return 1 + (instance->output_size << 1);
}

int PICNIC_CALLING_CONVENTION picnic_keygen(picnic_params_t param, picnic_publickey_t* pk,
                                            picnic_privatekey_t* sk) {

  if (!pk || !sk) {
    return -1;
  }

  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t input_size  = instance->input_size;
  const size_t output_size = instance->output_size;

  uint8_t* sk_sk = SK_SK(sk);
  uint8_t* sk_pt = SK_PT(sk);
  uint8_t* sk_c  = SK_C(sk);

  // generate private key
  sk->data[0] = param;
  // random secret key
  if (rand_bits(sk_sk, instance->lowmc.k)) {
    return -1;
  }
  // random plain text
  if (rand_bits(sk_pt, instance->lowmc.n)) {
    return -1;
  }
  // encrypt plaintext under secret key
  if (picnic_sk_to_pk(sk, pk)) {
    return -1;
  }
  // copy ciphertext to secret key
  memcpy(sk_c, PK_C(pk), output_size);
  return 0;
}

int PICNIC_CALLING_CONVENTION picnic_sk_to_pk(const picnic_privatekey_t* sk,
                                              picnic_publickey_t* pk) {
  if (!sk || !pk) {
    return -1;
  }

  const picnic_params_t param       = sk->data[0];
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t input_size  = instance->input_size;
  const size_t output_size = instance->output_size;

  const uint8_t* sk_sk = SK_SK(sk);
  uint8_t* pk_c        = PK_C(pk);
  uint8_t* pk_pt       = PK_PT(pk);
  const uint8_t* sk_pt = SK_PT(sk);

  uint8_t* sk_j = calloc(24 * 4, sizeof(uint8_t));
  uint8_t* pk_j = calloc(24 * 3, sizeof(uint8_t));

  memcpy(sk_j, &sk->data[1], 72);
  memcpy(pk_j, &pk->data[1], 48);

  int runs = 1000, total = 4098;
  double times[total];
  uint64_t time_start_c, time_stop_c, time_start_j, time_stop_j;
  uint64_t total_j = 0, total_c = 0;

  uint64_t* sk_sk_j = (uint64_t *)sk_j;
  uint64_t* pk_sk_j = (uint64_t *)pk_j;

  uint64_t* plaintext_j = malloc(sizeof(uint64_t) * 4);
  uint64_t* privkey_j = malloc(sizeof(uint64_t) * 4);
  uint64_t* ciphertext_j = malloc(sizeof(uint64_t) * 4);
  uint64_t results[1+NV][runs], cycles_c[total], cycles_j[total];
  int keys_ok[NV] = {1, 1, 1, 1};
  mzd_local_t plaintext[total][(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];
  mzd_local_t privkey[total][(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];
  mzd_local_t ciphertext[total][(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];

  for (int i = 0; i < total; ++i)
  {
    cycles_c[i] = 0;
    cycles_j[i] = 0;
  }
  for (int i = 0; i < runs; ++i)
    for (int v = 0; v <= NV; v++) results[v][i] = 0;

  for(int j = 0; j < runs; j ++)
  {
    for (int i = 0; i < total; i++)
     {
       cycles_c[i] = cpucycles();

       mzd_from_char_array(plaintext[i], sk_pt, output_size);
       mzd_from_char_array(privkey[i], sk_sk, input_size);

       instance->impls.lowmc(privkey[i], plaintext[i], ciphertext[i]);

       pk->data[0] = param;
       memcpy(pk_pt, sk_pt, output_size);
       mzd_to_char_array(pk_c, ciphertext[i], output_size);
     }
     results[0][j] = cpucycles_median(cycles_c, total);

     for (int k = 0; k < NV; k++)
     {
       int v = (j + k) % NV;   // rotate the order of the Jasmin versions
       for (int i = 0; i < total; i++)
       {
         cycles_j[i] = cpucycles();

         jazz_keygen[v](sk_sk_j, pk_sk_j);
       }
       results[1+v][j] = cpucycles_median(cycles_j, total);
       // check the keys produced by this version
       if(memcmp(&sk->data[1],sk_sk_j,72) != 0 || memcmp(&pk->data[1],pk_sk_j,48) != 0) keys_ok[v] = 0;
     }
  }

  // Get performance stats
  double avg[1+NV];
  for (int v = 0; v <= NV; v++) { avg[v] = 0; for(int i=0; i < runs; i++) avg[v] += results[v][i]; avg[v] /= (double)runs; }
  print_results("KeyGen", avg, total, runs);

  for (int v = 0; v < NV; v++)
    if (!keys_ok[v]) printf("\n\n Missmatch between generated keys (%s)!!!\n\n\n", jazz_name[v]);

  free(sk_j);
  free(pk_j);
  free(plaintext_j);
  free(privkey_j);
  free(ciphertext_j);

  return 0;
}


int PICNIC_CALLING_CONVENTION picnic_validate_keypair(const picnic_privatekey_t* sk,
                                                      const picnic_publickey_t* pk) {
  if (!sk || !pk) {
    return -1;
  }

  const picnic_params_t param       = sk->data[0];
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t input_size  = instance->input_size;
  const size_t output_size = instance->output_size;
  const uint8_t* sk_sk     = SK_SK(sk);
  const uint8_t* sk_pt     = SK_PT(sk);
  const uint8_t* sk_c      = SK_C(sk);
  const uint8_t* pk_pt     = PK_PT(pk);
  const uint8_t* pk_c      = PK_C(pk);

  // check param and plaintext
  if (param != pk->data[0] || memcmp(sk_pt, pk_pt, output_size) != 0 ||
      memcmp(sk_c, pk_c, output_size) != 0) {
    return -1;
  }

  mzd_local_t plaintext[(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];
  mzd_local_t privkey[(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];
  mzd_local_t ciphertext[(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];

  mzd_from_char_array(plaintext, sk_pt, instance->output_size);
  mzd_from_char_array(privkey, sk_sk, instance->input_size);

  // compute public key
  instance->impls.lowmc(privkey, plaintext, ciphertext);

  uint8_t buffer[MAX_LOWMC_BLOCK_SIZE];
  mzd_to_char_array(buffer, ciphertext, output_size);

  return memcmp(buffer, pk_c, output_size);
}

int PICNIC_CALLING_CONVENTION picnic_sign(const picnic_privatekey_t* sk, const uint8_t* message,
                                          size_t message_len, uint8_t* signature,
                                          size_t* signature_len, uint64_t* sig_j) {

  if (!sk || !signature || !signature_len) {
    return -1;
  }

  const picnic_params_t param       = sk->data[0];
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t output_size = instance->output_size;
  const size_t input_size  = instance->input_size;

  const uint8_t* sk_sk = SK_SK(sk);
  const uint8_t* sk_c  = SK_C(sk);
  const uint8_t* sk_pt = SK_PT(sk);

  int runs = 100, total = 128;
  int ret = 0;
  uint64_t cycles_c[total], cycles_j[total];
  // old (submitted) harness: same timestamps kept in double arrays, then read as uint64_t
  OLDH(double dcycles_c[total], dcycles_j[total];)
  OLDH(double results_old[1+NV][runs];)
  OLDH(uint64_t last_ts = 0;)
  double results[1+NV][runs];
  // every version signs into its own buffer; version "base" writes sig_j (used by the test afterwards)
  const size_t sig_bytes = picnic_signature_size(param) * sizeof(uint64_t);
  uint64_t* sig_v[NV];
  for (int v = 0; v < NV; v++) sig_v[v] = (v == 1) ? sig_j : calloc(sig_bytes, 1);

  for (int i = 0; i < total; ++i)
  {
    cycles_c[i] = 0;
    cycles_j[i] = 0;
  }
  for (int i = 0; i < runs; ++i)
    for (int v = 0; v <= NV; v++) results[v][i] = 0;

  if (param == Picnic3_L1 || param == Picnic3_L3 || param == Picnic3_L5) {
    for(int j = 0; j < runs; j ++)
    {
      for (int i = 0; i < total; i++)
       {
         cycles_c[i] = cpucycles(); OLDH(dcycles_c[i] = (double)cycles_c[i];)

         ret = impl_sign_picnic3(instance, sk_pt, sk_sk, sk_c, message, message_len, signature, signature_len);
       }
       results[0][j] = cpucycles_median(cycles_c, total);
       OLDH(results_old[0][j] = cpucycles_median((uint64_t*)dcycles_c, total);)

       for (int k = 0; k < NV; k++)
       {
         int v = (j + k) % NV;   // rotate the order of the Jasmin versions
         for (int i = 0; i < total; i++)
         {
           cycles_j[i] = cpucycles(); OLDH(dcycles_j[i] = (double)cycles_j[i];)

           jazz_sign[v]((uint64_t*)sk_sk, (uint64_t*)sk_c, (uint64_t*)sk_pt, (uint64_t*)message, sig_v[v]);
         }
         OLDH(last_ts = cycles_j[total-1];)
         results[1+v][j] = cpucycles_median(cycles_j, total);
         OLDH(results_old[1+v][j] = cpucycles_median((uint64_t*)dcycles_j, total);)
       }
    }
  }
  else
  {
    return -1;
  }

// Get performance stats 
  double avg[1+NV];
  for (int v = 0; v <= NV; v++) { avg[v] = 0; for(int i=0; i < runs; i++) avg[v] += results[v][i]; avg[v] /= (double)runs; }
  print_results("Sign", avg, total, runs);
  OLDH({ double avg_old[1+NV];
    for (int v = 0; v <= NV; v++) { avg_old[v] = 0; for(int i=0; i < runs; i++) avg_old[v] += results_old[v][i]; avg_old[v] /= (double)runs; }
    print_old_harness("Sign", avg, avg_old, last_ts); })

  // all versions must produce the same signature
  for (int v = 0; v < NV; v++)
  {
    if (v != 1 && memcmp(sig_v[v], sig_j, sig_bytes) != 0)
      printf("\n\n Signature of %s differs from %s!!!\n\n", jazz_name[v], jazz_name[1]);
    if (v != 1) free(sig_v[v]);
  }
//

  return ret;
}

int PICNIC_CALLING_CONVENTION picnic_verify(const picnic_publickey_t* pk, const uint8_t* message,
                                            size_t message_len, const uint8_t* signature,
                                            size_t signature_len, uint64_t* sig_j) {
  if (!pk || !signature || !signature_len) {
    return -1;
  }

  const picnic_params_t param       = pk->data[0];
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t output_size = instance->output_size;

  const uint8_t* pk_c  = PK_C(pk);
  const uint8_t* pk_pt = PK_PT(pk);

  int runs = 100, total = 128; 
  int ret = 0;
  uint64_t result, result_v[NV];
  uint64_t cycles_c[total], cycles_j[total];
  // old (submitted) harness: same timestamps kept in double arrays, then read as uint64_t
  OLDH(double dcycles_c[total], dcycles_j[total];)
  OLDH(double results_old[1+NV][runs];)
  OLDH(uint64_t last_ts = 0;)
  double results[1+NV][runs];

  for (int i = 0; i < total; ++i)
  {
    cycles_c[i] = 0;
    cycles_j[i] = 0;
  }
  for (int i = 0; i < runs; ++i)
    for (int v = 0; v <= NV; v++) results[v][i] = 0;
  for (int v = 0; v < NV; v++) result_v[v] = 1;

  if (param == Picnic3_L1 || param == Picnic3_L3 || param == Picnic3_L5) {
    for(int j = 0; j < runs; j ++)
    {
      for (int i = 0; i < total; i++)
       {
         cycles_c[i] = cpucycles(); OLDH(dcycles_c[i] = (double)cycles_c[i];)

         ret = impl_verify_picnic3(instance, pk_pt, pk_c, message, message_len, (const uint8_t*)sig_j, signature_len);
       }
       results[0][j] = cpucycles_median(cycles_c, total);
       OLDH(results_old[0][j] = cpucycles_median((uint64_t*)dcycles_c, total);)

       for (int k = 0; k < NV; k++)
       {
         int v = (j + k) % NV;   // rotate the order of the Jasmin versions
         for (int i = 0; i < total; i++)
         {
           cycles_j[i] = cpucycles(); OLDH(dcycles_j[i] = (double)cycles_j[i];)

           jazz_verify[v]((uint64_t*)pk_c, (uint64_t*)pk_pt, (uint64_t*)message, sig_j, signature_len, &result_v[v]);
         }
         OLDH(last_ts = cycles_j[total-1];)
         results[1+v][j] = cpucycles_median(cycles_j, total);
         OLDH(results_old[1+v][j] = cpucycles_median((uint64_t*)dcycles_j, total);)
       }
    }
  }
  else
  {
    return -1;
  }

  // Get performance stats iff the verification checks out
  result = 0;
  for (int v = 0; v < NV; v++)
    if (result_v[v] != 0) { result = 1; printf("\nJasmin %s failed to verify the signature!!\n", jazz_name[v]); }
  if(result != 0 || ret != 0){printf("\nFailed to verify the signatures!!\n\n");}
  else
  {
    double avg[1+NV];
    for (int v = 0; v <= NV; v++) { avg[v] = 0; for(int i=0; i < runs; i++) avg[v] += results[v][i]; avg[v] /= (double)runs; }
    print_results("Verify", avg, total, runs);
  OLDH({ double avg_old[1+NV];
    for (int v = 0; v <= NV; v++) { avg_old[v] = 0; for(int i=0; i < runs; i++) avg_old[v] += results_old[v][i]; avg_old[v] /= (double)runs; }
    print_old_harness("Verify", avg, avg_old, last_ts); })
  }

  return ret;
}

const char* PICNIC_CALLING_CONVENTION picnic_get_param_name(picnic_params_t parameters) {
  switch (parameters) {
  case Picnic_L1_FS:
    return "Picnic_L1_FS";
  case Picnic_L1_UR:
    return "Picnic_L1_UR";
  case Picnic_L3_FS:
    return "Picnic_L3_FS";
  case Picnic_L3_UR:
    return "Picnic_L3_UR";
  case Picnic_L5_FS:
    return "Picnic_L5_FS";
  case Picnic_L5_UR:
    return "Picnic_L5_UR";
  case Picnic3_L1:
    return "Picnic3_L1";
  case Picnic3_L3:
    return "Picnic3_L3";
  case Picnic3_L5:
    return "Picnic3_L5";
  case Picnic_L1_full:
    return "Picnic_L1_full";
  case Picnic_L3_full:
    return "Picnic_L3_full";
  case Picnic_L5_full:
    return "Picnic_L5_full";
  default:
    return "Unknown parameter set";
  }
}

int PICNIC_CALLING_CONVENTION picnic_write_public_key(const picnic_publickey_t* key, uint8_t* buf,
                                                      size_t buflen) {
  if (!key || !buf) {
    return -1;
  }

  const picnic_params_t param       = key->data[0];
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t output_size    = instance->output_size;
  const size_t bytes_required = 1 + 2 * output_size;
  if (buflen < bytes_required) {
    return -1;
  }

  memcpy(buf, key->data, bytes_required);
  return (int)bytes_required;
}

int PICNIC_CALLING_CONVENTION picnic_read_public_key(picnic_publickey_t* key, const uint8_t* buf,
                                                     size_t buflen) {
  if (!key || !buf || buflen < 1) {
    return -1;
  }

  const picnic_params_t param       = buf[0];
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t output_size    = instance->output_size;
  const size_t bytes_required = 1 + 2 * output_size;
  if (buflen < bytes_required) {
    return -1;
  }

  if (param == Picnic_L1_full || param == Picnic_L5_full || param == Picnic3_L1 ||
      param == Picnic3_L5) {
    const unsigned int diff = output_size * 8 - instance->lowmc.n;
    if (check_padding_bits(buf[1 + output_size - 1], diff) ||
        check_padding_bits(buf[1 + 2 * output_size - 1], diff)) {
      return -1;
    }
  }

  memcpy(key->data, buf, bytes_required);
  return 0;
}

int PICNIC_CALLING_CONVENTION picnic_write_private_key(const picnic_privatekey_t* key, uint8_t* buf,
                                                       size_t buflen) {
  if (!key || !buf) {
    return -1;
  }

  const picnic_params_t param       = key->data[0];
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t input_size     = instance->input_size;
  const size_t output_size    = instance->output_size;
  const size_t bytes_required = 1 + input_size + 2 * output_size;
  if (buflen < bytes_required) {
    return -1;
  }

  memcpy(buf, &key->data, bytes_required);
  return (int)bytes_required;
}

int PICNIC_CALLING_CONVENTION picnic_read_private_key(picnic_privatekey_t* key, const uint8_t* buf,
                                                      size_t buflen) {
  if (!key || !buf || buflen < 1) {
    return -1;
  }

  const picnic_params_t param       = buf[0];
  const picnic_instance_t* instance = picnic_instance_get(param);
  if (!instance) {
    return -1;
  }

  const size_t input_size     = instance->input_size;
  const size_t output_size    = instance->output_size;
  const size_t bytes_required = 1 + input_size + 2 * output_size;
  if (buflen < bytes_required) {
    return -1;
  }

  if (param == Picnic_L1_full || param == Picnic_L5_full || param == Picnic3_L1 ||
      param == Picnic3_L5) {
    const unsigned int diff = output_size * 8 - instance->lowmc.n;
    assert(diff == input_size * 8 - instance->lowmc.k);
    /* sanity check of public data: padding bits need to be 0 */
    const int check = check_padding_bits(buf[1 + input_size - 1], diff) |
                      check_padding_bits(buf[1 + input_size + output_size - 1], diff) |
                      check_padding_bits(buf[1 + input_size + 2 * output_size - 1], diff);
    picnic_declassify(&check, sizeof(check));
    if (check) {
      return -1;
    }
  }

  memcpy(key->data, buf, bytes_required);
  return 0;
}

void PICNIC_CALLING_CONVENTION picnic_clear_private_key(picnic_privatekey_t* key) {
  explicit_bzero(key, sizeof(picnic_privatekey_t));
}


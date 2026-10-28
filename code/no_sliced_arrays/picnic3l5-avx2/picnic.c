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

extern void keyGen_jazz(uint64_t* privatekey_data, uint64_t* publickey_data);
extern void verify_picnic3_jazz(uint64_t* pubkey, uint64_t* plaintext, uint64_t* message, uint64_t* signature, uint64_t signature_len, uint64_t* result);
extern void sign_picnic3_jazz(uint64_t* privateKey, uint64_t* pubKey, uint64_t* plaintext, uint64_t* message, uint64_t* sig_j);

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

  uint8_t* sk_j = malloc(sizeof(uint8_t) * 32 * 3);
  uint8_t* pk_j = malloc(sizeof(uint8_t) * 32 * 2);

  memcpy(sk_j, &sk->data[1], 32 * 3);
  memcpy(pk_j, &pk->data[1], 32 * 2);


  int runs = 1000, total = 4098;
  double times[total];
  uint64_t time_start_c, time_stop_c, time_start_j, time_stop_j;
  uint64_t total_j = 0, total_c = 0;

  uint64_t* sk_sk_j = (uint64_t *)sk_j;
  uint64_t* pk_sk_j = (uint64_t *)pk_j;

  uint64_t* plaintext_j = malloc(sizeof(uint64_t) * 4);
  uint64_t* privkey_j = malloc(sizeof(uint64_t) * 4);
  uint64_t* ciphertext_j = malloc(sizeof(uint64_t) * 4);
  uint64_t results[2][runs], cycles_c[total], cycles_j[total];
  mzd_local_t plaintext[total][(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];
  mzd_local_t privkey[total][(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];
  mzd_local_t ciphertext[total][(MAX_LOWMC_BLOCK_SIZE_BITS + 255) / 256];

  for (int i = 0; i < total; ++i)
  {
    cycles_c[i] = 0;
    cycles_j[i] = 0;
  }
  for (int i = 0; i < runs; ++i)
  {
    results[0][i] = 0;
    results[1][i] = 0;
  }

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

     for (int i = 0; i < total; i++)
     {
       cycles_j[i] = cpucycles();

       keyGen_jazz(sk_sk_j, pk_sk_j);
     }
     results[1][j] = cpucycles_median(cycles_j, total);

  }
// Get performance stats
  double avg0 = 0, avg1 = 0;
  for(int i=0; i < runs; i++){avg0 += results[0][i]; avg1 += results[1][i];}
  double avg0_per_run, avg1_per_run, avg_rel;
  avg0_per_run = (avg0 / (double)runs);
  avg1_per_run = (avg1 / (double)runs);
  avg_rel = (avg1_per_run / avg0_per_run) * 100.0;
  float r1 = avg0_per_run, r2 = avg1_per_run, r3 = avg_rel;
  printf("\n\nC average cycles: %f", r1);
  printf("\nJasmin average cycles: %f\n\n", r2);
  printf("\n\nThe Jasmin keyGen function took %f%% (avg on %d executions across %d runs) of the cycles the C KeyGen function.\n\n", r3,total, runs);

  if(memcmp(&sk->data[1],sk_sk_j,72) != 0 || memcmp(&pk->data[1],pk_sk_j,48) != 0)
  {
   printf("}\n\n Missmath between generated keys!!!\n\n\n");
  }
//
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
  double results[2][runs];

  for (int i = 0; i < total; ++i)
  {
    cycles_c[i] = 0;
    cycles_j[i] = 0;
  }
  for (int i = 0; i < runs; ++i)
  {
    results[0][i] = 0;
    results[1][i] = 0;
  }

  if (param == Picnic3_L1 || param == Picnic3_L3 || param == Picnic3_L5) {
    for(int j = 0; j < runs; j ++)
    {
      for (int i = 0; i < total; i++)
       {
         cycles_c[i] = cpucycles();

         ret = impl_sign_picnic3(instance, sk_pt, sk_sk, sk_c, message, message_len, signature, signature_len);
       }
       results[0][j] = cpucycles_median(cycles_c, total);

       for (int i = 0; i < total; i++)
       {
         cycles_j[i] = cpucycles();

         sign_picnic3_jazz(sk_sk, sk_c, sk_pt, message, sig_j);
       }
       results[1][j] = cpucycles_median(cycles_j, total);
    }
  }
  else
  {
    return -1;
  }
// Get performance stats
  double avg0 = 0, avg1 = 0;
  for(int i=0; i < runs; i++){avg0 += results[0][i]; avg1 += results[1][i];}
  float r1 = ((double)avg0 / (double) runs);
  float r2 = ((double)avg1 / (double) runs);
  float r3 = ((double)avg1/(double)avg0) * 100.0;
  printf("\n\nC average cycles: %.0f", r1);
  printf("\nJasmin average cycles: %.0f\n\n", r2);
  printf("\n\nThe Jasmin Sign function took %.0f%% (avg on %d executions across %d runs) of the cycles the C Sign function.\n\n", r3, total, runs);
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
  uint64_t result = 111;
  uint64_t cycles_c[total], cycles_j[total];
  double results[2][runs];

  for (int i = 0; i < total; ++i)
  {
    cycles_c[i] = 0;
    cycles_j[i] = 0;
  }
  for (int i = 0; i < runs; ++i)
  {
    results[0][i] = 0;
    results[1][i] = 0;
  }
  
  if (param == Picnic3_L1 || param == Picnic3_L3 || param == Picnic3_L5) {
    for(int j = 0; j < runs; j ++)
    {
      for (int i = 0; i < total; i++)
       {
         cycles_c[i] = cpucycles();

         ret = impl_verify_picnic3(instance, pk_pt, pk_c, message, message_len, sig_j, signature_len);
       }
       results[0][j] = cpucycles_median(cycles_c, total);

       for (int i = 0; i < total; i++)
       {
         cycles_j[i] = cpucycles();

         verify_picnic3_jazz(pk_c, pk_pt, message, sig_j, signature_len, &result);
       }
       results[1][j] = cpucycles_median(cycles_j, total);
    }
  }
  else
  {
    return -1;
  }

  if(result != 0 || ret != 0){printf("\nFailed to verify the signatures!! Code %d\n\n", result);}
// Get performance stats
  else
  {
    double avg0 = 0, avg1 = 0;
    for(int i=0; i < runs; i++){avg0 += results[0][i]; avg1 += results[1][i];}
    float r1 = ((double)avg0 / (double) runs);
    float r2 = ((double)avg1 / (double) runs);
    float r3 = ((double)avg1/(double)avg0) * 100.0;
    printf("\n\nC average cycles: %.0f", r1);
    printf("\nJasmin average cycles: %.0f\n\n", r2);
    printf("\n\nThe Jasmin Verify function took %.0f%% (avg on %d executions across %d runs) of the cycles the C Sign function.\n\n", r3, total, runs);
  }
//
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


# Keep screen awake on macOS while make is running
$(shell command -v caffeinate > /dev/null 2>&1 && sh -c 'caffeinate -dis >/dev/null 2>&1 &')


# Check CPU configuration for reproducible benchmarks (macOS only)
_BENCH_PHYS  := $(shell sysctl -n hw.physicalcpu 2>/dev/null)
_BENCH_LOGIC := $(shell sysctl -n hw.logicalcpu 2>/dev/null)
ifneq ($(_BENCH_PHYS),$(_BENCH_LOGIC))
ifneq ($(_BENCH_PHYS),)
$(warning WARNING: Hyperthreading is ENABLED (physical=$(_BENCH_PHYS) logical=$(_BENCH_LOGIC)) — disable for reproducible benchmarks)
endif
endif
_BENCH_TURBO := $(shell ioreg -l -k TurboEnabled 2>/dev/null | grep '"TurboEnabled"' | head -1 | awk '{print $$NF}')
ifeq ($(_BENCH_TURBO),1)
$(warning WARNING: Turbo Boost is ENABLED — disable for reproducible benchmarks)
endif

CC=gcc
CFLAGS+=-g -O3
CPPFLAGS+=-I. -Isha3 -DNDEBUG

SOURCES=$(filter-out randomness.c,$(wildcard *.c)) $(wildcard sha3/*.c) $(wildcard sha3/*.s)
EXECUTABLE_APITEST=tests/api_test
EXECUTABLE_NISTKAT=NIST-KATs/PQCgenKAT_sign
EXECUTABLE_EXAMPLE=tests/picnic_test
LIBPICNIC=libpicnic.a
NISTKAT_SOURCES=$(wildcard NIST-KATs/*.c)

.PHONY: all test test2 jasmin_main clean ct_test valgrind_test copy_to_server ec_extraction

all: $(LIBPICNIC) $(EXECUTABLE_APITEST) $(EXECUTABLE_EXAMPLE) $(EXECUTABLE_NISTKAT)

$(LIBPICNIC): $(SOURCES:.c=.o) $(SOURCES:.s=.o)
	ar rcs $@ $^

.c.o:
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $< -o $@

.s.o:
	$(CC) -c $(CPPFLAGS) $(CFLAGS) -mavx2 $< -o $@

$(EXECUTABLE_NISTKAT): CPPFLAGS+=-DHAVE_RANDOMBYTES
$(EXECUTABLE_NISTKAT): CFLAGS+=-Wno-sign-compare -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-result

$(EXECUTABLE_EXAMPLE): $(EXECUTABLE_EXAMPLE).c $(LIBPICNIC) randomness.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) $^ -o $@

$(EXECUTABLE_APITEST): $(EXECUTABLE_APITEST).c $(LIBPICNIC) randomness.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) $^ -o $@

$(EXECUTABLE_NISTKAT): $(NISTKAT_SOURCES) $(LIBPICNIC) randomness.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) $^ -lcrypto -o $@

test: clean
	@clear
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 aligned_alloc.c -o aligned_alloc.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 bitstream.c -o bitstream.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 io.c -o io.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 lowmc.c -o lowmc.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 lowmc_192_192_4.c -o lowmc_192_192_4.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 mzd_additional.c -o mzd_additional.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 picnic.c -o picnic.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 picnic3_impl.c -o picnic3_impl.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 picnic3_simulate.c -o picnic3_simulate.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 picnic3_tree.c -o picnic3_tree.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 picnic3_types.c -o picnic3_types.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 picnic_instances.c -o picnic_instances.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 sign.c -o sign.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakHash.c -o sha3/KeccakHash.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakHashtimes4.c -o sha3/KeccakHashtimes4.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakP-1600-times4-SIMD256.c -o sha3/KeccakP-1600-times4-SIMD256.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakSponge.c -o sha3/KeccakSponge.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakSpongetimes4.c -o sha3/KeccakSpongetimes4.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 -mavx2 sha3/KeccakP-1600-AVX2.s -o sha3/KeccakP-1600-AVX2.o
	ar rcs libpicnic.a aligned_alloc.o bitstream.o io.o lowmc.o lowmc_192_192_4.o mzd_additional.o picnic.o picnic3_impl.o picnic3_simulate.o picnic3_tree.o picnic3_types.o picnic_instances.o sign.o sha3/KeccakHash.o sha3/KeccakHashtimes4.o sha3/KeccakP-1600-times4-SIMD256.o sha3/KeccakSponge.o sha3/KeccakSpongetimes4.o sha3/KeccakP-1600-AVX2.o
	as -o compiled_jasmin/main.o compiled_jasmin/main.s
	#compile all the things
	gcc -I. -Isha3 -DNDEBUG -g -O3 -I/usr/local/opt/openssl@3/include -L/usr/local/opt/openssl@3/lib  tests/picnic_test.c compiled_jasmin/main.o  libpicnic.a randomness.c -o tests/picnic_test
	@clear
	./tests/picnic_test

# This tests work for MACs with the modified keccak file
test2: jasmin_main test

jasmin_main:
	rm -f compiled_jasmin/main.s
	rm -f compiled_jasmin/main.o
	time jasminc -o compiled_jasmin/main.s jasminCode/main.jazz

ec_extraction:
	jasmin2ec --array-model=old --output-array=jasminCode/ext -f sign_commit_x4 jasminCode/main.jazz > jasminCode/ext/commitx4.ec
	mv jasminCode/ext/* ../../../../proof/extraction
	
copy_to_server:
	scp -r .  bench-mpi-8700K:/home/henrique.faria/PICNIC3//picnic3l3-avx2/

valgrind_test: test
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --max-stackframe=3000000  ./tests/picnic_test

ct_test:
	jasmin-ct --infer jasminCode/main.jazz

clean:
	rm -f $(wildcard *.o) $(wildcard sha3/*.o) $(LIBPICNIC) $(EXECUTABLE_APITEST) $(EXECUTABLE_EXAMPLE) $(EXECUTABLE_NISTKAT)

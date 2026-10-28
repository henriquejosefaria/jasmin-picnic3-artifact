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

.PHONY: all test test2 import clean valgrind_test server_copy server_test linux_prepare linux_test

all: test2

test: clean
	@clear
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 aligned_alloc.c -o aligned_alloc.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 bitstream.c -o bitstream.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 io.c -o io.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 lowmc.c -o lowmc.o
	gcc -c -I. -Isha3 -DNDEBUG -g -O3 lowmc_255_255_4.c -o lowmc_255_255_4.o
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
	ar rcs libpicnic.a aligned_alloc.o bitstream.o io.o lowmc.o lowmc_255_255_4.o mzd_additional.o picnic.o picnic3_impl.o picnic3_simulate.o picnic3_tree.o picnic3_types.o picnic_instances.o sign.o sha3/KeccakHash.o sha3/KeccakHashtimes4.o sha3/KeccakP-1600-times4-SIMD256.o sha3/KeccakSponge.o sha3/KeccakSpongetimes4.o sha3/KeccakP-1600-AVX2.o 
	as -o compiled_jasmin/main_for.o   compiled_jasmin/main_for.s
	as -o compiled_jasmin/main_base.o  compiled_jasmin/main_base.s
	as -o compiled_jasmin/main_slice.o compiled_jasmin/main_slice.s
	#compile all the things
	gcc -I. -Isha3 -DNDEBUG -g -O3 -I/usr/local/opt/openssl@3/include -L/usr/local/opt/openssl@3/lib tests/picnic_test.c compiled_jasmin/main_for.o compiled_jasmin/main_base.o compiled_jasmin/main_slice.o libpicnic.a randomness.c -o tests/picnic_test
	@clear
	./tests/picnic_test

# Re-import the compiled main.s of every L5 version (run after recompiling any of them)
import:
	sh import_s.sh

# import + test
test2: import test

valgrind_test: test
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --max-stackframe=3000000  ./tests/picnic_test

clean:
	rm -f $(wildcard *.o) $(wildcard sha3/*.o) $(LIBPICNIC) $(EXECUTABLE_APITEST) $(EXECUTABLE_EXAMPLE) $(EXECUTABLE_NISTKAT) compiled_jasmin/*.o linux/*.o

# ---------------------------------------------------------------------------
# Run the same comparison on the benchmark server (Linux/ELF).
# The .s files here are macOS (Mach-O) assembly, where C symbols carry a leading
# underscore; linux_test makes copies without it before assembling. The SHA-3 assembly
# (sha3/KeccakP-1600-AVX2.s) is converted to its Linux variant by sha3_linux.awk.
#   make server_test                    # copy to the server, build there, run, keep log
#   make server_test SERVER=host SERVER_DIR=path
SERVER     ?= bench-mpi-8700K
SERVER_DIR ?= PICNIC3/full_comparison/picnic3l5-avx2

server_copy:
	ssh $(SERVER) 'mkdir -p $(SERVER_DIR)'
	rsync -az --delete --exclude '*.o' --exclude 'libpicnic.a' --exclude 'tests/picnic_test' --exclude 'linux/' --exclude '*.log' ./ $(SERVER):$(SERVER_DIR)/

server_test: server_copy
	ssh $(SERVER) 'cd $(SERVER_DIR) && make linux_test' 2>&1 | tee server_run_$$(date +%Y%m%d_%H%M).log

# newer gcc (14+) turns these pre-existing C warnings into errors; keep them as warnings
LINUX_CFLAGS ?= -Wno-error=incompatible-pointer-types -Wno-error=implicit-function-declaration -Wno-error=int-conversion

linux_prepare:
	mkdir -p linux
	awk -f sha3_linux.awk sha3/KeccakP-1600-AVX2.s > linux/KeccakP-1600-AVX2.s
	for f in compiled_jasmin/main_*.s; do sed -E 's/(^|[^A-Za-z0-9_$$])_(keyGen_jazz|sign_picnic3_jazz|verify_picnic3_jazz)_/\1\2_/g' $$f > linux/$$(basename $$f); done

linux_test: clean linux_prepare
	@echo "=== machine state ==="; hostname; uname -r; lscpu | grep -E 'Model name|Thread\(s\) per core|CPU\(s\):|MHz'
	@echo "turbo disabled (intel_pstate/no_turbo): $$(cat /sys/devices/system/cpu/intel_pstate/no_turbo 2>/dev/null || echo n/a)"
	@echo "compiler: $$(gcc --version | head -1)"
	@echo "SMT active: $$(cat /sys/devices/system/cpu/smt/active 2>/dev/null || echo n/a)"
	@echo "uptime (s): $$(cut -d' ' -f1 /proc/uptime)"; echo "other users/load:"; who; uptime
	@echo "=== build ==="
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 aligned_alloc.c -o aligned_alloc.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 bitstream.c -o bitstream.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 io.c -o io.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 lowmc.c -o lowmc.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 lowmc_255_255_4.c -o lowmc_255_255_4.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 mzd_additional.c -o mzd_additional.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 picnic.c -o picnic.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 picnic3_impl.c -o picnic3_impl.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 picnic3_simulate.c -o picnic3_simulate.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 picnic3_tree.c -o picnic3_tree.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 picnic3_types.c -o picnic3_types.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 picnic_instances.c -o picnic_instances.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 sign.c -o sign.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakHash.c -o sha3/KeccakHash.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakHashtimes4.c -o sha3/KeccakHashtimes4.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakP-1600-times4-SIMD256.c -o sha3/KeccakP-1600-times4-SIMD256.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakSponge.c -o sha3/KeccakSponge.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 sha3/KeccakSpongetimes4.c -o sha3/KeccakSpongetimes4.o
	gcc -c $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 -mavx2 linux/KeccakP-1600-AVX2.s -o sha3/KeccakP-1600-AVX2.o
	ar rcs libpicnic.a aligned_alloc.o bitstream.o io.o lowmc.o lowmc_255_255_4.o mzd_additional.o picnic.o picnic3_impl.o picnic3_simulate.o picnic3_tree.o picnic3_types.o picnic_instances.o sign.o sha3/KeccakHash.o sha3/KeccakHashtimes4.o sha3/KeccakP-1600-times4-SIMD256.o sha3/KeccakSponge.o sha3/KeccakSpongetimes4.o sha3/KeccakP-1600-AVX2.o 
	as -o linux/main_for.o   linux/main_for.s
	as -o linux/main_base.o  linux/main_base.s
	as -o linux/main_slice.o linux/main_slice.s
	#compile all the things
	gcc $(LINUX_CFLAGS) -I. -Isha3 -DNDEBUG -g -O3 -I/usr/local/opt/openssl@3/include -L/usr/local/opt/openssl@3/lib tests/picnic_test.c linux/main_for.o linux/main_base.o linux/main_slice.o libpicnic.a randomness.c -o tests/picnic_test
	@echo "=== run ==="
	./tests/picnic_test

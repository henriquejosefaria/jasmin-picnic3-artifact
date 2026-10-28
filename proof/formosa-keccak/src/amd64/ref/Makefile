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

# -*- Makefile -*-

# --------------------------------------------------------------------
-include ../../../../Makefile.conf

CKP    := ../../../submodules/XKCP/lib/high/Keccak
CC     ?= /usr/bin/gcc
EXTRACTED ?= ../../../proof/amd64/extracted
CFLAGS   := -Wall -Wextra -O3 -fomit-frame-pointer -mavx2 \
             -I$(CKP) \
			 -I$(CKP)/FIPS202 \
			 -I../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2/SnP \
             -I../../../submodules/XKCP/lib/common \
             -I../../../submodules/XKCP/bin/x86-64/libXKCP.so.headers \
			 -I ../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2
LDFLAGS := -L../../../submodules/XKCP/bin/x86-64 -lXKCP
JFLAGS := ${JADDFLAGS}
OS     := $(shell uname -s)

# --------------------------------------------------------------------
.PHONY: all ec_keccak_array ec_keccak_mem clean ct ec ct_keccak_array ct_keccak_mem

# --------------------------------------------------------------------

all: ec_keccak_array ec_keccak_mem

test: run-test

JINC = keccak1600_fixedsizes_ASIZE.jinc keccak1600.jinc ../common/subreadwrite_ASIZE.jinc

SOURCES  := $(CKP)/FIPS202/SimpleFIPS202.c\
			 $(CKP)/KeccakSponge.c \
			 ../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2/KeccakP-1600-AVX2.s
			 
test/test_sha3: test/test_sha3.c $(SOURCES) sha3.s
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(SOURCES) sha3.s $<

run-test: test/test_sha3
	@LD_LIBRARY_PATH=../../../submodules/XKCP/bin/x86-64 ./test/test_sha3

sha3.s: keccak1600_ref_test.jazz $(JINC)
	$(JASMINC) -o $@ $(JFLAGS) keccak1600_ref_test.jazz 

ct: ct_keccak_array ct_keccak_mem

ct_keccak_array:
	$(JASMINCT) --infer $(EXTRACTED)/toEC_keccak1600_ASIZE_ref.jazz

ct_keccak_mem:
	$(JASMINCT) --infer $(EXTRACTED)/toEC_keccak1600_ref.jazz


ec: ec_keccak_array ec_keccak_mem

ec_keccak_array: 
	$(JASMIN2EC) $(EXTRACTED)/toEC_keccak1600_ASIZE_ref.jazz --array-model=old -o keccak_amd64_ref.ec \
				-f __addstate_ref \
				-f __absorb_ref \
				-f __dumpstate_ref \
				-f __squeeze_ref

ec_keccak_mem:
	$(JASMIN2EC) $(EXTRACTED)/toEC_keccak1600_ref.jazz --array-model=old -o keccak_amd64_mem_ref.ec \
				-f __addstate_m_ref \
 				-f __absorb_m_ref \
 				-f __dumpstate_m_ref \
 				-f __squeeze_m_ref


clean:
	rm -f *.ec

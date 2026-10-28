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

# =========================================================
# Makefile to build 256sha_xkcp.a (wrapper around libXKCP)
# =========================================================

CKP      := ../../../submodules/XKCP/lib/high/Keccak

HEADERS  := api.h \
             $(CKP)/FIPS202/SimpleFIPS202.h \
             $(CKP)/KeccakSponge.h \
			 ../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2/SnP/KeccakP-1600-SnP.h \
			 ../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2/KeccakP-1600-AVX2.h

SOURCES  := sha3.c \
             $(CKP)/FIPS202/SimpleFIPS202.c\
			 $(CKP)/KeccakSponge.c \
			 ../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2/KeccakP-1600-AVX2.s


OBJECTS  := sha3.o \
             $(CKP)/FIPS202/SimpleFIPS202.o\
			 $(CKP)/KeccakSponge.o \
			 ../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2/KeccakP-1600-AVX2.o


CC       ?= gcc
CFLAGS   := -Wall -Wextra -O3 -fomit-frame-pointer -mavx2 \
             -I$(CKP) \
			 -I$(CKP)/FIPS202 \
			 -I../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2/SnP \
             -I../../../submodules/XKCP/lib/common \
             -I../../../submodules/XKCP/bin/x86-64/libXKCP.so.headers \
			 -I ../../../submodules/XKCP/lib/low/KeccakP-1600/AVX2



.PHONY: all clean

all: bench_xkcp.a

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c -o $@ $< 

%.o: %.s $(HEADERS)
	$(CC) $(CFLAGS) -c -o $@ $<

bench_xkcp.a: $(OBJECTS)
	$(AR) -r $@ $(OBJECTS)

clean:
	$(RM) $(OBJECTS)
	$(RM) bench_xkcp.a

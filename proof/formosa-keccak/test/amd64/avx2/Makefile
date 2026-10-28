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

UNAME = $(shell uname)
ifeq ($(UNAME_S),Linux)
endif
ifeq ($(UNAME_S),Darwin)
endif

UNAME_P := $(shell uname -p)
ifeq ($(UNAME_P),x86_64)
 GCC ?= gcc
endif
ifneq ($(filter %86,$(UNAME_P)),)
 GCC ?= gcc
endif
ifneq ($(filter arm%,$(UNAME_P)),)
 GCC ?= arch -x86_64 gcc
endif

PWD = $(shell pwd)
SRCDIR = $(PWD)/../../../src/amd64

JASMINDIR = $(PWD)/../../../submodules/jasmin/compiler
JASMINC  ?= $(JASMINDIR)/jasminc
JOPTS    ?=
JASMINC  := $(JASMINC) $(JOPTS) -I Keccak=$(SRCDIR)

.DEFAULT_GOAL := all

PROGS = test_avx2 test_mavx2 test_avx2x4

all: $(PROGS)

test_avx2: test_avx2.c test_avx2.s ../ref/test_ref.s
	$(GCC) -o $@ $^

test_mavx2: test_mavx2.c test_mavx2.s ../ref/test_mref.s
	$(GCC) -o $@ $^

test_avx2x4: test_avx2x4.c test_avx2x4.s ../ref/test_ref.s
	$(GCC) -o $@ $^

%.s: %.jazz
	$(JASMINC) $(JFLAGS) -o $@ $<

clean:
	rm -f test_*.s

realclean: clean
	rm -rf $(PROGS)

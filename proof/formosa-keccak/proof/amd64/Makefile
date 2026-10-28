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
JASMIN2EC ?= ./../../jasmin2ec --arch x86 --array-model=old

# SRCDIR = ./../../src/amd64
OUTDIR = extracted

all: Keccak1600_Jazz_avx2.ec Keccak1600_Jazz_ASIZE_avx2.ec Keccak1600_Jazz_ref.ec Keccak1600_Jazz_ASIZE_ref.ec

# Jazz_ref.ec : $(SRCDIR)/ref/toEC.jazz
# 	$(JASMIN2EC) -o $(OUTDIR)/$@ $^


Keccak1600_Jazz_avx2.ec : toEC_keccak1600_avx2.jazz
	$(JASMINC) $(JFLAGS) -o $@ $^

Keccak1600_Jazz_ref.ec : toEC_keccak1600_ref.jazz
	$(JASMINC) $(JFLAGS) -o $@ $^

#rmglobals --after unroll  
#jasmin2ec: option '--after': invalid value 'unused', expected one of
#           'typing', 'cstexp', 'arraycopy', 'addarrinit', 'lowerspill',
#           'inline', 'rmfunc', 'unroll', 'splitting', 'renaming', 'rmphi',
#           'renamingd', 'rmarrinit', 'makeref', 'arrexp', 'rmglobals',
#           'loadconst', 'lowering', 'propagate', 'slhlowering' or 'loweraddr'
#Jazz_avx2_inlined.ec : $(SRCDIR)/avx2/toEC_inlined.jazz
#	$(JASMINC2EC) --after makeref -f _keccakf1600_4x_pround -o $(OUTDIR)/$@ $^
#
#inlined pround proc generated (and hand-edited) by:
#jasminc -pmakeref keccakf1600_pround_avx2x4.jinc > keccakf1600_pround_inlined_avx2x4.jinc

Keccak1600_Jazz_ASIZE_avx2.ec : toEC_keccak1600_ASIZE_avx2.jazz
	$(JASMINC) $(JFLAGS) -o $@ $^

Keccak1600_Jazz_ASIZE_ref.ec : toEC_keccak1600_ASIZE_ref.jazz
	$(JASMINC) $(JFLAGS) -o $@ $^
#Jazz_avx2x4_ASIZE.ec : $(SRCDIR)/avx2/toEC_ASIZE.jazz
#	$(JASMINC2EC) -o $(OUTDIR)/$@ $^


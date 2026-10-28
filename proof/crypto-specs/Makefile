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
ECCONF := config/tests.config 
JOBS   ?= 4
CHECKS ?= all

# --------------------------------------------------------------------
.PHONY: default check clean_eco

default: check

check:
	easycrypt runtest -report report.yaml -jobs $(JOBS) $(ECCONF) $(CHECKS)

clean_eco:
	find . -name '*.eco' -exec rm '{}' ';'

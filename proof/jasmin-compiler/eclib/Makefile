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
ECCONF   := tests.config 
ECARGS   ?=
CHECKS   ?= jasmin

# --------------------------------------------------------------------
DESTDIR  ?=
PREFIX   ?= /usr/local
LIBDIR   := $(PREFIX)/lib
INSTALL  ?= install

# --------------------------------------------------------------------
.PHONY: default usage check install uninstall clean

default: check

usage:
	@echo "Usage: make <target> where <target> in [check|clean|install|uninstall]" >&2

check:
	easycrypt runtest $(ECARGS) $(ECCONF) $(CHECKS)

jasmin.conf:
	@echo "# DO NOT MODIFY" | tee $@
	@echo "# This file is generated and may be silently overwritten" | tee -a $@
	@echo "[general]" | tee -a $@
	@echo "idirs=Jasmin:$(LIBDIR)/easycrypt/jasmin" | tee -a $@

install: jasmin.conf
	$(INSTALL) -m 0755 -d $(DESTDIR)$(LIBDIR)/easycrypt/jasmin
	$(INSTALL) -m 0644 *.ec $(DESTDIR)$(LIBDIR)/easycrypt/jasmin/
	$(INSTALL) -m 0755 -d $(DESTDIR)$(LIBDIR)/easycrypt/config
	$(INSTALL) -m 0644 *.conf $(DESTDIR)$(LIBDIR)/easycrypt/config/

uninstall:
	$(RM) -r $(DESTDIR)$(LIBDIR)/easycrypt/jasmin
	$(RM) $(DESTDIR)$(LIBDIR)/easycrypt/config/jasmin.conf

clean:
	$(RM) *.conf

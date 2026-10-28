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
JSJOBS    ?= 2
CHECKPY   ?=
CHECK     := $(CHECKPY) scripts/runtest --jobs="$(JSJOBS)"
CHECK     += config/tests.config
CHECKCATS ?= \
	x86-64-ATT \
	x86-64-Intel \
	x86-64-nolea \
	arm-m4 \
	x86-64-stack-zero-loop \
	x86-64-stack-zero-unrolled \
	arm-m4-stack-zero-loop \
	arm-m4-stack-zero-unrolled \
	risc-v \
	CCT CCT-DOIT SCT

# --------------------------------------------------------------------
DESTDIR  ?=
PREFIX   ?= /usr/local
BINDIR   := $(PREFIX)/bin
INSTALL  ?= install
DUNE_OPTS ?= --prefix $(PREFIX)

# --------------------------------------------------------------------
DISTDIR ?= jasmin-compiler

# --------------------------------------------------------------------
OBELISK ?= obelisk

# --------------------------------------------------------------------
.PHONY: all CIL check check-ci
.PHONY: clean install uninstall dist

all:
	$(RM) jasminc jasmin2tex jasmin-ct jasmin2ec
	dune build @check @install
	for p in _build/install/default/bin/*; do ln -sf $$p $$(basename $$p); done

CIL:
	$(RM) -f src/CIL/*.ml src/CIL/*.mli ../proofs/extraction.vo
	$(MAKE) -C ../proofs extraction
	cp ../proofs/lang/ocaml/*.ml  src/CIL/
	cp ../proofs/lang/ocaml/*.mli src/CIL/

check: all
	$(CHECK) --report=report.log $(CHECKCATS)

check-ci:
	$(CHECK) --report=- $(CHECKCATS)

check-ec:
	$(MAKE) -C examples/gimli/proofs
	$(MAKE) -C examples/extraction-unit-tests

check-all: check
	dune runtest -f

clean:
	dune clean
	$(RM) jasminc jasmin2tex jasmin-ct jasmin2ec

install:
	dune install $(DUNE_OPTS)

uninstall:
	dune uninstall $(DUNE_OPTS)

# --------------------------------------------------------------------
dist: $(DISTDIR).tgz

$(DISTDIR).tgz: MANIFEST
	$(RM) -r $(DISTDIR)
	../scripts/distribution $(DISTDIR)/compiler $<
	cp -riv ../eclib $(DISTDIR)/
	cp ../Makefile.compiler $(DISTDIR)/Makefile
	cp jasmin.opam $(DISTDIR)/
	cp ../README.compiler.md $(DISTDIR)/README.md
	cp ../LICENSE $(DISTDIR)/
	tar -czvf $(DISTDIR).tgz --owner=0 --group=0 $(DISTDIR)
	$(RM) -r $(DISTDIR)

# --------------------------------------------------------------------
jasmin.bnf: src/parser.mly
	$(OBELISK) -i -o $@ $<

jasmin.ebnf: scripts/expand-bnf jasmin.bnf
	@sed -f $^ > $@

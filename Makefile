# ==============================================================
# Artifact for "Extending Array Slicing in Jasmin: First Step
# Towards Formally Verified PICNIC3" (IACR TCHES 2027/1).
#
# See README.md for what each target reproduces in the paper.
#
# Code trees (each has picnic3l3-avx2/ and picnic3l5-avx2/):
#   code/for_loops         for-loop version            (Table 2, Section 6 text)
#   code/old_bitstream     while loops + formosa-Keccak (Table 1, column 2)
#   code/no_sliced_arrays  + L3 LowMC tweak, no slicing (Table 1, column 3; Table 2)
#   code/sliced_arrays     + array slicing              (Table 1, column 4; Table 2; Section 7)
#   code/full_comparison   benchmark harness running C and all versions in one binary
# Proofs:
#   proof/                 EasyCrypt development (Section 7)
#
# Compilation, constant-time checking and the EasyCrypt proofs run in a
# Docker image built from ./Dockerfile (jasminc/jasmin-ct + easycrypt + z3).
# Tests and benchmarks run natively on Linux/x86-64 (rdtsc timings);
# on other hosts they run in Docker (correctness only).
# ==============================================================

TREES  = for_loops old_bitstream no_sliced_arrays sliced_arrays
LEVELS = l3 l5

EXTRACTION_DIR = proof/extraction

SHELL := /bin/bash

# ---- Docker toolchain -----------------------------------------
DOCKER_IMAGE    = jasmin-picnic3
DOCKER_PLATFORM = linux/amd64
DOCKER_WORKDIR  = /usr/src/JASMIN-PICNIC3
DOCKER_MEMORY      ?= 12g
DOCKER_MEMORY_SWAP ?= -1

DOCKER_RUN = $(MAKE) --no-print-directory docker-image; \
	docker run --rm --platform $(DOCKER_PLATFORM) \
	--memory=$(DOCKER_MEMORY) --memory-swap=$(DOCKER_MEMORY_SWAP) \
	-v "$(CURDIR)":$(DOCKER_WORKDIR) -w $(DOCKER_WORKDIR) $(DOCKER_IMAGE)

# Tests/benchmarks: native on Linux, Docker elsewhere.
HOST_OS := $(shell uname -s)
ifeq ($(HOST_OS),Linux)
TEST_RUNNER =
else
TEST_RUNNER = $(DOCKER_RUN)
endif

# EasyCrypt
EASYCRYPT ?= easycrypt
ECCONF    := config/tests.config
ECJOBS    ?= 4
CHECKS    ?= spec correctness

.DEFAULT_GOAL := help

help:
	@echo "Targets (see README.md):"
	@echo "  make docker-build        build the toolchain image (first time only)"
	@echo "  make compile-all         compile all Jasmin versions (for_loops is slow and memory hungry)"
	@echo "  make ct-all              constant-time check of the slicing versions (jasmin-ct)"
	@echo "  make test-all            run the C/Jasmin round-trip test of every version"
	@echo "  make sizes               object-file sizes of all versions (Table 2)"
	@echo "  make bench               benchmark C and all versions in one binary (Table 1)"
	@echo "  make check               extract commit_x4/sign_commit_x4 and check the EasyCrypt proofs (Section 7)"
	@echo "  make full                compile-all + ct-all + test-all + check"
	@echo "Per version: compile-<tree>-<l3|l5>, test-<tree>-<l3|l5>, ct-sliced_arrays-<l3|l5>"
	@echo "  with <tree> one of: $(TREES)"

.PHONY: help docker-build docker-rootless-check docker-rootless-install docker-image docker-shell \
	compile-all ct-all test-all sizes bench bench-l3 bench-l5 extract-commitx4 check clean-eco full clean package

docker-build:
	docker build --platform $(DOCKER_PLATFORM) --tag $(DOCKER_IMAGE) .

docker-rootless-check:
	./install-docker-rootless.sh check

docker-rootless-install:
	./install-docker-rootless.sh

docker-image:
	@docker image inspect $(DOCKER_IMAGE) >/dev/null 2>&1 || $(MAKE) docker-build

docker-shell: docker-image
	docker run --rm -it --platform $(DOCKER_PLATFORM) \
		--memory=$(DOCKER_MEMORY) --memory-swap=$(DOCKER_MEMORY_SWAP) \
		-v "$(CURDIR)":$(DOCKER_WORKDIR) -w $(DOCKER_WORKDIR) $(DOCKER_IMAGE) bash

# ---- per-version targets --------------------------------------
# $(1) = tree, $(2) = level (l3|l5)

define VERSION_TARGETS
.PHONY: compile-$(1)-$(2) test-$(1)-$(2)
compile-$(1)-$(2):
	@echo ">>> compiling $(1) PICNIC3$(2)"
	@$$(DOCKER_RUN) bash -c "cd code/$(1)/picnic3$(2)-avx2/jasminCode && jasminc -nowarning main.jazz -o ../compiled_jasmin/main.s" \
	  && echo "[PASS] compile $(1) $(2)" || { echo "[FAIL] compile $(1) $(2) (if killed: raise Docker memory, see README)"; exit 1; }
test-$(1)-$(2):
	@echo ">>> test $(1) PICNIC3$(2)"
	@$$(TEST_RUNNER) bash tools/run_c_test.sh $(1) $(2) \
	  && echo "[PASS] test $(1) $(2)" || { echo "[FAIL] test $(1) $(2)"; exit 1; }
endef

# constant-time check (jasmin-ct) of the final, slicing implementation
define CT_TARGET
.PHONY: ct-sliced_arrays-$(1)
ct-sliced_arrays-$(1):
	@echo ">>> constant-time check sliced_arrays PICNIC3$(1)"
	@$$(DOCKER_RUN) bash -c "cd code/sliced_arrays/picnic3$(1)-avx2/jasminCode && jasmin-ct main.jazz" 2>&1 | grep -v -i 'deprecated' ; \
	  [ $$$${PIPESTATUS[0]:-0} -eq 0 ] && echo "[PASS] ct sliced_arrays $(1)" || { echo "[FAIL] ct sliced_arrays $(1)"; exit 1; }
endef

$(foreach t,$(TREES),$(foreach l,$(LEVELS),$(eval $(call VERSION_TARGETS,$(t),$(l)))))
$(foreach l,$(LEVELS),$(eval $(call CT_TARGET,$(l))))

ALL = $(foreach t,$(TREES),$(foreach l,$(LEVELS),$(t)-$(l)))

compile-all:
	@$(MAKE) -k $(addprefix compile-,$(ALL))
ct-all:
	@$(MAKE) -k ct-sliced_arrays-l3 ct-sliced_arrays-l5
test-all:
	@$(MAKE) -k $(addprefix test-,$(ALL))

# ---- Table 2: object-file sizes --------------------------------
sizes:
	@$(TEST_RUNNER) bash tools/sizes.sh

# ---- Table 1: benchmark (C and all versions in one binary) -----
# Imports each version's compiled main.s into code/full_comparison and runs it.
# Run natively on Linux/x86-64 with Turbo Boost and SMT disabled for meaningful numbers.
bench: bench-l3 bench-l5
bench-l3:
	@$(TEST_RUNNER) bash -c 'cd code/full_comparison/picnic3l3-avx2 && sh import_s.sh && make linux_test'
bench-l5:
	@$(TEST_RUNNER) bash -c 'cd code/full_comparison/picnic3l5-avx2 && sh import_s.sh && make linux_test'

# ---- Section 7: EasyCrypt proofs --------------------------------
# Re-extracts sign_commit_x4 (and commit_x4) from code/sliced_arrays/picnic3l3-avx2
# with jasmin2ec, then checks proof/spec and proof/correctness.
# The container runs as root; the move and a chown back to the host user happen inside it,
# so no root-owned files are left behind.
HOST_IDS := $(shell id -u):$(shell id -g)

extract-commitx4:
	@echo ">>> extracting sign_commit_x4 from sliced_arrays PICNIC3L3"
	@$(DOCKER_RUN) bash -c "\
		cd code/sliced_arrays/picnic3l3-avx2/jasminCode && mkdir -p ext && rm -f ext/*.ec && \
		jasmin2ec --array-model=old -f sign_commit_x4 -o ext/commitx4.ec main.jazz && \
		mv ext/*.ec ../../../../$(EXTRACTION_DIR)/ && \
		chown -R $(HOST_IDS) ext ../../../../$(EXTRACTION_DIR)" \
	&& echo "[PASS] extract-commitx4" || { echo "[FAIL] extract-commitx4"; exit 1; }

check: extract-commitx4
	@$(DOCKER_RUN) bash -c "cd proof && $(EASYCRYPT) runtest -jobs $(ECJOBS) $(ECCONF) $(CHECKS); rc=\$$?; chown -R $(HOST_IDS) . ; exit \$$rc" \
	&& echo "[PASS] check (EasyCrypt)" || { echo "[FAIL] check (EasyCrypt)"; exit 1; }

clean-eco:
	find proof -name '*.eco' -exec rm '{}' ';'

full:
	@$(MAKE) -k compile-all; c=$$?; $(MAKE) -k ct-all; t=$$?; $(MAKE) -k test-all; r=$$?; $(MAKE) -k check; e=$$?; \
	echo ""; [ $$c -eq 0 ] && [ $$t -eq 0 ] && [ $$r -eq 0 ] && [ $$e -eq 0 ] \
	  && echo "=== full: ALL PASSED ===" || { echo "=== full: FAILURES (see above) ==="; exit 1; }

clean:
	for t in $(TREES) full_comparison; do for l in $(LEVELS); do d=code/$$t/picnic3$$l-avx2; \
	  rm -rf $$d/*.o $$d/sha3/*.o $$d/libpicnic.a $$d/tests/picnic_test $$d/tests/picnic_test.dSYM $$d/linux $$d/compiled_jasmin/*.o; done; done

# ---- release tarball (for the authors: builds ../jasmin-picnic3-artifact.tar.gz) ----
# On macOS, leave out Apple extended attributes (otherwise GNU tar warns about them on Linux).
TAR_NO_MAC := $(if $(filter Darwin,$(HOST_OS)),--no-xattrs --no-mac-metadata --no-acls,)
package:
	cd .. && COPYFILE_DISABLE=1 tar $(TAR_NO_MAC) -czf jasmin-picnic3-artifact.tar.gz \
	  --exclude='.DS_Store' --exclude='*.o' --exclude='*.a' --exclude='*.eco' --exclude='*.log' \
	  --exclude='*.dSYM' --exclude='tests/picnic_test' --exclude='tests/api_test' --exclude='linux' \
	  --exclude='*_backup*' --exclude='*backup_*' --exclude='*.before_*' --exclude='*.bak' --exclude='*.step[0-9]*' \
	  --exclude='*.restore_tmp' --exclude='safe' --exclude='ext' \
	  --exclude='jasminCode/*.s' --exclude='mzd_additinal.s' \
	  --exclude='jasmin-picnic3-artifact/code/full_comparison/*/compiled_jasmin/*.s' \
	  --exclude='jasmin-picnic3-artifact/proof/formosa-keccak/submodules/XKCP' \
	  --exclude='jasmin-picnic3-artifact/proof/formosa-keccak/submodules/jasmin/compiler' \
	  --exclude='jasmin-picnic3-artifact/proof/spec/path' --exclude='jasmin-picnic3-artifact/justification_letter.pdf' --exclude='jasmin-picnic3-artifact/paper_diff.pdf' \
	  jasmin-picnic3-artifact
	@ls -lh ../jasmin-picnic3-artifact.tar.gz

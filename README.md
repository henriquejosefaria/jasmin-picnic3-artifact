# Artifact: Extending Array Slicing in Jasmin — First Step Towards Formally Verified PICNIC3

**Authors:** Henrique Jose Faria (University of Minho and INESC TEC), Jean-Christophe Léchenet (Inria),
José Bacelar Almeida (University of Minho and INESC TEC), Manuel Barbosa (University of Porto and INESC TEC),
Benjamin Grégoire (Inria).

Artifact for the IACR TCHES 2027/1 paper *"Extending Array Slicing in Jasmin: First Step
Towards Formally Verified PICNIC3"*. It contains the Jasmin implementations of PICNIC3 (levels
L3 and L5, AVX2) evaluated in the paper, the benchmark harness, and the EasyCrypt proofs of
Section 7, together with a Docker toolchain to compile, constant-time check and verify them.

## What is where

| Directory | Contents | Paper |
|---|---|---|
| `code/for_loops/` | for-loop version (round loops unrolled), formosa-Keccak | Table 2, Section 6 |
| `code/old_bitstream/` | while loops + formosa-Keccak, no slicing | Table 1, column "Jasmin (formosa-Keccak)" |
| `code/no_sliced_arrays/` | + PICNIC3L3 LowMC tweak, no slicing | Table 1, column "+ L3 tweak"; Table 2 |
| `code/sliced_arrays/` | + dynamic array slicing (needs the new compiler) | Table 1, column "+ array slicing"; Table 2; Section 7 |
| `code/full_comparison/` | benchmark harness: C and all Jasmin versions in one binary | Table 1 |
| `proof/` | EasyCrypt development (specification, extraction, correctness proof) | Section 7 |
| `proof/jasmin-compiler/` | the Jasmin compiler with the extended stack-allocation analysis | Sections 3–4 |
| `tools/` | helper scripts used by the Makefile | — |

Each code directory has `picnic3l3-avx2/` and `picnic3l5-avx2/`, containing the PICNIC3 C
reference implementation (NIST round 3, AVX2), the Jasmin sources in `jasminCode/` and the
compiled assembly in `compiled_jasmin/main.s`. The L3 LowMC tweak does not apply to L5, so for
L5 `old_bitstream` and `no_sliced_arrays` contain the same Jasmin code.

## Requirements

* **Docker** (for compiling, constant-time checking and the proofs). If you cannot install
  Docker as root, `make docker-rootless-check` / `make docker-rootless-install` install it in
  rootless mode.
* **For tests and benchmarks: Linux on x86-64 with AVX2**, `gcc`, GNU `as`, `make`. On other
  hosts (e.g. macOS) the tests run inside Docker; they then check correctness only, the timings
  are not meaningful.

## Quick start

```sh
make docker-build        # build the toolchain image (once; takes a while)
make compile-all         # compile all 8 versions with jasminc
make ct-all              # constant-time check (jasmin-ct) of the slicing versions
make test-all            # keygen/sign/verify round trip of every version against the C reference
make sizes               # object-file sizes (Table 2)
make bench               # benchmark C and all versions (Table 1)
make check               # EasyCrypt proofs (Section 7)
```

`make full` runs compile-all, ct-all, test-all and check in sequence. `make help` lists all
targets; each step also exists per version, e.g. `make compile-sliced_arrays-l3`,
`make ct-sliced_arrays-l5`, `make test-for_loops-l3`.

**Note on `for_loops`:** the round loops are fully unrolled, so compiling these two versions
takes a long time and a lot of memory (allow 12 GB or more for Docker; set
`DOCKER_MEMORY=16g` if the compiler gets killed). The already compiled `main.s` files are
shipped, so `test`, `sizes` and `bench` work without recompiling.

## Reproducing the paper

### Table 1 — performance

```sh
make bench               # or: make bench-l3 / make bench-l5
```

This copies the compiled `main.s` of every version into `code/full_comparison/`, renames
their exported functions so they can be linked together, and runs one binary that measures
C and all Jasmin versions. Within every run, C is measured first and then the Jasmin versions,
in an order rotated from run to run, so all versions are compared against the same C baseline
under the same machine conditions. For key generation, signing and verification, each run
takes the median of 4098, 128 and 128 executions, and the mean over 1000, 100 and 100 runs is
reported (cycles via `rdtsc`, plus the percentage of C). The program also checks that every
version produces the same keys and signatures and that all signatures verify.

The paper's numbers were obtained on an Intel Core i7-14700K (Debian 13, Linux 6.12,
gcc 14.2.0) with the efficiency cores, SMT and Turbo Boost disabled. The output starts with
the machine state (CPU, SMT, uptime, load, compiler). Absolute cycle counts depend on the
machine; the relative results (percentages of C) are what the paper discusses. To check that
Turbo Boost is really off when the OS cannot tell:

```sh
gcc -O1 -o turbo_check tools/turbo_check.c && ./turbo_check   # ~1.00 means base clock (turbo off)
```

### Table 2 — code size

```sh
make sizes
```

Assembles each version's `compiled_jasmin/main.s` with GNU `as` and prints the object-file
sizes, as reported in Table 2 (Linux/ELF objects).

### Section 7 — EasyCrypt proofs

```sh
make check
```

This first re-extracts `sign_commit_x4` (and its callee `commit_x4`) from
`code/sliced_arrays/picnic3l3-avx2` with `jasmin2ec` into `proof/extraction/commitx4.ec`,
then runs `easycrypt runtest` on `proof/spec` and `proof/correctness`. The main file is
`proof/correctness/commitx4_reduction.ec`, which proves:

* `commit_x4_h` — functional correctness of `commit_x4` (four SHAKE-256 commitments);
* `sign_commit_x4_h` — functional correctness of `sign_commit_x4`, which passes `commit_x4`
  slices of the signer state at offsets computed from the round index at run time (the
  contract shown in the paper's figure for `sign_commit_x4`);
* losslessness of both functions.

The proofs rely on the formosa-keccak proofs in `proof/formosa-keccak` and the specifications
in `proof/crypto-specs` and `proof/spec`.

### Constant time and memory safety

`make ct-all` runs `jasmin-ct` (non-speculative constant time) on the final, slicing
implementations (L3 and L5), also individually with `make ct-sliced_arrays-<l3|l5>`. Memory safety
was checked with Valgrind on the versions compiled with the new compiler; to repeat this, build
a version's test as in `tools/run_c_test.sh` and run it under
`valgrind --max-stackframe=3000000 ./tests/picnic_test`.

## Toolchain

`Dockerfile` builds Ubuntu 22.04 with the Jasmin compiler built from `proof/jasmin-compiler`
(the version with the extended array-slicing analysis described in the paper), EasyCrypt
(via opam) and Z3. `make docker-shell` opens a shell in that image with the artifact mounted
at `/usr/src/JASMIN-PICNIC3`.

## Notes

* The C reference's SHA-3 assembly (`sha3/KeccakP-1600-AVX2.s`) is shipped in its macOS
  variant; `tools/run_c_test.sh` and the benchmark harness convert it to the Linux variant
  automatically (`tools/sha3_linux.awk`). Likewise, a `main.s` compiled on macOS has leading
  underscores on its symbols, which the scripts remove for Linux.
* Newer gcc versions (14+) turn some warnings of the C reference code into errors; the scripts
  pass `-Wno-error=...` for those, which does not change the generated code.

## License

The artifact's own code, scripts and proofs are released under the MIT license (see `LICENSE`).
Bundled third-party components (the Jasmin compiler, formosa-keccak, crypto-specs and the Picnic
C reference implementation) keep their own licenses, listed in `LICENSE` and found in their
directories.

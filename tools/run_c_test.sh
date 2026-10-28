#!/bin/bash
# Usage: tools/run_c_test.sh <tree> <l3|l5>
# Builds the C reference + the version's compiled Jasmin (compiled_jasmin/main.s)
# and runs tests/picnic_test (keygen/sign/verify round trip, C vs Jasmin timings).
# Linux/x86-64 only (run inside Docker on other hosts).
set -e
tree=$1; lvl=$2
case $lvl in l3) lowmc=lowmc_192_192_4 ;; l5) lowmc=lowmc_255_255_4 ;; *) echo "level must be l3 or l5"; exit 2 ;; esac
root=$(cd "$(dirname "$0")/.." && pwd)
cd "$root/code/$tree/picnic3$lvl-avx2"
[ -f compiled_jasmin/main.s ] || { echo "compiled_jasmin/main.s missing: run make compile-$tree-$lvl first"; exit 1; }
CW="-Wno-error=incompatible-pointer-types -Wno-error=implicit-function-declaration -Wno-error=int-conversion"
rm -f ./*.o sha3/*.o libpicnic.a tests/picnic_test
mkdir -p linux
# the shipped SHA-3 assembly is the macOS variant; keep only its Linux branch
awk -f "$root/tools/sha3_linux.awk" sha3/KeccakP-1600-AVX2.s > linux/KeccakP-1600-AVX2.s
# main.s compiled on macOS carries leading underscores on C symbols; drop them for ELF
sed -E 's/(^|[^A-Za-z0-9_$])_(keyGen_jazz|sign_picnic3_jazz|verify_picnic3_jazz)([^A-Za-z0-9_$]|$)/\1\2\3/g' \
    compiled_jasmin/main.s > linux/main.s
for f in aligned_alloc bitstream io lowmc $lowmc mzd_additional picnic picnic3_impl picnic3_simulate \
         picnic3_tree picnic3_types picnic_instances sign; do
  gcc -c $CW -I. -Isha3 -DNDEBUG -g -O3 $f.c -o $f.o
done
for f in KeccakHash KeccakHashtimes4 KeccakP-1600-times4-SIMD256 KeccakSponge KeccakSpongetimes4; do
  gcc -c $CW -I. -Isha3 -DNDEBUG -g -O3 sha3/$f.c -o sha3/$f.o
done
gcc -c -mavx2 linux/KeccakP-1600-AVX2.s -o sha3/KeccakP-1600-AVX2.o
ar rcs libpicnic.a aligned_alloc.o bitstream.o io.o lowmc.o $lowmc.o mzd_additional.o picnic.o picnic3_impl.o \
       picnic3_simulate.o picnic3_tree.o picnic3_types.o picnic_instances.o sign.o sha3/*.o
as -o linux/main.o linux/main.s
gcc $CW -I. -Isha3 -DNDEBUG -g -O3 tests/picnic_test.c linux/main.o libpicnic.a randomness.c -o tests/picnic_test
./tests/picnic_test

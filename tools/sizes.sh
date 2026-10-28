#!/bin/bash
# Object-file size of each compiled version (Table 2), assembled with GNU as (Linux/ELF).
root=$(cd "$(dirname "$0")/.." && pwd)
tmp=$(mktemp -d)
for t in for_loops old_bitstream no_sliced_arrays sliced_arrays; do
  for l in l3 l5; do
    s="$root/code/$t/picnic3$l-avx2/compiled_jasmin/main.s"
    if [ -f "$s" ]; then
      as -o "$tmp/${t}_${l}.o" "$s" && printf "%-18s %s %12s bytes\n" "$t" "$l" "$(stat -c %s "$tmp/${t}_${l}.o")"
    else
      printf "%-18s %s   (not compiled)\n" "$t" "$l"
    fi
  done
done
rm -rf "$tmp"

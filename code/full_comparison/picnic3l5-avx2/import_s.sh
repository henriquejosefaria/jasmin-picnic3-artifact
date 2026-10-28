#!/bin/sh
# Copies the compiled main.s of every PICNIC3L5 version into compiled_jasmin/
# and renames the three exported functions with a per-version suffix, so all
# versions can be linked into a single test binary:
#   keyGen_jazz -> keyGen_jazz_<suffix>, sign_picnic3_jazz -> sign_picnic3_jazz_<suffix>, ...
# Only the exported symbols are renamed; all other labels in Jasmin output are
# local to their object file, so they cannot clash.
set -e
cd "$(dirname "$0")"
CODE=../..
OUT=compiled_jasmin
mkdir -p "$OUT"

import() {   # $1 = source version dir, $2 = suffix
  src="$CODE/$1/picnic3l5-avx2/compiled_jasmin/main.s"
  [ -f "$src" ] || { echo "missing $src (compile that version first)"; exit 1; }
  sed -E "s/(^|[^A-Za-z0-9_\$])(_?)(keyGen_jazz|sign_picnic3_jazz|verify_picnic3_jazz)([^A-Za-z0-9_\$]|\$)/\1\2\3_$2\4/g" \
      "$src" > "$OUT/main_$2.s"
  n=$(grep -cE "(keyGen_jazz|sign_picnic3_jazz|verify_picnic3_jazz)_$2\b" "$OUT/main_$2.s")
  echo "imported $1 -> $OUT/main_$2.s ($n renamed references)"
}

import for_loops        for
import no_sliced_arrays base    # the L3 tweak does not apply to L5, so there is no separate tweak version
import sliced_arrays    slice

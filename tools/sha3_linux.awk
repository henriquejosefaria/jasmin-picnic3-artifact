# Turns the macOS-adapted sha3/KeccakP-1600-AVX2.s back into its Linux form:
# the file keeps both variants as commented-out "#.ifdef macOS / #.else / #.endif"
# blocks; this drops the macOS branch and uncomments the Linux branch.
/^[ \t]*#\.ifdef macOS[ \t]*$/ { state = 1; next }
/^[ \t]*#\.else[ \t]*$/        { if (state == 1) { state = 2; next } }
/^[ \t]*#\.endif[ \t]*$/       { if (state) { state = 0; next } }
state == 1 { next }
state == 2 { sub(/#/, ""); print; next }
{ print }

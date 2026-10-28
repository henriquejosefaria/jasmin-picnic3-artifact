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

# --------------------------------------------------------------------
CC ?= clang-14
CFLAGS ?= -O3 -fomit-frame-pointer -fwrapv -fPIC -fPIE -mavx2

BIN ?= bin

TARGETS ?= \
	$(BIN)/bench_XKCP \
	$(BIN)/bench_jasmin_avx2 \
	$(BIN)/bench_jasmin_ref


$(BIN)/bench_XKCP: XKCP | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./src/XKCP/ -I./common/ -DJADE_NAMESPACE=XKCP -DJADE_NAMESPACE_LC=XKCP ./common/crypto_sha.c ./src/XKCP/bench_xkcp.a 

$(BIN)/bench_jasmin_avx2: jasmin_avx2 | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./src/jasmin/avx2 -I./common/ -DJADE_NAMESPACE=jasmin_avx2 -DJADE_NAMESPACE_LC=jasmin_avx2 ./common/crypto_sha.c ./src/jasmin/avx2/jasmin_avx2.a 

$(BIN)/bench_jasmin_ref: jasmin_ref | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./src/jasmin/ref -I./common/ -DJADE_NAMESPACE=jasmin_ref -DJADE_NAMESPACE_LC=jasmin_ref ./common/crypto_sha.c ./src/jasmin/ref/jasmin_ref.a 



$(BIN): ; @mkdir -p $@

XKCP: 
	make -C ./src/XKCP/

jasmin_avx2:
	make -C ./src/jasmin/avx2

jasmin_ref:
	make -C ./src/jasmin/ref


libs-clean:
	make -C ./src/XKCP/ clean
	make -C ./src/jasmin/avx2 clean
	make -C ./src/jasmin/ref clean

run: $(TARGETS)
	for d in $(TARGETS); do (./$$d > $$d.out); done

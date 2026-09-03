#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
SIMD="$ROOT/LeAp_SIMDive, RAPID/SIMDive Version/SIMD_32_16_8/src"
BUILD="$ROOT/qsim_rtl/simdive_original/verilator_canonical"
LOG="$ROOT/qsim_rtl/simdive_original/verilator_canonical.log"

rm -rf "$BUILD"
verilator --cc --exe --Wno-fatal --top-module simdive_original_fp32_wrapper \
    -I"$SIMD" \
    --Mdir "$BUILD" \
    "$SIMD/adders_bit_select_2_4_6_8.v" \
    "$SIMD/adders_bit_select_3.v" \
    "$SIMD/adders_bit_select_5_7.v" \
    "$SIMD/add_4_bit.v" "$SIMD/add_8_bit.v" \
    "$SIMD/bit_inverse.v" "$SIMD/ec_mul_div.v" \
    "$SIMD/ec_mul_div_alternate.v" "$SIMD/lod.v" "$SIMD/shifter.v" \
    "$ROOT/rtl/simdive_original_compat/shifter_out_mul_div_compat.v" \
    "$SIMD/top_module.v" \
    "$ROOT/rtl/simdive_original/simdive_original_fp32_wrapper.v" \
    "$ROOT/qsim_rtl/simdive_original/verilator_main.cpp" \
    >"${LOG%.log}_build.log" 2>&1
make -C "$BUILD" -f Vsimdive_original_fp32_wrapper.mk \
    >>"${LOG%.log}_build.log" 2>&1
"$BUILD/Vsimdive_original_fp32_wrapper" >"$LOG"
cat "$LOG"

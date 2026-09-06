#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
SIMD="$ROOT/LeAp_SIMDive, RAPID/SIMDive Version/SIMD_32_16_8/src"
OUT="$ROOT/qsim_rtl/simdive_original"
BUILD="$OUT/verilator_common_accuracy"

rm -rf "$BUILD"
verilator --cc --exe --Wno-fatal \
    --top-module simdive_oadm_common_accuracy_top \
    -I"$SIMD" --Mdir "$BUILD" \
    "$SIMD/adders_bit_select_2_4_6_8.v" \
    "$SIMD/adders_bit_select_3.v" "$SIMD/adders_bit_select_5_7.v" \
    "$SIMD/add_4_bit.v" "$SIMD/add_8_bit.v" "$SIMD/bit_inverse.v" \
    "$ROOT/rtl/simdive_original_compat/simdive_sisd32_specialized.v" \
    "$SIMD/ec_mul_div.v" "$SIMD/ec_mul_div_alternate.v" \
    "$SIMD/lod.v" "$SIMD/shifter.v" \
    "$ROOT/rtl/simdive_original_compat/shifter_out_mul_div_compat.v" \
    "$SIMD/top_module.v" \
    "$ROOT/rtl/simdive_original/simdive_original_fp32_wrapper.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/divopt/oadm_experiment_variants.v" \
    "$ROOT/rtl/root_opt/oadm_root_opt.v" \
    "$OUT/simdive_oadm_common_accuracy_top.sv" \
    "$OUT/common_accuracy_main.cpp" \
    >"$OUT/common_accuracy_build.log" 2>&1
make -C "$BUILD" -f Vsimdive_oadm_common_accuracy_top.mk \
    >>"$OUT/common_accuracy_build.log" 2>&1
(
    cd "$OUT"
    "$BUILD/Vsimdive_oadm_common_accuracy_top"
) | tee "$OUT/common_accuracy_check.log"
cat "$OUT/simdive_oadm_common_accuracy.csv"

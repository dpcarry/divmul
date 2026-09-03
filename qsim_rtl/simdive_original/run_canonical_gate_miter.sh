#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
SIMD="$ROOT/LeAp_SIMDive, RAPID/SIMDive Version/SIMD_32_16_8/src"
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
GATE="$ROOT/dc/canonical_refresh/outputs_10ns/simdive/simdive_original_fp32_wrapper/simdive_original_fp32_wrapper.nl.v"
TMP=$(mktemp -d /tmp/simdive_canonical_gate.XXXXXX)
trap 'rm -rf "$TMP"' EXIT

BUILD="$TMP/verilator"
VECTORS="$TMP/simdive_gate_vectors.mem"
verilator --cc --exe --Wno-fatal --top-module simdive_original_fp32_wrapper \
    -I"$SIMD" --Mdir "$BUILD" \
    "$SIMD/adders_bit_select_2_4_6_8.v" \
    "$SIMD/adders_bit_select_3.v" "$SIMD/adders_bit_select_5_7.v" \
    "$SIMD/add_4_bit.v" "$SIMD/add_8_bit.v" "$SIMD/bit_inverse.v" \
    "$SIMD/ec_mul_div.v" "$SIMD/ec_mul_div_alternate.v" \
    "$SIMD/lod.v" "$SIMD/shifter.v" \
    "$ROOT/rtl/simdive_original_compat/shifter_out_mul_div_compat.v" \
    "$SIMD/top_module.v" \
    "$ROOT/rtl/simdive_original/simdive_original_fp32_wrapper.v" \
    "$ROOT/qsim_rtl/simdive_original/generate_gate_vectors.cpp" \
    >"$ROOT/qsim_rtl/simdive_original/gate_vector_build.log" 2>&1
make -C "$BUILD" -f Vsimdive_original_fp32_wrapper.mk \
    >>"$ROOT/qsim_rtl/simdive_original/gate_vector_build.log" 2>&1
"$BUILD/Vsimdive_original_fp32_wrapper" >"$VECTORS"

sed '0,/module simdive_original_fp32_wrapper (/s//module simdive_original_fp32_wrapper_gate (/' \
    "$GATE" >"$TMP/gate.v"
vlib "$TMP/work" >/dev/null
vlog -work "$TMP/work" "$CELL_LIB" >/dev/null
vlog -work "$TMP/work" "+define+VECTOR_FILE=\"$VECTORS\"" \
    "$TMP/gate.v" \
    "$ROOT/qsim_rtl/simdive_original/tb_simdive_gate_vectors.sv" \
    >/dev/null
vsim -c -suppress 3053 -lib "$TMP/work" tb_simdive_gate_vectors \
    -do 'run -all; quit -f' | \
    tee "$ROOT/qsim_rtl/simdive_original/gate_vector_check.log"

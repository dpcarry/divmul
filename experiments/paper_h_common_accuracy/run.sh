#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
HROOT="$ROOT/../research-absorbed-reciprocal"
HERE="$ROOT/experiments/paper_h_common_accuracy"
cd "$HERE"

rm -rf obj
verilator --cc --exe --Wno-fatal --top-module paper_h_common_accuracy_top \
    --Mdir obj \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/PACE/common/CSA3_2_Array.v" \
    "$ROOT/PACE/common/MUL.v" \
    "$ROOT/PACE/L1/Mantissa_Div_L1.v" \
    "$ROOT/PACE/L2/Mantissa_Div_L2.v" \
    "$ROOT/PACE/L3/Mantissa_Div_L3.v" \
    "$ROOT/PACE/L4/Mantissa_Div_L4_Kec.v" \
    "$ROOT/rtl/pace_original/pace_fp32_l1.v" \
    "$ROOT/rtl/pace_original/pace_fp32_l2.v" \
    "$ROOT/rtl/pace_original/pace_fp32_l3.v" \
    "$ROOT/rtl/pace_original/pace_fp32_l4.v" \
    "$ROOT/rtl/paper_repro/plsad_prior_fp32_paceio.v" \
    "$ROOT/experiments/fpd2d/fpd2d_milp.v" \
    "$HROOT/experiments/l0_slope_sweep/l0_s6_div_unsigned.v" \
    "$HROOT/experiments/unsigned_selected_div_only/usd_l1_unsigned.v" \
    "$HROOT/experiments/unsigned_selected_div_only/usd_l2_unsigned.v" \
    "$HROOT/experiments/unsigned_selected_div_only/usd_l3_unsigned.v" \
    top.sv main.cpp
make -C obj -f Vpaper_h_common_accuracy_top.mk
./obj/Vpaper_h_common_accuracy_top "$ROOT/experiments/fpd2d/inputs.hex"

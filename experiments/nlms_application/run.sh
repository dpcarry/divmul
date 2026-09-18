#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
ITERATIONS="${ITERATIONS:-5000}"
SEEDS="${SEEDS:-20}"
TAPS="${TAPS:-16}"
RESULT_DIR="${RESULT_DIR:-results}"
JOBS="${JOBS:-4}"
OBJ_DIR="${OBJ_DIR:-obj}"

verilator -Wall --Wno-fatal --cc --top-module nlms_stdm_top --Mdir "$OBJ_DIR" \
  rtl/nlms_stdm_top.sv \
  rtl/fp32_normal_finite_wrapper.v \
  rtl/l0_s6_shared_unsigned.v \
  rtl/l1_s4_shared_unsigned.v \
  rtl/ur_fp32_l2_unsigned.v \
  rtl/ur_fp32_l3_unsigned.v \
  --exe "$(pwd)/nlms.cpp" -CFLAGS "-std=c++17 -O3"
make -C "$OBJ_DIR" -f Vnlms_stdm_top.mk -j"$JOBS"
mkdir -p "$RESULT_DIR"
"$OBJ_DIR"/Vnlms_stdm_top "$ITERATIONS" "$SEEDS" "$TAPS" "$RESULT_DIR"
sha256sum rtl/*.v rtl/*.sv > "$RESULT_DIR/sources.sha256"
MPLCONFIGDIR="${MPLCONFIGDIR:-/tmp/stdm-matplotlib}" \
  ../../.venv/bin/python analyze.py "$RESULT_DIR"

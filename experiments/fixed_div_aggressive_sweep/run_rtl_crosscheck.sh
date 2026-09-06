#!/usr/bin/env bash
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
cd "$HERE"

"$ROOT/.venv/bin/python" generate_accuracy_vectors.py
rm -rf rtl_work
vlib rtl_work
vlog -sv -work rtl_work \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/root_opt/oadm_root_opt.v" \
    candidate_rtl.v tb_rtl_crosscheck.sv
vsim -c -lib rtl_work -l results/rtl_crosscheck.log \
    -do "run -all; quit -f" tb_rtl_crosscheck

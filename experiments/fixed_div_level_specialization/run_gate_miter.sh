#!/usr/bin/env bash
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
TMP=$(mktemp -d /tmp/oadm_fixed_div_level_specialization_gate.XXXXXX)
trap 'rm -rf "$TMP"' EXIT

for level in 0 1 2 3; do
    top="oadm_fixed_l${level}_div_specialized"
    "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" \
        "$HERE/dc/$top/$top.nl.v" "$TMP/${top}_gate.v" "$top"
done

vlib "$TMP/work"
vlog -work "$TMP/work" "$CELL_LIB"
vlog -sv -work "$TMP/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$HERE/specialized_rtl.v" \
    "$TMP/"*_gate.v \
    "$HERE/tb_gate_miter.sv"
vsim -c -suppress 3053 -l "$HERE/results/gate_miter.log" \
    -lib "$TMP/work" tb_gate_miter -gCASES="${GATE_CASES:-20000}" \
    -do "run -all; quit -f"

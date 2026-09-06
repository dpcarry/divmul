#!/usr/bin/env bash
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
TMP=$(mktemp -d /tmp/oadm_fixed_div_asymmetric_gate.XXXXXX)
trap 'rm -rf "$TMP"' EXIT

tops=(
    oadm_fixed_l0_div_dx18_dy18_control
    oadm_fixed_l0_div_dx18_dy18_c60_control
    oadm_fixed_l0_div_dx19_dy18_c59
    oadm_fixed_l0_div_dx19_dy18
    oadm_fixed_l0_div_dx18_dy19
    oadm_fixed_l1_div_dx16_dy16_control
    oadm_fixed_l1_div_dx17_dy16
    oadm_fixed_l1_div_dx16_dy17
)

for top in "${tops[@]}"; do
    "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" \
        "$HERE/dc/$top/$top.nl.v" "$TMP/${top}_gate.v" "$top"
done

vlib "$TMP/work"
vlog -work "$TMP/work" "$CELL_LIB"
vlog -sv -work "$TMP/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$HERE/asymmetric_rtl.v" \
    "$TMP/"*_gate.v \
    "$HERE/tb_gate_miter.sv"
vsim -c -suppress 3053 -l "$HERE/results/gate_miter.log" \
    -lib "$TMP/work" tb_gate_miter -gCASES="${GATE_CASES:-20000}" \
    -do "run -all; quit -f"

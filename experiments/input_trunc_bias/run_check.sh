#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
TMP=$(mktemp -d /tmp/input_trunc_check.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
vlib "$TMP/work"
extras=()
kind=rtl
if [[ "${1:-}" == gate ]]; then
    kind=gate
    vlog -work "$TMP/work" /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
    while read -r top; do
        "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" \
            "$HERE/dc/$top/$top.nl.v" "$TMP/${top}_gate.v" "$top"
    done < "$HERE/results/tops.txt"
    extras=(+define+GATE "$TMP/"*_gate.v)
fi
vlog -sv -work "$TMP/work" "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/mul_root_opt/oadm_mul_root_opt.v" \
    "$ROOT/experiments/fixed_div_level_specialization/specialized_rtl.v" \
    "$HERE/direct.v" "$HERE/tops.v" "${extras[@]}" "$HERE/tb_check.sv"
vsim -c -suppress 3053 -lib "$TMP/work" -l "$HERE/results/${kind}_check.log" \
    tb_check -do 'onerror {quit -code 1}; run -all; quit -f'
rg -q 'INPUT_TRUNC_CHECK PASS:' "$HERE/results/${kind}_check.log"
if rg -q 'MISMATCH|Fatal:' "$HERE/results/${kind}_check.log"; then exit 1; fi

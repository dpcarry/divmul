#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
BASE="$ROOT/experiments/input_trunc_bias"
TMP=$(mktemp -d /tmp/div_figure_check.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
kind=${1:-rtl}
extras=()
vlib "$TMP/work"
if [[ $kind == gate ]]; then
    vlog -work "$TMP/work" /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
    for bias in 0 1; do
        base="$HERE"
        if [[ $bias == 1 ]]; then base="$BASE"; fi
        for bits in 3 5 7; do
            top="input_div_b${bits}_bias${bias}"
            "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" \
                "$base/dc/$top/$top.nl.v" "$TMP/$top.v" "$top"
        done
    done
    extras=(+define+GATE "$TMP/"*.v)
fi
vlog -sv -work "$TMP/work" "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/experiments/fixed_div_level_specialization/specialized_rtl.v" \
    "$BASE/direct.v" "$BASE/tops.v" "$HERE/tops.v" "${extras[@]}" "$HERE/tb.sv"
vsim -c -suppress 3053 -lib "$TMP/work" -l "$HERE/$kind.log" tb \
    -do 'onerror {quit -code 1}; run -all; quit -f'
rg -q 'FIGURE_.* PASS:' "$HERE/$kind.log"
if rg -q 'MISMATCH|Fatal:' "$HERE/$kind.log"; then exit 1; fi

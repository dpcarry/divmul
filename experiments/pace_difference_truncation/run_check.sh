#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
TMP=$(mktemp -d /tmp/pace_ztrunc.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
kind=${1:-rtl}
extras=()
vlib "$TMP/work"
if [[ $kind == gate ]]; then
    vlog -work "$TMP/work" /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
    while read -r top; do
        "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" \
            "$HERE/dc/$top/$top.nl.v" "$TMP/$top.v" "$top"
    done < "$HERE/tops.txt"
    extras=(+define+GATE "$TMP/"*.v)
fi
vlog -sv -work "$TMP/work" "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" "$ROOT/PACE/common/CSA3_2_Array.v" \
    "$ROOT/PACE/L1/Mantissa_Div_L1.v" "$ROOT/PACE/L2/Mantissa_Div_L2.v" \
    "$ROOT/PACE/L3/Mantissa_Div_L3.v" "$ROOT/PACE/L4/Mantissa_Div_L4_Kec.v" \
    "$ROOT/rtl/pace_original/pace_fp32_l1.v" "$ROOT/rtl/pace_original/pace_fp32_l2.v" \
    "$ROOT/rtl/pace_original/pace_fp32_l3.v" "$ROOT/rtl/pace_original/pace_fp32_l4.v" \
    "$HERE/cores.v" "$HERE/tops.v" "${extras[@]}" "$HERE/tb.sv"
vsim -c -suppress 3053 -lib "$TMP/work" -l "$HERE/$kind.log" tb \
    -do 'onerror {quit -code 1}; run -all; quit -f'
rg -q 'ZTRUNC_.* PASS:' "$HERE/$kind.log"
if rg -q 'MISMATCH|Fatal:' "$HERE/$kind.log"; then exit 1; fi

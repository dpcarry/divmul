#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
sources=("$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" "$ROOT/PACE/common/CSA3_2_Array.v"
 "$ROOT/PACE/L1/Mantissa_Div_L1.v" "$ROOT/PACE/L2/Mantissa_Div_L2.v"
 "$ROOT/PACE/L3/Mantissa_Div_L3.v" "$ROOT/PACE/L4/Mantissa_Div_L4_Kec.v"
 "$HERE/historical_wrapper.v" "$HERE/baseline.v" "$HERE/tops.v")
kind=${1:-rtl}
if [[ $kind == ppa ]]; then
    rtl=$(IFS='|'; printf '%s' "${sources[*]}")
    while read -r top; do
        dc="$HERE/dc/$top"; pt="$HERE/pt/$top"
        mkdir -p "$dc" "$pt"
        if [[ ! -f "$pt/completed" ]]; then
            (cd "$ROOT/dc/hier_compile_10ns"
             TOP_LEVEL="$top" OUTPUT_DIR="$dc" PERIOD_NS=10 RTL_FILES="$rtl" \
                 dc_shell -f module.tcl > "$dc/dc_console.log" 2>&1)
            test -s "$dc/$top.nl.v"
            TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc" REPORT_DIR="$pt" \
                pt_shell -file "$ROOT/pt_dc/canonical_refresh/pt.tcl" > "$pt/pt_console.log" 2>&1
            test -s "$pt/$top.pt.power.rpt"
            touch "$pt/completed"
        fi
        printf 'Completed %s\n' "$top"
    done < "$HERE/tops.txt"
    exit
fi
TMP=$(mktemp -d /tmp/pace_fig8.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
vlib "$TMP/work"
extras=()
if [[ $kind == gate ]]; then
    vlog -work "$TMP/work" /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
    while read -r top; do
        "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" \
            "$HERE/dc/$top/$top.nl.v" "$TMP/$top.v" "$top"
    done < "$HERE/tops.txt"
    extras=(+define+GATE "$TMP/"*.v)
fi
vlog -sv -work "$TMP/work" /tools/synopsys/syn/current/dw/sim_ver/DW_fp_div.v \
    "${sources[@]}" "${extras[@]}" "$HERE/tb.sv"
vsim -c -suppress 3053 -lib "$TMP/work" -l "$HERE/$kind.log" tb \
    -do 'onerror {quit -code 1}; run -all; quit -f'
rg -q 'FIG8_.* PASS:' "$HERE/$kind.log"
if rg -q 'MISMATCH|Fatal:' "$HERE/$kind.log"; then exit 1; fi

#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
kind=${1:-rtl}
TMP=$(mktemp -d /tmp/runtime_trunc.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
sources=("$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" "$ROOT/rtl/root_opt/oadm_root_opt.v" "$HERE/variants.v")
tops=(oadm_runtime_root_opt runtime_residual runtime_wn runtime_both)
for i in 0 3; do
    top=${tops[$i]}
    if [[ $kind == ppa ]]; then
        test -f "$HERE/checks.json"
        dc="$HERE/dc/$top"; pt="$HERE/pt/$top"
        mkdir -p "$dc" "$pt"
        files=$(IFS='|'; echo "${sources[*]}")
        (cd "$ROOT/dc/hier_compile_10ns"
         TOP_LEVEL="$top" OUTPUT_DIR="$dc" PERIOD_NS=10.0 RTL_FILES="$files" dc_shell -f module.tcl >"$dc/dc_console.log" 2>&1)
        TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc" REPORT_DIR="$pt" pt_shell -file "$ROOT/pt_dc/canonical_refresh/pt.tcl" >"$pt/pt_console.log" 2>&1
        echo "PPA completed $top"
    else
        work="$TMP/work$i"; vlib "$work" >/dev/null
        extra=()
        if [[ $kind == gate ]]; then
            "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" "$HERE/dc/$top/$top.nl.v" "$TMP/gate$i.v" "$top"
            extra=(+define+GATE /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v "$TMP/gate$i.v")
        fi
        vlog -sv -timescale 1ns/1ps -work "$work" "${sources[@]}" "${extra[@]}" "$HERE/tb$i.sv" >"$HERE/${kind}_build$i.log" 2>&1
        vsim -c -quiet -lib "$work" -l "$HERE/${kind}$i.log" tb -do 'onerror {quit -code 1}; run -all; quit -f' >/dev/null
        rg 'RUNTIME PASS' "$HERE/${kind}$i.log"
        if rg -q 'Fatal:|MISMATCH' "$HERE/${kind}$i.log"; then exit 1; fi
    fi
done

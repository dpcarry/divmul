#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
kind=${1:-rtl}
TMP=$(mktemp -d /tmp/plain_oam.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
for level in 0 1 2 3; do
    sources=("$ROOT/third_party/amlib_oam/L$level/src/"*.v)
    common=("$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" "$ROOT/rtl/amlib_oam/amlib_oam_fp32_common_wrapper.v" "$HERE/plain.v" "$HERE/top$level.v")
    if [[ $kind == ppa ]]; then
        for top in "plain_mul_l$level" "amlib_oam_l${level}_fp32_common"; do
            dc="$HERE/dc/$top"; pt="$HERE/pt/$top"
            mkdir -p "$dc" "$pt"
            files=$(IFS='|'; echo "${sources[*]}|${common[*]}")
            (cd "$ROOT/dc/hier_compile_10ns"
             TOP_LEVEL="$top" OUTPUT_DIR="$dc" PERIOD_NS=10.0 RTL_FILES="$files" \
                dc_shell -f module.tcl >"$dc/dc_console.log" 2>&1)
            TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc" REPORT_DIR="$pt" \
                pt_shell -file "$ROOT/pt_dc/canonical_refresh/pt.tcl" >"$pt/pt_console.log" 2>&1
            echo "PPA completed $top"
        done
    else
        work="$TMP/work$level"
        vlib "$work" >/dev/null
        extra=()
        if [[ $kind == gate ]]; then
            extra=(+define+GATE /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v)
            for top in "plain_mul_l$level" "amlib_oam_l${level}_fp32_common"; do
                "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" \
                    "$HERE/dc/$top/$top.nl.v" "$TMP/$top.v" "$top"
                extra+=("$TMP/$top.v")
            done
        fi
        vlog -sv -timescale 1ns/1ps -work "$work" "${sources[@]}" "${common[@]}" "${extra[@]}" "$HERE/tb$level.sv" >"$HERE/${kind}_build_l$level.log" 2>&1
        vsim -c -quiet -lib "$work" -l "$HERE/${kind}_l$level.log" tb \
            -do 'onerror {quit -code 1}; run -all; quit -f' >/dev/null
        rg 'PLAIN_OAM PASS' "$HERE/${kind}_l$level.log"
        if rg -q 'Fatal:|MISMATCH' "$HERE/${kind}_l$level.log"; then exit 1; fi
    fi
done

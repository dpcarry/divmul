#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
kind=${1:-rtl}
sources=("$ROOT/PACE/common/FP_DIV_WRAPPER_32.v"
 "$ROOT/rtl/csa3.v" "$ROOT/rtl/divopt/oadm_multilevel_rounding_lut.v"
 "$ROOT/rtl/divopt/oadm_multilevel_plane_direct.v"
 "$ROOT/rtl/divopt/oadm_fixed_plane_centered.v"
 "$ROOT/rtl/divopt/oadm_multilevel_opt.v" "$HERE/runtime_correction.v")
tops=(oadm_runtime_opt oadm_runtime_correction_common oadm_runtime_correction_tapped)
if [[ $kind == rtl ]]; then
  tmp=$(mktemp -d /tmp/runtime_corr.XXXXXX); trap 'rm -rf "$tmp"' EXIT
  vlib "$tmp/work" >/dev/null
  vlog -sv -timescale 1ns/1ps -work "$tmp/work" "${sources[@]}" "$HERE/tb.sv" >"$HERE/rtl_build.log" 2>&1
  vsim -c -quiet -lib "$tmp/work" -l "$HERE/rtl.log" tb -do 'onerror {quit -code 1}; run -all; quit -f' >/dev/null
  rg 'RUNTIME_CORRECTION_EQUIV PASS' "$HERE/rtl.log"
elif [[ $kind == ppa ]]; then
  rg -q 'RUNTIME_CORRECTION_EQUIV PASS' "$HERE/rtl.log"
  files=$(IFS='|'; echo "${sources[*]}")
  for top in "${tops[@]}"; do
    dc="$HERE/dc/$top"; pt="$HERE/pt/$top"; mkdir -p "$dc" "$pt"
    (cd "$ROOT/dc/hier_compile_10ns"; TOP_LEVEL="$top" RTL_FILES="$files" OUTPUT_DIR="$dc" PERIOD_NS=10 dc_shell -f module.tcl >"$dc/dc_console.log" 2>&1)
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc" REPORT_DIR="$pt" pt_shell -file "$ROOT/pt_dc/canonical_refresh/pt.tcl" >"$pt/pt_console.log" 2>&1
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc" REPORT_DIR="$pt/modes" pt_shell -file "$HERE/pt_modes.tcl" >"$pt/pt_modes_console.log" 2>&1
    echo "PPA completed $top"
  done
elif [[ $kind == modes ]]; then
  for top in "${tops[@]}"; do
    dc="$HERE/dc/$top"; pt="$HERE/pt/$top"; mkdir -p "$pt/modes"
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc" REPORT_DIR="$pt/modes" pt_shell -file "$HERE/pt_modes.tcl" >"$pt/pt_modes_console.log" 2>&1
    echo "Mode analysis completed $top"
  done
elif [[ $kind == gate ]]; then
  tmp=$(mktemp -d /tmp/runtime_corr_gate.XXXXXX); trap 'rm -rf "$tmp"' EXIT
  gate_files=()
  for top in "${tops[@]}"; do
    "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" "$HERE/dc/$top/$top.nl.v" "$tmp/$top.v" "$top"
    gate_files+=("$tmp/$top.v")
  done
  vlib "$tmp/work" >/dev/null
  vlog -sv -timescale 1ns/1ps -work "$tmp/work" "${sources[@]}" \
    /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v \
    "${gate_files[@]}" "$HERE/tb_gate.sv" >"$HERE/gate_build.log" 2>&1
  vsim -c -quiet -lib "$tmp/work" -l "$HERE/gate.log" tb -do 'onerror {quit -code 1}; run -all; quit -f' >/dev/null
  rg 'RUNTIME_CORRECTION_GATE PASS' "$HERE/gate.log"
else
  echo "unknown mode $kind" >&2; exit 2
fi

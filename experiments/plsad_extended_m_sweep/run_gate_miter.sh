#!/usr/bin/env bash
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
TMP=$(mktemp -d /tmp/plsad_extended_m_gate.XXXXXX)
trap 'rm -rf "$TMP"' EXIT

for m in 10 12 15; do
    top="plsad_m${m}_fp32_paceio"
    "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" \
        "$HERE/dc/$top/$top.nl.v" "$TMP/${top}_gate.v" "$top"
done

vlib "$TMP/work"
vlog -work "$TMP/work" "$CELL_LIB"
vlog -sv -work "$TMP/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/paper_repro/plsad_prior_fp32_paceio.v" \
    "$HERE/tops.v" \
    "$TMP/plsad_m10_fp32_paceio_gate.v" \
    "$TMP/plsad_m12_fp32_paceio_gate.v" \
    "$TMP/plsad_m15_fp32_paceio_gate.v" \
    "$HERE/tb_gate_miter.sv"
vsim -c -suppress 3053 -l "$HERE/results/gate_miter.log" \
    -lib "$TMP/work" tb_gate_miter -gCASES="${GATE_CASES:-20000}" \
    -do "run -all; quit -f"

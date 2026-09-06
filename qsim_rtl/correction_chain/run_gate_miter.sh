#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
DC_ROOT="$ROOT/dc/hier_compile_10ns/outputs/correction_chain"
LOG="$ROOT/qsim_rtl/correction_chain/correction_chain_gate_miter.log"
PYTHON=${PYTHON:-$ROOT/.venv/bin/python}
TMP=$(mktemp -d /tmp/oadm_correction_chain_gate.XXXXXX)
trap 'rm -rf "$TMP"' EXIT

NETLISTS=()
for level in 0 1 2 3; do
    top="oadm_fixed_l${level}_divmul_correction_chain"
    "$PYTHON" "$ROOT/scripts/prefix_verilog_modules.py" \
        "$DC_ROOT/$top/$top.nl.v" "$TMP/${top}_gate.v" "$top"
    NETLISTS+=("$TMP/${top}_gate.v")
done

vlib "$TMP/work"
vlog -work "$TMP/work" "$CELL_LIB"
vlog -sv -work "$TMP/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/csa3.v" \
    "$ROOT/rtl/baseline/oadm_fixed_divmul_correction_chain.v" \
    "${NETLISTS[@]}" \
    "$ROOT/qsim_rtl/correction_chain/tb_correction_chain_gate_miter.sv"
vsim -c -suppress 3053 -l "$LOG" -lib "$TMP/work" \
    tb_correction_chain_gate_miter -gCASES="${GATE_CASES:-20000}" \
    -do "run -all; quit -f"

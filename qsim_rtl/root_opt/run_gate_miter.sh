#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
TMP=$(mktemp -d /tmp/oadm_root_opt_gate.XXXXXX)
trap 'rm -rf "$TMP"' EXIT

RUNTIME=oadm_runtime_root_opt
sed "0,/module ${RUNTIME} (/s//module ${RUNTIME}_gate (/" \
    "$ROOT/dc/root_opt/outputs_10ns/$RUNTIME/$RUNTIME.nl.v" \
    > "$TMP/${RUNTIME}_gate.v"
FIXED_NETLISTS=()
for level in 0 1 2 3; do
    top="oadm_fixed_l${level}_div_root_opt"
    sed "0,/module ${top} (/s//module ${top}_gate (/" \
        "$ROOT/dc/root_opt/outputs_10ns/$top/$top.nl.v" \
        > "$TMP/${top}_gate.v"
    FIXED_NETLISTS+=("$TMP/${top}_gate.v")
done

vlib "$TMP/work"
vlog -work "$TMP/work" "$CELL_LIB"
vlog -sv -work "$TMP/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/root_opt/oadm_root_opt.v" \
    "$TMP/${RUNTIME}_gate.v" "${FIXED_NETLISTS[@]}" \
    "$ROOT/qsim_rtl/root_opt/tb_root_opt_gate_miter.sv"
vsim -c -suppress 3053 -l "$ROOT/qsim_rtl/root_opt/gate_miter.log" \
    -lib "$TMP/work" tb_root_opt_gate_miter \
    -gCASES="${GATE_CASES:-20000}" -do "run -all; quit -f"

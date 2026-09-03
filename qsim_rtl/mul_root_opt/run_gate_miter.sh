#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
TMP=$(mktemp -d /tmp/mul_root_opt_gate.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
NETLISTS=()

for level in 0 1 2 3; do
    for suffix in _accuracy "" _aggressive; do
        top="oadm_fixed_l${level}_mul_root_opt${suffix}"
        sed "0,/module ${top} (/s//module ${top}_gate (/" \
            "$ROOT/dc/mul_root_opt/outputs_10ns/$top/$top.nl.v" \
            >"$TMP/${top}_gate.v"
        NETLISTS+=("$TMP/${top}_gate.v")
    done
done

vlib "$TMP/work"
vlog -work "$TMP/work" "$CELL_LIB"
vlog -sv -work "$TMP/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/mul_root_opt/oadm_mul_root_opt.v" \
    "${NETLISTS[@]}" "$ROOT/qsim_rtl/mul_root_opt/tb_gate_miter.sv"
vsim -c -suppress 3053 -l "$ROOT/qsim_rtl/mul_root_opt/gate_miter.log" \
    -lib "$TMP/work" tb_gate_miter -gCASES="${GATE_CASES:-20000}" \
    -do "run -all; quit -f"

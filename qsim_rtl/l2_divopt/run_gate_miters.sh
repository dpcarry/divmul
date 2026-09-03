#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
TMP=$(mktemp -d /tmp/oadm_l2_divopt_gate.XXXXXX)
trap 'rm -rf "$TMP"' EXIT

RTL=(
    "$ROOT/rtl/divopt/oadm_multilevel_rounding_lut.v"
    "$ROOT/rtl/divopt/oadm_fixed_plane_centered.v"
    "$ROOT/rtl/divopt/oadm_multilevel_plane_direct.v"
    "$ROOT/rtl/divopt/oadm_multilevel_opt.v"
)

run_one() {
    local top=$1
    local macro=$2
    if [[ -n ${ONLY_TOP:-} && $ONLY_TOP != "$top" ]]; then
        return
    fi
    local work="$TMP/work_$top"
    local source="$ROOT/dc/l2_divopt/outputs_10ns/$top/$top.nl.v"
    local gate="$TMP/${top}_gate.v"
    local log="$ROOT/qsim_rtl/l2_divopt/${top}.gate.log"

    sed "0,/module ${top} (/s//module ${top}_gate (/" "$source" > "$gate"
    vlib "$work" > "$log" 2>&1
    vlog -work "$work" "$CELL_LIB" >> "$log" 2>&1
    vlog -work "$work" +define+"$macro" "${RTL[@]}" "$gate" \
        "$ROOT/qsim_rtl/l2_divopt/tb_l2_specialized_gate_miter.sv" \
        >> "$log" 2>&1
    vsim -c -suppress 3053 -lib "$work" tb_l2_specialized_gate_miter \
        -gCASES="${GATE_CASES:-20000}" -do "run -all; quit -f" \
        >> "$log" 2>&1
    tail -n 8 "$log"
}

run_one oadm_fixed_l2_div_specialized_paceio BALANCED
run_one oadm_fixed_l2_div_specialized_reduced_scale_paceio REDUCED_SCALE
run_one oadm_fixed_l2_div_specialized_reduced_signed_scale_paceio REDUCED_SIGNED_SCALE

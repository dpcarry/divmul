#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
WORKTREES="$ROOT/../worktrees"
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
DC_ROOT=${GATE_DC_ROOT:-$ROOT/dc/hier_compile_10ns/outputs}
LOG_DIR=${GATE_LOG_DIR:-$ROOT/qsim_rtl/hier_compile_gate/logs}
PYTHON=${PYTHON:-$ROOT/.venv/bin/python}
TMP=$(mktemp -d /tmp/oadm_hier_gate.XXXXXX)
mkdir -p "$LOG_DIR"
trap 'rm -rf "$TMP"' EXIT

prefix_gate_netlist() {
    local src=$1
    local top=$2
    local dst=$3
    "$PYTHON" "$ROOT/scripts/prefix_verilog_modules.py" "$src" "$dst" "$top"
}

run_prior_miter() {
    local tag=$1
    local macro=$2
    local top=$3
    local gate=$4
    shift 4
    local work="$TMP/work_$tag"
    local gate_renamed="$TMP/${top}_gate.v"
    local log="$LOG_DIR/${tag}.log"
    prefix_gate_netlist "$gate" "$top" "$gate_renamed"
    vlib "$work" >"$log" 2>&1
    vlog -work "$work" "$CELL_LIB" >>"$log" 2>&1
    vlog -work "$work" +define+"$macro" "$@" "$gate_renamed" \
        "$ROOT/qsim_rtl/hier_compile_gate/tb_prior_gate_miter.sv" \
        >>"$log" 2>&1
    vsim -c -suppress 3053 -lib "$work" tb_prior_gate_miter \
        -gCASES="${GATE_CASES:-10000}" -do "run -all; quit -f" \
        >>"$log" 2>&1
}

if [[ ${PRIOR_ONLY:-0} != 1 ]]; then
    for level in 1 2 3 4; do
        case $level in
            1) core="$ROOT/PACE/L1/Mantissa_Div_L1.v" ;;
            2) core="$ROOT/PACE/L2/Mantissa_Div_L2.v" ;;
            3) core="$ROOT/PACE/L3/Mantissa_Div_L3.v" ;;
            4) core="$ROOT/PACE/L4/Mantissa_Div_L4_Kec.v" ;;
        esac
        top="pace_fp32_l${level}"
        work="$TMP/work_pace_l${level}"
        gate_renamed="$TMP/${top}_gate.v"
        log="$LOG_DIR/pace_l${level}.log"
        prefix_gate_netlist \
            "$DC_ROOT/pace/L${level}/${top}.nl.v" "$top" "$gate_renamed"
        vlib "$work" >"$log" 2>&1
        vlog -work "$work" "$CELL_LIB" >>"$log" 2>&1
        vlog -work "$work" \
            "$ROOT/PACE/common/CSA3_2_Array.v" \
            "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
            "$core" "$ROOT/rtl/pace_original/${top}.v" \
            "$gate_renamed" \
            "$ROOT/qsim_rtl/hier_compile_gate/tb_pace_gate_miter.sv" \
            >>"$log" 2>&1
        vsim -c -suppress 3053 -lib "$work" tb_pace_gate_miter \
            -gLEVEL="$level" -gCASES="${GATE_CASES:-10000}" \
            -do "run -all; quit -f" >>"$log" 2>&1
    done
fi

if [[ ${PACE_ONLY:-0} != 1 ]]; then
run_prior_miter qiad DESIGN_QIAD qiad_prior_fp32_paceio \
    "$DC_ROOT/prior/qiad/qiad_prior_fp32_paceio.nl.v" \
    "$WORKTREES/qiad-repro/rtl/qiad_prior/ref_core/qiad/top.v" \
    "$WORKTREES/qiad-repro/rtl/qiad_prior/ref_core/qiad/QUAD_RECIPROCAL.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$WORKTREES/qiad-repro/rtl/qiad_prior/qiad_prior_fp32_paceio.v"

run_prior_miter fanzed DESIGN_FANZED fanzed_prior_fp32_paceio \
    "$DC_ROOT/prior/fanzed/fanzed_prior_fp32_paceio.nl.v" \
    "$WORKTREES/fanzed-prior-rtl/rtl/fanzed_prior/ref_core/inzed/top.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$WORKTREES/fanzed-prior-rtl/rtl/fanzed_prior/fanzed_prior_fp32_paceio.v"

run_prior_miter truncapp DESIGN_TRUNCAPP truncapp_fp32_paceio \
    "$DC_ROOT/prior/truncapp/truncapp_fp32_paceio.nl.v" \
    "$WORKTREES/truncapp-repro/rtl/truncapp/ref_core/truncapp/INV.v" \
    "$WORKTREES/truncapp-repro/rtl/truncapp/ref_core/truncapp/TRUNC.v" \
    "$WORKTREES/truncapp-repro/rtl/truncapp/ref_core/truncapp/top.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$WORKTREES/truncapp-repro/rtl/truncapp/truncapp_fp32_paceio.v"

run_prior_miter lead DESIGN_LEAD lead_fp32_paceio_comb \
    "$DC_ROOT/prior/lead/lead_fp32_paceio_comb.nl.v" \
    "$WORKTREES/lead-repro/rtl/lead/ref_core/common/LOD.v" \
    "$WORKTREES/lead-repro/rtl/lead/ref_core/common/LOD_ENC.v" \
    "$ROOT/qsim_rtl/explicit_flatten_gate/lead_zero_cnt_compat.v" \
    "$WORKTREES/lead-repro/rtl/lead/ref_core/common/NORMALIZE.v" \
    "$WORKTREES/lead-repro/rtl/lead/ref_core/common/SHIFTER.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$WORKTREES/lead-repro/rtl/lead/lead_comb_core.v" \
    "$WORKTREES/lead-repro/rtl/lead/lead_fp32_paceio_comb.v"
fi

echo "Hierarchy-preserving compile gate miters complete."

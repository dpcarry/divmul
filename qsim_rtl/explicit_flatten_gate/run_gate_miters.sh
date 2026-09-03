#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
WORKTREES="$ROOT/../worktrees"
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
TMP=$(mktemp -d /tmp/oadm_explicit_flatten_gate.XXXXXX)
LOG_DIR="$ROOT/qsim_rtl/explicit_flatten_gate/logs"
mkdir -p "$LOG_DIR"
trap 'rm -rf "$TMP"' EXIT

rename_gate_top() {
    local src=$1
    local top=$2
    local dst=$3
    sed "0,/module ${top} (/s//module ${top}_gate (/" "$src" > "$dst"
}

run_miter() {
    local tag=$1
    local macro=$2
    local top=$3
    local gate=$4
    local tb=$5
    shift 5
    if [[ -n ${ONLY_DESIGN:-} && $tag != "$ONLY_DESIGN" ]]; then
        return
    fi
    local work="$TMP/work_$tag"
    local gate_renamed="$TMP/${top}_gate.v"
    local log="$LOG_DIR/${tag}.log"
    : > "$log"
    rename_gate_top "$gate" "$top" "$gate_renamed"
    vlib "$work" >>"$log" 2>&1
    vlog -work "$work" "$CELL_LIB" >>"$log" 2>&1
    vlog -work "$work" +define+"$macro" "$@" "$gate_renamed" "$tb" >>"$log" 2>&1
    vsim -c -suppress 3053 -lib "$work" "$(basename "$tb" .sv)" \
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
    gate="$ROOT/dc/pace_original/outputs_explicit_flatten_area10/L${level}/${top}.nl.v"
    work="$TMP/work_pace_l${level}"
    gate_renamed="$TMP/${top}_gate.v"
    rename_gate_top "$gate" "$top" "$gate_renamed"
    vlib "$work" >/dev/null
    vlog -work "$work" "$CELL_LIB" >/dev/null
    vlog -work "$work" \
        "$ROOT/PACE/common/CSA3_2_Array.v" \
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
        "$core" "$ROOT/rtl/pace_original/${top}.v" \
        "$gate_renamed" "$ROOT/qsim_rtl/pace_original/tb_pace_flatten_gate_miter.sv" >/dev/null
    vsim -c -lib "$work" tb_pace_flatten_gate_miter \
        -gLEVEL="$level" -do "run -all; quit -f" \
        >"$LOG_DIR/pace_l${level}.log" 2>&1
done

OADM_COMMON=(
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v"
    "$ROOT/rtl/csa3.v"
    "$ROOT/rtl/pipeline_sweep/oadm_pipe_cut.v"
    "$ROOT/rtl/pipeline_sweep/oadm_dm_pipe.v"
    "$ROOT/rtl/nopipe/oadm_dm_nopipe.v"
    "$ROOT/rtl/nopipe/oadm_dm_fixed_nopipe.v"
    "$ROOT/rtl/divopt/oadm_multilevel_rounding_lut.v"
    "$ROOT/rtl/divopt/oadm_lowlevel_plane_direct.v"
    "$ROOT/rtl/divopt/oadm_multilevel_plane_direct.v"
    "$ROOT/rtl/divopt/oadm_fixed_plane_centered.v"
    "$ROOT/rtl/divopt/oadm_multilevel_opt.v"
)
for level in 0 1 2; do
    top="oadm_fixed_l${level}_div_paceio_opt"
    run_miter "oadm_l${level}" "OADM_L${level}" "$top" \
        "$ROOT/dc/multilevel_opt/outputs_explicit_flatten_area10/$top/$top.nl.v" \
        "$ROOT/qsim_rtl/explicit_flatten_gate/tb_oadm_gate_miter.sv" \
        "${OADM_COMMON[@]}"
done

run_miter oadm_l0_index OADM_L0_INDEX oadm_l0_centered_index_div_paceio_opt \
    "$ROOT/dc/multilevel_opt/outputs_explicit_flatten_area10/oadm_l0_centered_index_div_paceio_opt/oadm_l0_centered_index_div_paceio_opt.nl.v" \
    "$ROOT/qsim_rtl/explicit_flatten_gate/tb_oadm_gate_miter.sv" \
    "${OADM_COMMON[@]}" \
    "$ROOT/rtl/divopt/oadm_experiment_variants.v"

run_miter oadm_l3 OADM_L3 oadm_fixed_l3_div_opt_centered_paceio \
    "$ROOT/dc/0123_divopt/outputs_explicit_flatten_area10/oadm_fixed_l3_div_opt_centered_paceio/oadm_fixed_l3_div_opt_centered_paceio.nl.v" \
    "$ROOT/qsim_rtl/explicit_flatten_gate/tb_oadm_gate_miter.sv" \
    "$ROOT/rtl/csa3.v" \
    "$ROOT/rtl/pipeline_sweep/oadm_pipe_cut.v" \
    "$ROOT/rtl/pipeline_sweep/oadm_dm_pipe.v" \
    "$ROOT/rtl/nopipe/oadm_dm_mode_nopipe.v" \
    "$ROOT/rtl/divopt/oadm_rounding_error_lut.v" \
    "$ROOT/rtl/divopt/oadm_l3_plane_direct.v" \
    "$ROOT/rtl/divopt/oadm_l3_plane_factored.v" \
    "$ROOT/rtl/divopt/oadm_fixed_l3_div_opt.v"
fi

run_miter qiad DESIGN_QIAD qiad_prior_fp32_paceio \
    "$WORKTREES/qiad-repro/dc/qiad_prior/outputs_paceio_explicit_flatten_area10/qiad_prior_fp32_paceio.nl.v" \
    "$ROOT/qsim_rtl/explicit_flatten_gate/tb_prior_gate_miter.sv" \
    "$WORKTREES/qiad-repro/rtl/qiad_prior/ref_core/qiad/top.v" \
    "$WORKTREES/qiad-repro/rtl/qiad_prior/ref_core/qiad/QUAD_RECIPROCAL.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$WORKTREES/qiad-repro/rtl/qiad_prior/qiad_prior_fp32_paceio.v"

run_miter fanzed DESIGN_FANZED fanzed_prior_fp32_paceio \
    "$WORKTREES/fanzed-prior-rtl/dc/fanzed_prior_paceio/outputs_explicit_flatten_area10/fanzed_prior_fp32_paceio.nl.v" \
    "$ROOT/qsim_rtl/explicit_flatten_gate/tb_prior_gate_miter.sv" \
    "$WORKTREES/fanzed-prior-rtl/rtl/fanzed_prior/ref_core/inzed/top.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$WORKTREES/fanzed-prior-rtl/rtl/fanzed_prior/fanzed_prior_fp32_paceio.v"

run_miter truncapp DESIGN_TRUNCAPP truncapp_fp32_paceio \
    "$WORKTREES/truncapp-repro/dc/truncapp_paceio/outputs_explicit_flatten_area10/truncapp_fp32_paceio.nl.v" \
    "$ROOT/qsim_rtl/explicit_flatten_gate/tb_prior_gate_miter.sv" \
    "$WORKTREES/truncapp-repro/rtl/truncapp/ref_core/truncapp/INV.v" \
    "$WORKTREES/truncapp-repro/rtl/truncapp/ref_core/truncapp/TRUNC.v" \
    "$WORKTREES/truncapp-repro/rtl/truncapp/ref_core/truncapp/top.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$WORKTREES/truncapp-repro/rtl/truncapp/truncapp_fp32_paceio.v"

run_miter lead DESIGN_LEAD lead_fp32_paceio_comb \
    "$WORKTREES/lead-repro/dc/lead_paceio_comb/outputs_explicit_flatten_area10/lead_fp32_paceio_comb.nl.v" \
    "$ROOT/qsim_rtl/explicit_flatten_gate/tb_prior_gate_miter.sv" \
    "$WORKTREES/lead-repro/rtl/lead/ref_core/common/LOD.v" \
    "$WORKTREES/lead-repro/rtl/lead/ref_core/common/LOD_ENC.v" \
    "$ROOT/qsim_rtl/explicit_flatten_gate/lead_zero_cnt_compat.v" \
    "$WORKTREES/lead-repro/rtl/lead/ref_core/common/NORMALIZE.v" \
    "$WORKTREES/lead-repro/rtl/lead/ref_core/common/SHIFTER.v" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$WORKTREES/lead-repro/rtl/lead/lead_comb_core.v" \
    "$WORKTREES/lead-repro/rtl/lead/lead_fp32_paceio_comb.v"

echo "Explicit-flatten gate miters complete."

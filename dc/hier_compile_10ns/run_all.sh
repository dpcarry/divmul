#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
WORKTREES=$(cd "$ROOT/../worktrees" && pwd)
DC_SCRIPT="$ROOT/dc/hier_compile_10ns/module.tcl"
PT_SCRIPT="$ROOT/pt_dc/canonical_refresh/pt.tcl"
DC_ROOT="$ROOT/dc/hier_compile_10ns/outputs"
PT_ROOT="$ROOT/pt_dc/hier_compile_10ns/reports"
CAMPAIGN_GROUPS=${CAMPAIGN_GROUPS:-canonical,pace,prior,root_div,mul_root}

join_pipe() {
    local IFS='|'
    printf '%s' "$*"
}

enabled() {
    [[ ",$CAMPAIGN_GROUPS," == *",$1,"* ]]
}

run_one() {
    local tag=$1
    local top=$2
    local include_dirs=$3
    shift 3
    if [[ -n ${ONLY_TAG:-} && $tag != "$ONLY_TAG" ]]; then
        return
    fi
    local dc_dir="$DC_ROOT/$tag"
    local pt_dir="$PT_ROOT/$tag"
    mkdir -p "$dc_dir" "$pt_dir"
    if [[ ${SKIP_COMPLETE:-0} == 1 \
          && -s "$dc_dir/$top.nl.v" \
          && -s "$dc_dir/$top.dc.rpt" \
          && -s "$pt_dir/$top.pt.qor.rpt" \
          && -s "$pt_dir/$top.pt.power.rpt" ]]; then
        printf 'Skipping complete point: %s (%s)\n' "$tag" "$top"
        return
    fi
    printf 'Running DC: %s (%s)\n' "$tag" "$top"
    (
        cd "$ROOT/dc/hier_compile_10ns"
        TOP_LEVEL="$top" RTL_FILES="$(join_pipe "$@")" \
            RTL_INCLUDE_DIRS="$include_dirs" OUTPUT_DIR="$dc_dir" \
            PERIOD_NS=10.0 dc_shell -f "$DC_SCRIPT" \
            >"$dc_dir/dc_console.log" 2>&1
    )
    printf 'Running PT: %s (%s)\n' "$tag" "$top"
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc_dir" REPORT_DIR="$pt_dir" \
        pt_shell -file "$PT_SCRIPT" >"$pt_dir/pt_console.log" 2>&1
}

OADM_COMMON_REL=(
    rtl/csa3.v
    rtl/pipeline_sweep/oadm_pipe_cut.v
    rtl/pipeline_sweep/oadm_dm_pipe.v
    rtl/nopipe/oadm_dm_nopipe.v
    rtl/nopipe/oadm_dm_fixed_nopipe.v
    rtl/divopt/oadm_multilevel_rounding_lut.v
    rtl/divopt/oadm_lowlevel_plane_direct.v
    rtl/divopt/oadm_multilevel_plane_direct.v
    rtl/divopt/oadm_fixed_plane_centered.v
)

oadm_files() {
    local tree=$1
    local rel
    for rel in "${OADM_COMMON_REL[@]}"; do
        printf '%s\n' "$tree/$rel"
    done
    printf '%s\n' \
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
        "$ROOT/rtl/divopt/oadm_multilevel_opt.v" \
        "$ROOT/rtl/canonical_refresh/oadm_mul_wrappers.v"
}

if enabled canonical; then
    for kind in mul div divmul; do
        run_one "exact/$kind" "exact_fp32_${kind}_nopipe" "" \
            "$ROOT/rtl/exact/exact_fp32_nopipe.v"
    done

    SIMD="$ROOT/LeAp_SIMDive, RAPID/SIMDive Version/SIMD_32_16_8/src"
    run_one simdive/simdive_original_fp32_wrapper \
        simdive_original_fp32_wrapper "" \
        "$SIMD/adders_bit_select_2_4_6_8.v" \
        "$SIMD/adders_bit_select_3.v" \
        "$SIMD/adders_bit_select_5_7.v" \
        "$SIMD/add_4_bit.v" "$SIMD/add_8_bit.v" \
        "$SIMD/bit_inverse.v" "$SIMD/ec_mul_div.v" \
        "$SIMD/ec_mul_div_alternate.v" "$SIMD/lod.v" "$SIMD/shifter.v" \
        "$ROOT/rtl/simdive_original_compat/shifter_out_mul_div_compat.v" \
        "$SIMD/top_module.v" \
        "$ROOT/rtl/simdive_original/simdive_original_fp32_wrapper.v"

    RESIDUAL="$WORKTREES/centered-residual-rerun"
    mapfile -t residual_rtl < <(oadm_files "$RESIDUAL")
    for level in 0 1 2 3; do
        run_one "sharing/L${level}_centered_residual/full" \
            "oadm_fixed_l${level}_opt" "" "${residual_rtl[@]}"
        run_one "sharing/L${level}_centered_residual/div" \
            "oadm_fixed_l${level}_div_opt" "" "${residual_rtl[@]}"
        run_one "sharing/L${level}_centered_residual/mul" \
            "oadm_fixed_l${level}_mul_canonical" "" "${residual_rtl[@]}"
    done

    INDEX="$WORKTREES/centered-index-sharing"
    mapfile -t index_rtl < <(oadm_files "$INDEX")
    run_one "variant_audit/L0_centered_index/full" oadm_fixed_l0_opt "" \
        "${index_rtl[@]}"

    for level in 0 1 2 3; do
        mapfile -t oam_rtl < <(find "$ROOT/third_party/amlib_oam/L${level}/src" \
            -maxdepth 1 -type f -name '*.v' -print | sort)
        run_one "amlib_oam/L${level}" top "" "${oam_rtl[@]}"
    done
fi

if enabled pace; then
    for level in 1 2 3 4; do
        mantissa="$ROOT/PACE/L${level}/Mantissa_Div_L${level}.v"
        if [[ $level == 4 ]]; then
            mantissa="$ROOT/PACE/L4/Mantissa_Div_L4_Kec.v"
        fi
        run_one "pace/L${level}" "pace_fp32_l${level}" "" \
            "$ROOT/PACE/common/CSA3_2_Array.v" \
            "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
            "$mantissa" "$ROOT/rtl/pace_original/pace_fp32_l${level}.v"
    done
fi

if enabled prior; then
    QIAD="$WORKTREES/qiad-repro/rtl/qiad_prior"
    run_one prior/qiad qiad_prior_fp32_paceio \
        "$QIAD/ref_core/common" \
        "$QIAD/ref_core/qiad/top.v" \
        "$QIAD/ref_core/qiad/QUAD_RECIPROCAL.v" \
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
        "$QIAD/qiad_prior_fp32_paceio.v"

    FANZED="$WORKTREES/fanzed-prior-rtl/rtl/fanzed_prior"
    run_one prior/fanzed fanzed_prior_fp32_paceio \
        "$FANZED/ref_core/common" \
        "$FANZED/ref_core/inzed/top.v" \
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
        "$FANZED/fanzed_prior_fp32_paceio.v"

    TRUNC="$WORKTREES/truncapp-repro/rtl/truncapp"
    run_one prior/truncapp truncapp_fp32_paceio \
        "$TRUNC/ref_core/truncapp|$TRUNC/ref_core/common" \
        "$TRUNC/ref_core/truncapp/INV.v" \
        "$TRUNC/ref_core/truncapp/TRUNC.v" \
        "$TRUNC/ref_core/truncapp/top.v" \
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
        "$TRUNC/truncapp_fp32_paceio.v"

    LEAD="$WORKTREES/lead-repro/rtl/lead"
    run_one prior/lead lead_fp32_paceio_comb \
        "$LEAD/ref_core/lead|$LEAD/ref_core/common" \
        "$LEAD/ref_core/lead/top.v" \
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
        "$LEAD/lead_comb_core.v" "$LEAD/lead_fp32_paceio_comb.v"
fi

if enabled root_div; then
    root_rtl=(
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v"
        "$ROOT/rtl/divopt/oadm_experiment_variants.v"
        "$ROOT/rtl/root_opt/oadm_root_opt.v"
    )
    for top in oadm_runtime_root_opt \
               oadm_fixed_l0_div_root_opt \
               oadm_fixed_l1_div_root_opt \
               oadm_fixed_l2_div_root_opt \
               oadm_fixed_l3_div_root_opt; do
        run_one "root_div/$top" "$top" "" "${root_rtl[@]}"
    done
fi

if enabled mul_root; then
    mul_rtl=(
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v"
        "$ROOT/rtl/mul_root_opt/oadm_mul_root_opt.v"
    )
    for level in 0 1 2 3; do
        for suffix in accuracy balanced aggressive; do
            case $suffix in
                accuracy) top="oadm_fixed_l${level}_mul_root_opt_accuracy" ;;
                balanced) top="oadm_fixed_l${level}_mul_root_opt" ;;
                aggressive) top="oadm_fixed_l${level}_mul_root_opt_aggressive" ;;
            esac
            run_one "mul_root/$top" "$top" "" "${mul_rtl[@]}"
        done
    done
fi

printf 'Hierarchy-preserving plain-compile campaign completed.\n'

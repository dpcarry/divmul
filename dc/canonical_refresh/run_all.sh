#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
WORKTREES=$(cd "$ROOT/../worktrees" && pwd)
DC_SCRIPT="$ROOT/dc/canonical_refresh/module.tcl"
PT_SCRIPT="$ROOT/pt_dc/canonical_refresh/pt.tcl"
DC_ROOT="$ROOT/dc/canonical_refresh/outputs_10ns"
PT_ROOT="$ROOT/pt_dc/canonical_refresh/reports_10ns"

join_rtl() {
    local IFS='|'
    printf '%s' "$*"
}

run_one() {
    local tag=$1
    local top=$2
    shift 2
    if [[ -n ${ONLY_TAG:-} && $tag != "$ONLY_TAG" ]]; then
        return
    fi
    local dc_dir="$DC_ROOT/$tag"
    local pt_dir="$PT_ROOT/$tag"
    mkdir -p "$dc_dir" "$pt_dir"
    printf 'Running DC: %s (%s)\n' "$tag" "$top"
    TOP_LEVEL="$top" RTL_FILES="$(join_rtl "$@")" OUTPUT_DIR="$dc_dir" \
        PERIOD_NS=10.0 dc_shell -f "$DC_SCRIPT" \
        >"$dc_dir/dc_console.log" 2>&1
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
    rtl/divopt/oadm_multilevel_opt.v
)

oadm_files() {
    local tree=$1
    local files=()
    local rel
    for rel in "${OADM_COMMON_REL[@]}"; do
        files+=("$tree/$rel")
    done
    files+=("$ROOT/rtl/canonical_refresh/oadm_mul_wrappers.v")
    printf '%s\n' "${files[@]}"
}

if [[ ${RUN_EXACT:-1} == 1 ]]; then
    for kind in mul div divmul; do
        run_one "exact/$kind" "exact_fp32_${kind}_nopipe" \
            "$ROOT/rtl/exact/exact_fp32_nopipe.v"
    done
fi

if [[ ${RUN_SIMDIVE:-1} == 1 ]]; then
    SIMD="$ROOT/LeAp_SIMDive, RAPID/SIMDive Version/SIMD_32_16_8/src"
    run_one simdive/simdive_original_fp32_wrapper simdive_original_fp32_wrapper \
        "$SIMD/adders_bit_select_2_4_6_8.v" \
        "$SIMD/adders_bit_select_3.v" \
        "$SIMD/adders_bit_select_5_7.v" \
        "$SIMD/add_4_bit.v" "$SIMD/add_8_bit.v" \
        "$SIMD/bit_inverse.v" "$SIMD/ec_mul_div.v" \
        "$SIMD/ec_mul_div_alternate.v" "$SIMD/lod.v" "$SIMD/shifter.v" \
        "$ROOT/rtl/simdive_original_compat/shifter_out_mul_div_compat.v" \
        "$SIMD/top_module.v" \
        "$ROOT/rtl/simdive_original/simdive_original_fp32_wrapper.v"
fi

if [[ ${RUN_SHARING:-1} == 1 ]]; then
    INDEX="$WORKTREES/centered-index-sharing"
    RESIDUAL="$WORKTREES/centered-residual-rerun"
    mapfile -t index_rtl < <(oadm_files "$INDEX")
    mapfile -t residual_rtl < <(oadm_files "$RESIDUAL")
    for level in 0 1 2 3; do
        for mode in full div mul; do
            case $mode in
                full) top="oadm_fixed_l${level}_opt" ;;
                div) top="oadm_fixed_l${level}_div_opt" ;;
                mul) top="oadm_fixed_l${level}_mul_canonical" ;;
            esac
            run_one "sharing/L${level}_centered_residual/$mode" "$top" \
                "${residual_rtl[@]}"
        done
    done
    # Audit the retained L0 Pareto alternative without mixing it into sharing.
    run_one "variant_audit/L0_centered_index/full" oadm_fixed_l0_opt \
        "${index_rtl[@]}"
fi

if [[ ${RUN_AMLIB:-1} == 1 ]]; then
    for level in 0 1 2 3; do
        mapfile -t oam_rtl < <(find "$ROOT/third_party/amlib_oam/L${level}/src" \
            -maxdepth 1 -type f -name '*.v' -print | sort)
        run_one "amlib_oam/L${level}" top "${oam_rtl[@]}"
    done
fi

printf 'Canonical refresh completed.\n'

#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")" && pwd)
OUT=outputs_explicit_flatten_area10
REPORT=reports/explicit_flatten_area10

mkdir -p "$ROOT/pt_dc/pace_oadm_compare/logs_explicit_flatten_area10"
for level in 1 2 3 4; do
    (
        cd "$ROOT/pt_dc/pace_oadm_compare"
        env PACE_LEVEL="$level" PACE_DC_OUTPUT_ROOT="$OUT" \
            PACE_REPORT_ROOT="$REPORT/pace" \
            pt_shell -file pace_flatten_aligned.tcl
    ) >"$ROOT/pt_dc/pace_oadm_compare/logs_explicit_flatten_area10/pace_l${level}.log" 2>&1
done

mkdir -p "$ROOT/pt_dc/multilevel_opt/logs_explicit_flatten_area10"
for level in 0 1 2; do
    top="oadm_fixed_l${level}_div_paceio_opt"
    (
        cd "$ROOT/pt_dc/multilevel_opt"
        env TOP_LEVEL="$top" DC_OUTPUT_ROOT="$OUT" \
            REPORT_TAG="explicit_flatten_area10/${top}" pt_shell -file pt.tcl
    ) >"$ROOT/pt_dc/multilevel_opt/logs_explicit_flatten_area10/${top}.log" 2>&1
done

(
    cd "$ROOT/pt_dc/multilevel_opt"
    env TOP_LEVEL=oadm_l0_centered_index_div_opt DC_OUTPUT_ROOT="$OUT" \
        REPORT_TAG=explicit_flatten_area10/oadm_l0_centered_index_div_opt \
        pt_shell -file pt.tcl
) >"$ROOT/pt_dc/multilevel_opt/logs_explicit_flatten_area10/oadm_l0_centered_index_div_opt.log" 2>&1

(
    cd "$ROOT/pt_dc/multilevel_opt"
    env TOP_LEVEL=oadm_l0_centered_index_div_paceio_opt DC_OUTPUT_ROOT="$OUT" \
        REPORT_TAG=explicit_flatten_area10/oadm_l0_centered_index_div_paceio_opt \
        pt_shell -file pt.tcl
) >"$ROOT/pt_dc/multilevel_opt/logs_explicit_flatten_area10/oadm_l0_centered_index_div_paceio_opt.log" 2>&1

(
    cd "$ROOT/pt_dc/pace_oadm_compare"
    env TOP_LEVEL=oadm_fixed_l3_div_opt_centered_paceio \
        DC_DIR=../../dc/0123_divopt/$OUT/oadm_fixed_l3_div_opt_centered_paceio \
        REPORT_TAG=explicit_flatten_area10/oadm_fixed_l3_div_opt_centered_paceio \
        pt_shell -file oadm_aligned.tcl
) >"$ROOT/pt_dc/pace_oadm_compare/logs_explicit_flatten_area10/oadm_l3_centered.log" 2>&1

run_prior_pt() {
    local dir=$1
    local log=$2
    mkdir -p "$dir/logs_explicit_flatten_area10"
    (
        cd "$dir"
        pt_shell -file pt_explicit_flatten.tcl
    ) >"$dir/logs_explicit_flatten_area10/$log" 2>&1
}

run_prior_pt "$ROOT/../worktrees/qiad-repro/pt_dc/qiad_prior" qiad.log
run_prior_pt "$ROOT/../worktrees/fanzed-prior-rtl/pt_dc/fanzed_prior_paceio" fanzed.log
run_prior_pt "$ROOT/../worktrees/truncapp-repro/pt_dc/truncapp_paceio" truncapp.log
run_prior_pt "$ROOT/../worktrees/lead-repro/pt_dc/lead_paceio_comb" lead.log

echo "Explicit-flatten PT campaign complete."

#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")" && pwd)
OUT=outputs_explicit_flatten_area10

run_dc() {
    local dir=$1
    local log=$2
    shift 2
    mkdir -p "$dir/logs_explicit_flatten_area10"
    (
        cd "$dir"
        env "$@" dc_shell -f module_explicit_flatten.tcl
    ) >"$dir/logs_explicit_flatten_area10/$log" 2>&1
}

mkdir -p "$ROOT/dc/pace_original/logs_explicit_flatten_area10"
for level in 1 2 3 4; do
    (
        cd "$ROOT/dc/pace_original"
        env PACE_LEVEL="$level" PACE_MAPPING_STYLE=matched_area \
            PACE_OUTPUT_ROOT="$OUT" dc_shell -f module_flatten.tcl
    ) >"$ROOT/dc/pace_original/logs_explicit_flatten_area10/L${level}.log" 2>&1
done

mkdir -p "$ROOT/dc/multilevel_opt/logs_explicit_flatten_area10"
for level in 0 1 2; do
    top="oadm_fixed_l${level}_div_paceio_opt"
    (
        cd "$ROOT/dc/multilevel_opt"
        env TOP_LEVEL="$top" OUTPUT_ROOT="$OUT" PERIOD_NS=10 \
            dc_shell -f module.tcl
    ) >"$ROOT/dc/multilevel_opt/logs_explicit_flatten_area10/${top}.log" 2>&1
done

(
    cd "$ROOT/dc/multilevel_opt"
    env TOP_LEVEL=oadm_l0_centered_index_div_opt OUTPUT_ROOT="$OUT" \
        PERIOD_NS=10 EXTRA_RTL=../../rtl/divopt/oadm_experiment_variants.v \
        dc_shell -f module.tcl
) >"$ROOT/dc/multilevel_opt/logs_explicit_flatten_area10/oadm_l0_centered_index_div_opt.log" 2>&1

(
    cd "$ROOT/dc/multilevel_opt"
    env TOP_LEVEL=oadm_l0_centered_index_div_paceio_opt OUTPUT_ROOT="$OUT" \
        PERIOD_NS=10 EXTRA_RTL=../../rtl/divopt/oadm_experiment_variants.v \
        dc_shell -f module.tcl
) >"$ROOT/dc/multilevel_opt/logs_explicit_flatten_area10/oadm_l0_centered_index_div_paceio_opt.log" 2>&1

mkdir -p "$ROOT/dc/0123_divopt/logs_explicit_flatten_area10"
(
    cd "$ROOT/dc/0123_divopt"
    env TOP_LEVEL=oadm_fixed_l3_div_opt_centered_paceio \
        OUTPUT_ROOT="$OUT" PERIOD_NS=10 AREA_HIGH=1 dc_shell -f module.tcl
) >"$ROOT/dc/0123_divopt/logs_explicit_flatten_area10/oadm_fixed_l3_div_opt_centered_paceio.log" 2>&1

run_dc "$ROOT/../worktrees/qiad-repro/dc/qiad_prior" qiad.log
run_dc "$ROOT/../worktrees/fanzed-prior-rtl/dc/fanzed_prior_paceio" fanzed.log
run_dc "$ROOT/../worktrees/truncapp-repro/dc/truncapp_paceio" truncapp.log
run_dc "$ROOT/../worktrees/lead-repro/dc/lead_paceio_comb" lead.log

echo "Explicit-flatten DC campaign complete."

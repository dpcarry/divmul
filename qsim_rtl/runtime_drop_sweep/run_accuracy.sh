#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
OUT="$ROOT/qsim_rtl/runtime_drop_sweep"
CASES=${CASES:-250000}
RESIDUAL_DROPS=(10 12 14 16 18)
SCALE_DROPS=(14 16 18)

mkdir -p "$OUT/build"
printf '%s\n' 'residual_drop,scale_drop,mode,level,cases,mae,mred,rmse,baseline_mae,baseline_mred,baseline_rmse,baseline_mismatches' \
    >"$OUT/runtime_drop_accuracy.csv"

for residual_drop in "${RESIDUAL_DROPS[@]}"; do
    for scale_drop in "${SCALE_DROPS[@]}"; do
        tag="r${residual_drop}_s${scale_drop}"
        build="$OUT/build/$tag"
        rm -rf "$build"
        verilator --cc --exe --Wno-fatal \
            --top-module runtime_drop_sweep_top \
            -GRESIDUAL_DROP="$residual_drop" -GSCALE_DROP="$scale_drop" \
            --Mdir "$build" \
            "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
            "$ROOT/rtl/divopt/oadm_experiment_variants.v" \
            "$ROOT/rtl/root_opt/oadm_root_opt.v" \
            "$ROOT/rtl/runtime_drop_sweep/oadm_runtime_drop_sweep.v" \
            "$OUT/runtime_drop_sweep_top.sv" \
            "$OUT/runtime_drop_sweep_main.cpp" \
            >"$OUT/${tag}_build.log" 2>&1
        make -C "$build" -j 4 -f Vruntime_drop_sweep_top.mk \
            >>"$OUT/${tag}_build.log" 2>&1
        "$build/Vruntime_drop_sweep_top" \
            "$residual_drop" "$scale_drop" "$CASES" \
            >>"$OUT/runtime_drop_accuracy.csv"
        printf 'Completed %s\n' "$tag"
    done
done

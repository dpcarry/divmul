#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
OUT="$ROOT/qsim_rtl/mul_root_opt/logs"
mkdir -p "$OUT"

OADM=(
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v"
    "$ROOT/rtl/divopt/oadm_lowlevel_plane_direct.v"
    "$ROOT/rtl/divopt/oadm_multilevel_rounding_lut.v"
    "$ROOT/rtl/divopt/oadm_fixed_plane_centered.v"
    "$ROOT/rtl/divopt/oadm_multilevel_plane_direct.v"
    "$ROOT/rtl/divopt/oadm_multilevel_opt.v"
    "$ROOT/rtl/mul_root_opt/oadm_mul_root_opt.v"
)

for level in 0 1 2 3; do
    mapfile -t oam < <(find "$ROOT/third_party/amlib_oam/L${level}/src" \
        -maxdepth 1 -type f -name '*.v' -print | sort)
    build=$(mktemp -d "/tmp/mul_root_opt_l${level}.XXXXXX")
    trap 'rm -rf "$build"' EXIT
    verilator --cc --exe --Wno-fatal --top-module mul_root_opt_compare \
        -D"LEVEL${level}" --Mdir "$build" \
        "${oam[@]}" "${OADM[@]}" \
        "$ROOT/qsim_rtl/mul_root_opt/mul_root_opt_compare.v" \
        "$ROOT/qsim_rtl/mul_root_opt/sim_main.cpp" \
        >"$OUT/l${level}_build.log" 2>&1
    make -C "$build" -f Vmul_root_opt_compare.mk \
        >>"$OUT/l${level}_build.log" 2>&1
    "$build/Vmul_root_opt_compare" "$level" 200000 >"$OUT/l${level}.log"
    rm -rf "$build"
    trap - EXIT
done

{
    echo "level,design,vectors,mae,mred,rmse,mean_error,max_abs"
    awk '/^METRICS / {
        for (i=1;i<=NF;i++) { split($i,a,"="); v[a[1]]=a[2] }
        print v["level"] "," v["design"] "," v["vectors"] "," \
              v["mae"] "," v["mred"] "," v["rmse"] "," \
              v["mean_error"] "," v["max_abs"]
        delete v
    }' "$OUT"/l[0-3].log
} >"$OUT/mul_root_opt_accuracy.csv"

echo "MUL root-opt same-vector accuracy completed."

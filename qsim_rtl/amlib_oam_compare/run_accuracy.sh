#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
LOG_DIR="$ROOT/qsim_rtl/amlib_oam_compare/logs_canonical"
TMP=$(mktemp -d /tmp/amlib_oadm_accuracy.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
mkdir -p "$LOG_DIR"

OADM=(
    "$ROOT/rtl/divopt/oadm_lowlevel_plane_direct.v"
    "$ROOT/rtl/divopt/oadm_multilevel_rounding_lut.v"
    "$ROOT/rtl/divopt/oadm_fixed_plane_centered.v"
    "$ROOT/rtl/divopt/oadm_multilevel_plane_direct.v"
    "$ROOT/rtl/divopt/oadm_multilevel_opt.v"
)

for level in 0 1 2 3; do
    mapfile -t oam < <(find "$ROOT/third_party/amlib_oam/L${level}/src" \
        -maxdepth 1 -type f -name '*.v' -print | sort)
    build="$TMP/l${level}"
    verilator --cc --exe --Wno-fatal --top-module amlib_oadm_mul_miter \
        -D"LEVEL${level}" --Mdir "$build" \
        "${oam[@]}" "${OADM[@]}" \
        "$ROOT/qsim_rtl/amlib_oam_compare/amlib_oadm_mul_miter.v" \
        "$ROOT/qsim_rtl/amlib_oam_compare/sim_main.cpp" \
        >"$LOG_DIR/l${level}_build.log" 2>&1
    make -C "$build" -f Vamlib_oadm_mul_miter.mk \
        >>"$LOG_DIR/l${level}_build.log" 2>&1
    set +e
    "$build/Vamlib_oadm_mul_miter" "$level" 200000 \
        >"$LOG_DIR/l${level}.log" 2>&1
    status=$?
    set -e
    if [[ $status -ne 0 ]] && ! rg -q '^METRICS ' "$LOG_DIR/l${level}.log"; then
        exit "$status"
    fi
done

echo "Canonical AM-Lib/OADM same-vector accuracy runs completed."

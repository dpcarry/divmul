#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
TMP=$(mktemp -d /tmp/amlib_common_wrapper.XXXXXX)
trap 'rm -rf "$TMP"' EXIT

for level in 0 1 2 3; do
    mapfile -t rtl < <(find "$ROOT/third_party/amlib_oam/L${level}/src" \
        -maxdepth 1 -type f -name '*.v' -print | sort)
    work="$TMP/work_l${level}"
    vlib "$work" >/dev/null
    vlog -quiet -work "$work" +define+LEVEL_NUM="$level" "${rtl[@]}" \
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
        "$ROOT/rtl/amlib_oam/amlib_oam_fp32_common_wrapper.v" \
        "$ROOT/qsim_rtl/amlib_oam_compare/tb_common_wrapper_equiv.sv" >/dev/null
    vsim -c -quiet -lib "$work" tb_common_wrapper_equiv \
        -do "run -all; quit -f" | rg 'AMLIB_COMMON_WRAPPER_EQUIV'
done

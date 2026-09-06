#!/usr/bin/env bash
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
WORK=$(mktemp -d /tmp/oadm_fixed_div_specialized_rtl.XXXXXX)
trap 'rm -rf "$WORK"' EXIT
mkdir -p "$HERE/results"

vlib "$WORK/work"
vlog -sv -work "$WORK/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/root_opt/oadm_root_opt.v" \
    "$HERE/specialized_rtl.v" "$HERE/tb_rtl_equiv.sv"
vsim -c -lib "$WORK/work" -l "$HERE/results/rtl_equiv.log" \
    tb_rtl_equiv -gCASES="${CASES:-20000}" \
    -do "run -all; quit -f"

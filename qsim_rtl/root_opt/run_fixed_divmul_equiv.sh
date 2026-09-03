#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
WORK=$(mktemp -d /tmp/oadm_fixed_divmul_equiv.XXXXXX)
LOG=${EQUIV_LOG:-$ROOT/qsim_rtl/root_opt/fixed_divmul_rtl_equiv.log}
trap 'rm -rf "$WORK"' EXIT

vlib "$WORK/work"
vlog -sv -work "$WORK/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/divopt/oadm_experiment_variants.v" \
    "$ROOT/rtl/root_opt/oadm_root_opt.v" \
    "$ROOT/rtl/mul_root_opt/oadm_mul_root_opt.v" \
    "$ROOT/rtl/root_opt/oadm_fixed_divmul_root_opt.v" \
    "$ROOT/qsim_rtl/root_opt/tb_fixed_divmul_root_opt.sv"
vsim -c -l "$LOG" -lib "$WORK/work" tb_fixed_divmul_root_opt \
    -gCASES="${CASES:-20000}" -do "run -all; quit -f"

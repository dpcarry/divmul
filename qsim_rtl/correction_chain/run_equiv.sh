#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
WORK=$(mktemp -d /tmp/oadm_correction_chain.XXXXXX)
trap 'rm -rf "$WORK"' EXIT

vlib "$WORK/work"
vlog -work "$WORK/work" \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/csa3.v" \
    "$ROOT/rtl/pipeline_sweep/oadm_pipe_cut.v" \
    "$ROOT/rtl/pipeline_sweep/oadm_dm_pipe.v" \
    "$ROOT/rtl/nopipe/oadm_dm_fixed_nopipe.v" \
    "$ROOT/rtl/baseline/oadm_fixed_divmul_correction_chain.v" \
    "$ROOT/qsim_rtl/correction_chain/tb_correction_chain_equiv.sv"
vsim -c -lib "$WORK/work" tb_correction_chain_equiv \
    -do "run -all; quit -f"

#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
cd "$ROOT/qsim_rtl/l2_divopt"
rm -rf work
vlib work
vlog \
    "$ROOT/rtl/divopt/oadm_multilevel_rounding_lut.v" \
    "$ROOT/rtl/divopt/oadm_fixed_plane_centered.v" \
    "$ROOT/rtl/divopt/oadm_multilevel_plane_direct.v" \
    "$ROOT/rtl/divopt/oadm_multilevel_opt.v" \
    "$ROOT/rtl/divopt/oadm_fixed_l2_div_opt.v" \
    tb_l2_specialized_equiv.sv
vsim -c -do "run -all; quit -f" tb_l2_specialized_equiv | tee rtl_equiv.log

#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
cd "$(dirname "$0")"

rm -rf obj_common
verilator --cc --exe --Wno-fatal --top-module plsad_common_accuracy_top \
    --Mdir obj_common \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/paper_repro/plsad_prior_fp32_paceio.v" \
    "$ROOT/rtl/root_opt/oadm_root_opt.v" \
    plsad_common_accuracy_top.sv common_accuracy_main.cpp
make -C obj_common -f Vplsad_common_accuracy_top.mk
./obj_common/Vplsad_common_accuracy_top

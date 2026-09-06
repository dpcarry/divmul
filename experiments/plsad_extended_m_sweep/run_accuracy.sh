#!/usr/bin/env bash
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
cd "$HERE"
mkdir -p results
rm -rf obj_accuracy
verilator --cc --exe --Wno-fatal \
    --top-module plsad_extended_m_accuracy_top --Mdir obj_accuracy \
    "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/rtl/paper_repro/plsad_prior_fp32_paceio.v" \
    tops.v accuracy_top.sv accuracy_main.cpp
make -C obj_accuracy -f Vplsad_extended_m_accuracy_top.mk
./obj_accuracy/Vplsad_extended_m_accuracy_top

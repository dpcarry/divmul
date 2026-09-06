#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
OUT="$ROOT/qsim_rtl/runtime_drop_sweep"
CELL_LIB=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
POINTS=(r10_s14 r12_s14 r12_s16 r12_s18 r14_s18 r16_s18 r18_s18)

for tag in "${POINTS[@]}"; do
    residual_drop=${tag#r}
    residual_drop=${residual_drop%%_*}
    scale_drop=${tag##*_s}
    top="oadm_runtime_drop_$tag"
    tmp=$(mktemp -d "/tmp/runtime_drop_${tag}.XXXXXX")
    build="$tmp/verilator"
    vectors="$tmp/vectors.mem"
    gate="$ROOT/dc/runtime_drop_sweep/outputs/$tag/$top.nl.v"

    verilator --cc --exe --Wno-fatal --top-module runtime_drop_sweep_top \
        -GRESIDUAL_DROP="$residual_drop" -GSCALE_DROP="$scale_drop" \
        --Mdir "$build" \
        "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
        "$ROOT/rtl/divopt/oadm_experiment_variants.v" \
        "$ROOT/rtl/root_opt/oadm_root_opt.v" \
        "$ROOT/rtl/runtime_drop_sweep/oadm_runtime_drop_sweep.v" \
        "$OUT/runtime_drop_sweep_top.sv" "$OUT/gate_vectors_main.cpp" \
        >"$OUT/${tag}_gate_build.log" 2>&1
    make -C "$build" -j 4 -f Vruntime_drop_sweep_top.mk \
        >>"$OUT/${tag}_gate_build.log" 2>&1
    "$build/Vruntime_drop_sweep_top" >"$vectors"

    sed "0,/module $top (/s//module oadm_runtime_drop_gate (/" \
        "$gate" >"$tmp/gate.v"
    vlib "$tmp/work" >/dev/null
    vlog -work "$tmp/work" "$CELL_LIB" >/dev/null
    vlog -work "$tmp/work" "+define+VECTOR_FILE=\"$vectors\"" \
        "$tmp/gate.v" "$OUT/tb_gate_vectors.sv" >/dev/null
    vsim -c -suppress 3053 -lib "$tmp/work" tb_gate_vectors \
        -do 'run -all; quit -f' | tee "$OUT/${tag}_gate_check.log"
    rm -rf "$tmp"
done


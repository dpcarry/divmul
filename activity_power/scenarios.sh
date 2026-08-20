#!/bin/bash

runtime_netlist="../dc/pipeline_sweep/outputs/runtime/p6/oadm_runtime_p6.nl.v"
runtime_sdf="../dc/pipeline_sweep/outputs/runtime/p6/oadm_runtime_p6.syn.sdf"
runtime_sdc="../dc/pipeline_sweep/outputs/runtime/p6/oadm_runtime_p6.syn.sdc"
runtime_area_report="../dc/pipeline_sweep/outputs/runtime/p6/oadm_runtime_p6.dc.rpt"

fixed_netlist="../dc/pipeline_sweep/outputs/fixed_l4/p6/oadm_fixed_l4_p6.nl.v"
fixed_sdf="../dc/pipeline_sweep/outputs/fixed_l4/p6/oadm_fixed_l4_p6.syn.sdf"
fixed_sdc="../dc/pipeline_sweep/outputs/fixed_l4/p6/oadm_fixed_l4_p6.syn.sdc"
fixed_area_report="../dc/pipeline_sweep/outputs/fixed_l4/p6/oadm_fixed_l4_p6.dc.rpt"

exact_output_root="../dc/exact_baseline/outputs_1p5_holdclean"

scenario_fields() {
    local scenario=$1
    local family mode level kind

    if [[ $scenario =~ ^runtime_(mul|div)_l([0-4])$ ]]; then
        mode=${BASH_REMATCH[1]}
        level=${BASH_REMATCH[2]}
        echo "runtime|$mode|$level|oadm_runtime_p6|$runtime_netlist|$runtime_sdf|$runtime_sdc|$runtime_area_report|1.5|1|1"
    elif [[ $scenario =~ ^fixed_l4_(mul|div)$ ]]; then
        mode=${BASH_REMATCH[1]}
        echo "fixed_l4|$mode|4|oadm_fixed_l4_p6|$fixed_netlist|$fixed_sdf|$fixed_sdc|$fixed_area_report|1.5|0|1"
    elif [[ $scenario == exact_mul ]]; then
        kind=mul
        echo "exact_standalone|mul|exact|exact_fp32_mul_7stage|$exact_output_root/$kind/exact_fp32_${kind}_7stage.nl.v|$exact_output_root/$kind/exact_fp32_${kind}_7stage.syn.sdf|$exact_output_root/$kind/exact_fp32_${kind}_7stage.syn.sdc|$exact_output_root/$kind/exact_fp32_${kind}_7stage.dc.rpt|1.5|0|0"
    elif [[ $scenario == exact_div ]]; then
        kind=div
        echo "exact_standalone|div|exact|exact_fp32_div_7stage|$exact_output_root/$kind/exact_fp32_${kind}_7stage.nl.v|$exact_output_root/$kind/exact_fp32_${kind}_7stage.syn.sdf|$exact_output_root/$kind/exact_fp32_${kind}_7stage.syn.sdc|$exact_output_root/$kind/exact_fp32_${kind}_7stage.dc.rpt|1.5|0|0"
    elif [[ $scenario =~ ^exact_divmul_(mul|div)$ ]]; then
        mode=${BASH_REMATCH[1]}
        kind=divmul
        echo "exact_combined|$mode|exact|exact_fp32_divmul_7stage|$exact_output_root/$kind/exact_fp32_${kind}_7stage.nl.v|$exact_output_root/$kind/exact_fp32_${kind}_7stage.syn.sdf|$exact_output_root/$kind/exact_fp32_${kind}_7stage.syn.sdc|$exact_output_root/$kind/exact_fp32_${kind}_7stage.dc.rpt|1.5|0|1"
    else
        echo "ERROR: unsupported scenario $scenario" >&2
        return 2
    fi
}

all_scenarios() {
    local mode level
    for mode in mul div; do
        for level in 0 1 2 3 4; do
            echo "runtime_${mode}_l${level}"
        done
    done
    echo fixed_l4_mul
    echo fixed_l4_div
    echo exact_mul
    echo exact_div
    echo exact_divmul_mul
    echo exact_divmul_div
}

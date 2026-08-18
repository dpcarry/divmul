#!/bin/bash
set -euo pipefail

scenario=${1:-}
if [[ -z $scenario ]]; then
    echo "Usage: $0 <scenario>" >&2
    exit 2
fi

source ./scenarios.sh
IFS='|' read -r family mode level top netlist sdf sdc area_report period has_level has_mode \
    <<< "$(scenario_fields "$scenario")"

for required in "$netlist" "$sdf" "$sdc" "$area_report"; do
    if [[ ! -f $required ]]; then
        echo "ERROR: missing $required" >&2
        exit 2
    fi
done

mkdir -p vcd logs
rm -rf work
vlib work >/dev/null

library="/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v"
vlog -work work "$library" >/dev/null
vlog -work work "$netlist" >/dev/null

defines=(
    "+define+DUT_MODULE=$top"
    "+define+CLOCK_HALF_PS=$(awk -v p="$period" 'BEGIN {printf "%d", p * 500}')"
    "+define+LEVEL_VALUE=${level/exact/0}"
    "+define+MODE_VALUE=$([[ $mode == div ]] && echo 1 || echo 0)"
    "+define+SDF_FILE=\"$sdf\""
    "+define+VCD_FILE=\"vcd/${scenario}.vcd\""
)
if [[ $has_level == 1 ]]; then
    defines+=("+define+HAS_LEVEL")
fi
if [[ $has_mode == 1 ]]; then
    defines+=("+define+HAS_MODE")
fi

vlog -work work "${defines[@]}" tb_activity_power.v >/dev/null
vsim -c -t ps -voptargs=+acc +notimingchecks -lib work tb_activity_power \
    -do "run -all; quit -f" | tee "logs/${scenario}.sim.log"

grep -q "SDF Backannotation Successfully Completed" "logs/${scenario}.sim.log"
grep -q "PASS: activity captured" "logs/${scenario}.sim.log"
grep -q "Errors: 0" "logs/${scenario}.sim.log"
test -s "vcd/${scenario}.vcd"

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

vcd="vcd/${scenario}.vcd"
if [[ ! -s $vcd ]]; then
    echo "ERROR: missing VCD $vcd; run ./run_sim.sh $scenario first" >&2
    exit 2
fi

mkdir -p reports logs
SCENARIO="$scenario" TOP_LEVEL="$top" \
NETLIST="$netlist" SDC="$sdc" VCD="$vcd" REPORT_DIR="reports" \
    pt_shell -file pt_power.tcl 2>&1 | tee "logs/${scenario}.pt.log"

grep -q "Total Power" "reports/${scenario}.pt.power.rpt"
if rg -q '^Error:|Fatal:' "logs/${scenario}.pt.log"; then
    echo "ERROR: PrimeTime reported an error for $scenario" >&2
    exit 1
fi

# PrimeTime pads report tables with trailing spaces; normalize tracked reports.
sed -i 's/[[:space:]]\+$//' \
    "reports/${scenario}.pt.power.rpt" \
    "reports/${scenario}.pt.power.hier.rpt"

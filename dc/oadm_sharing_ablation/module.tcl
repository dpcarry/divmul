if {![info exists ::env(APPROX_LEVEL)] || ![info exists ::env(CORE_KIND)]} {
    echo "ERROR: APPROX_LEVEL and CORE_KIND are required"
    exit 2
}
set approx_level $::env(APPROX_LEVEL)
set core_kind $::env(CORE_KIND)
if {$approx_level < 0 || $approx_level > 4} {
    echo "ERROR: unsupported APPROX_LEVEL=$approx_level"
    exit 2
}
if {$core_kind != "mul" && $core_kind != "div" && $core_kind != "fused"} {
    echo "ERROR: CORE_KIND must be mul, div, or fused"
    exit 2
}

set top_level "core_${core_kind}_ablation"
set output_dir "./outputs/L${approx_level}/${core_kind}"
file mkdir $output_dir
source -verbose "../common_scripts/common.tcl"

analyze -format verilog [list \
    ../../rtl/csa3.v \
    ../../rtl/fixed/recip_scale_fixed.v \
    ../../rtl/fixed/oadm_core_fixed.v \
    ../../rtl/oadm_sharing_ablation/core_ablation_wrappers.v]
elaborate $top_level -parameters "APPROX_LEVEL=$approx_level"
if {[check_error -v] == 1} { exit 1 }
link
current_design $top_level
check_design

set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_max_fanout 4 $top_level
set_fix_multiple_port_nets -all -buffer_constants
source -verbose "../oadm_dm/timing.tcl"
compile_ultra -no_autoungroup
update_timing

set prefix "core_${core_kind}_l${approx_level}"
set report_file "${output_dir}/${prefix}.dc.rpt"
check_design > $report_file
report_area >> $report_file
report_power -verbose -hier -analysis_effort medium >> $report_file
report_constraint -all_violators -verbose >> $report_file
report_timing -delay max -nworst 1 -max_paths 1 -path full -nosplit \
    > "${output_dir}/${prefix}.setup.rpt"
report_timing -delay min -nworst 1 -max_paths 1 -path full -nosplit \
    > "${output_dir}/${prefix}.hold.rpt"
quit

if {![info exists ::env(APPROX_LEVEL)]} {
    echo "ERROR: APPROX_LEVEL must be 0 through 4"
    exit 2
}
set approx_level $::env(APPROX_LEVEL)
if {$approx_level < 0 || $approx_level > 4} {
    echo "ERROR: unsupported APPROX_LEVEL=$approx_level"
    exit 2
}

set top_level "oadm_dm_eq_l${approx_level}"
set output_dir "./outputs/L${approx_level}"
file mkdir $output_dir
source -verbose "../common_scripts/common.tcl"

analyze -format verilog [list \
    ../../rtl/csa3.v \
    ../../rtl/fixed/recip_scale_fixed.v \
    ../../rtl/oadm_levels_opt/oadm_core_eq1011.v \
    ../../rtl/oadm_levels_opt/oadm_dm_eq1011.v \
    ../../rtl/oadm_levels_opt/${top_level}.v]
elaborate $top_level
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
source -verbose "../common_scripts/namingrules.tcl"
write -hierarchy -format verilog -output "${output_dir}/${top_level}.nl.v"
write_sdf "${output_dir}/${top_level}.syn.sdf"
write_sdc "${output_dir}/${top_level}.syn.sdc" -version 2.1

set report_file "${output_dir}/${top_level}.dc.rpt"
check_design > $report_file
report_area >> $report_file
report_power -verbose -hier -analysis_effort medium >> $report_file
report_constraint -all_violators -verbose >> $report_file
report_timing -path full -delay max -max_paths 20 -nworst 20 >> $report_file
report_timing -delay max -nworst 1 -max_paths 1 -path full -nosplit \
    > "${output_dir}/${top_level}.syn.setup.rpt"
report_timing -delay min -nworst 1 -max_paths 1 -path full -nosplit \
    > "${output_dir}/${top_level}.syn.hold.rpt"
quit

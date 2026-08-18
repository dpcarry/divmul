#########################################
# Fixed-level OADM synthesis, TSMC 65nm
#########################################

if {![info exists ::env(APPROX_LEVEL)]} {
    echo "ERROR: APPROX_LEVEL must be set to an integer from 0 through 4"
    exit 2
}
set approx_level $::env(APPROX_LEVEL)
if {$approx_level < 0 || $approx_level > 4} {
    echo "ERROR: unsupported APPROX_LEVEL=$approx_level"
    exit 2
}

set top_level "oadm_dm_l${approx_level}"
set output_root "outputs"
if {[info exists ::env(OUTPUT_ROOT)]} {
    set output_root $::env(OUTPUT_ROOT)
}
set output_dir "./${output_root}/L${approx_level}"
file mkdir $output_dir

source -verbose "../common_scripts/common.tcl"

set wrapper_file "../../rtl/L${approx_level}/${top_level}.v"
analyze -format verilog [list \
    ../../rtl/csa3.v \
    ../../rtl/sa_scale.v \
    ../../rtl/fixed/recip_lut_fixed.v \
    ../../rtl/fixed/recip_scale_fixed.v \
    ../../rtl/fixed/oadm_core_fixed.v \
    ../../rtl/fixed/oadm_dm_fixed.v \
    $wrapper_file]
elaborate $top_level

if {[check_error -v] == 1} {
    exit 1
}
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
write_sdf -context verilog "${output_dir}/${top_level}.temp.sdf"
write_sdf "${output_dir}/${top_level}.syn.sdf"
write_sdc "${output_dir}/${top_level}.syn.sdc" -version 2.1

set report_file "${output_dir}/${top_level}.dc.rpt"
check_design > $report_file
report_area >> $report_file
report_power -verbose -hier -analysis_effort medium >> $report_file
report_constraint -all_violators -verbose >> $report_file
report_timing -path full -delay max -max_paths 20 -nworst 20 >> $report_file

report_timing -delay max -nworst 1 -max_paths 10000 -path full \
    -nosplit -unique -sort_by slack \
    > "${output_dir}/${top_level}.syn.setup.rpt"
report_timing -delay min -nworst 1 -max_paths 10000 -path full \
    -nosplit -unique -sort_by slack \
    > "${output_dir}/${top_level}.syn.hold.rpt"

quit

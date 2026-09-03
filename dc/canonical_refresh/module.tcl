if {![info exists ::env(TOP_LEVEL)] || ![info exists ::env(RTL_FILES)] \
        || ![info exists ::env(OUTPUT_DIR)]} {
    echo "ERROR: TOP_LEVEL, RTL_FILES, and OUTPUT_DIR are required"
    exit 2
}

set top_level $::env(TOP_LEVEL)
set rtl_files [split $::env(RTL_FILES) "|"]
set output_dir $::env(OUTPUT_DIR)
file mkdir $output_dir
file mkdir "${output_dir}/work"

source -verbose "../common_scripts/common.tcl"
define_design_lib WORK -path "${output_dir}/work"

analyze -format verilog $rtl_files
if {[check_error -v] == 1} { exit 1 }
elaborate $top_level
if {[check_error -v] == 1} { exit 1 }
link
current_design $top_level
check_design

# Canonical local comparison boundary: input constraints only, with no
# design-level fanout limit that could selectively reshape internal logic.
set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_fix_multiple_port_nets -all -buffer_constants

set period_ns 10.0
if {[info exists ::env(PERIOD_NS)]} {
    set period_ns $::env(PERIOD_NS)
}
create_clock -name vclk -period $period_ns
set_clock_uncertainty 0.0 [get_clocks vclk]
set data_inputs [all_inputs]
set_driving_cell -lib_cell INVD0 $data_inputs
set_input_delay 0.02 $data_inputs -clock vclk
set_output_delay 0.02 [all_outputs] -clock vclk
set_load 0.004 [all_outputs]

ungroup -all -flatten
set_max_area 0
compile_ultra -area_high_effort_script
optimize_netlist -area
update_timing

source -verbose "../common_scripts/namingrules.tcl"
write -hierarchy -format verilog -output "${output_dir}/${top_level}.nl.v"
write_sdf "${output_dir}/${top_level}.syn.sdf"
write_sdc "${output_dir}/${top_level}.syn.sdc" -version 2.1

check_design > "${output_dir}/${top_level}.dc.rpt"
report_area >> "${output_dir}/${top_level}.dc.rpt"
report_area -hierarchy >> "${output_dir}/${top_level}.dc.rpt"
report_power -verbose -hier -analysis_effort medium \
    >> "${output_dir}/${top_level}.dc.rpt"
report_constraint -all_violators -verbose \
    >> "${output_dir}/${top_level}.dc.rpt"
report_timing -delay max -path full -nworst 10 -max_paths 10 -nosplit \
    > "${output_dir}/${top_level}.dc.critical_path.rpt"
quit

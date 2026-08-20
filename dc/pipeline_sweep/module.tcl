if {![info exists ::env(TOP_LEVEL)] || ![info exists ::env(OUTPUT_DIR)]} {
    echo "ERROR: TOP_LEVEL and OUTPUT_DIR are required"
    exit 2
}
set top_level $::env(TOP_LEVEL)
set output_dir $::env(OUTPUT_DIR)
file mkdir $output_dir

source -verbose "../common_scripts/common.tcl"
analyze -format verilog [list \
    ../../rtl/csa3.v \
    ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
    ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
    ../../rtl/pipeline_sweep/oadm_dm_fixed_pipe.v \
    ../../rtl/pipeline_sweep/pipeline_sweep_wrappers.v]
elaborate $top_level
if {[check_error -v] == 1} { exit 1 }
link
current_design $top_level
check_design

set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_max_fanout 4 $top_level
set_fix_multiple_port_nets -all -buffer_constants
source -verbose "./timing.tcl"

compile_ultra -no_autoungroup
update_timing

source -verbose "../common_scripts/namingrules.tcl"

# Runtime P5--P7 capture level[1:0] directly at cut0. DC's automatic hold fix
# leaves these three paths about 1 ps short in PT, so delay only those capture
# branches without slowing the level-dependent correction/coefficient logic.
if {[regexp {^oadm_runtime_p[567]$} $top_level]} {
    set level_capture_pins [get_pins -quiet [list \
        impl/cut0/gen_register_data_reg_reg_17_/D \
        impl/cut0/gen_register_data_reg_reg_18_/D]]
    if {[sizeof_collection $level_capture_pins] > 0} {
        insert_buffer $level_capture_pins BUFFD0
        update_timing
    }
}
write -hierarchy -format verilog -output "${output_dir}/${top_level}.nl.v"
write_sdf "${output_dir}/${top_level}.syn.sdf"
write_sdc "${output_dir}/${top_level}.syn.sdc" -version 2.1

set report_file "${output_dir}/${top_level}.dc.rpt"
check_design > $report_file
report_area >> $report_file
report_power -verbose -hier -analysis_effort medium >> $report_file
report_constraint -all_violators -verbose >> $report_file
report_timing -delay max -nworst 1 -max_paths 20 -path full -nosplit \
    > "${output_dir}/${top_level}.setup.rpt"
report_timing -delay min -nworst 1 -max_paths 20 -path full -nosplit \
    > "${output_dir}/${top_level}.hold.rpt"
quit

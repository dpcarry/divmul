if {![info exists ::env(TOP_LEVEL)]} {
    echo "ERROR: TOP_LEVEL is required"
    exit 2
}
set top_level $::env(TOP_LEVEL)
set output_root "outputs_fair10_area"
if {[info exists ::env(OUTPUT_ROOT)]} {
    set output_root $::env(OUTPUT_ROOT)
}
set output_dir "${output_root}/${top_level}"
file mkdir $output_dir

source -verbose "../common_scripts/common.tcl"
analyze -format verilog [list \
    ../../rtl/csa3.v \
    ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
    ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
    ../../rtl/nopipe/oadm_dm_nopipe.v \
    ../../rtl/nopipe/oadm_dm_fixed_nopipe.v \
    ../../rtl/divopt/oadm_multilevel_rounding_lut.v \
    ../../rtl/divopt/oadm_lowlevel_plane_direct.v \
    ../../rtl/divopt/oadm_multilevel_plane_direct.v \
    ../../rtl/divopt/oadm_multilevel_opt.v]
elaborate $top_level
if {[check_error -v] == 1} { exit 1 }
link
current_design $top_level
check_design

set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_fix_multiple_port_nets -all -buffer_constants
source -verbose "./timing.tcl"

# Flatten before mapping so fixed level/mode constants propagate globally.
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
report_power -verbose -hier -analysis_effort medium >> "${output_dir}/${top_level}.dc.rpt"
report_constraint -all_violators -verbose >> "${output_dir}/${top_level}.dc.rpt"
report_timing -delay max -nworst 1 -max_paths 20 -path full -nosplit \
    > "${output_dir}/${top_level}.setup.rpt"
quit

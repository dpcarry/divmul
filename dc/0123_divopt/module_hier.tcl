if {![info exists ::env(TOP_LEVEL)]} {
    echo "ERROR: TOP_LEVEL is required"
    exit 2
}
set top_level $::env(TOP_LEVEL)
set output_root "outputs_hier"
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
    ../../rtl/nopipe/oadm_dm_mode_nopipe.v \
    ../../rtl/divopt/oadm_rounding_error_lut.v \
    ../../rtl/divopt/oadm_l3_plane_direct.v \
    ../../rtl/divopt/oadm_l3_plane_factored.v \
    ../../rtl/divopt/oadm_fixed_l3_div_opt.v]
elaborate $top_level
if {[check_error -v] == 1} { exit 1 }
link
current_design $top_level

set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_fix_multiple_port_nets -all -buffer_constants
source -verbose "./timing.tcl"

compile_ultra -no_autoungroup
update_timing
report_area > "${output_dir}/${top_level}.hier.rpt"
report_area -hierarchy >> "${output_dir}/${top_level}.hier.rpt"
report_power -verbose -hier -analysis_effort medium \
    >> "${output_dir}/${top_level}.hier.rpt"
quit

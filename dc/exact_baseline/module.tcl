##############################################
# Seven-stage exact FP32 DesignWare baselines
##############################################

if {![info exists ::env(BASELINE_KIND)]} {
    echo "ERROR: BASELINE_KIND must be mul, div, or divmul"
    exit 2
}
set baseline_kind $::env(BASELINE_KIND)
if {$baseline_kind != "mul" && $baseline_kind != "div" &&
    $baseline_kind != "divmul"} {
    echo "ERROR: BASELINE_KIND must be mul, div, or divmul"
    exit 2
}

set top_level "exact_fp32_${baseline_kind}_7stage"
set output_root "outputs"
if {[info exists ::env(OUTPUT_ROOT)]} {
    set output_root $::env(OUTPUT_ROOT)
}
set output_dir "./${output_root}/${baseline_kind}"
file mkdir $output_dir

source -verbose "../common_scripts/common.tcl"
analyze -format verilog "../../rtl/exact/exact_fp32_7stage.v"
elaborate $top_level

if {[check_error -v] == 1} {
    exit 1
}
link
current_design $top_level
check_design

# Preserve the explicit minimum-size input buffers used to make the standalone
# pre-layout baseline hold-clean.  Their area and power remain in all reports.
set hold_fix_cells [get_cells -hierarchical -quiet *holdfix*]
if {[sizeof_collection $hold_fix_cells] > 0} {
    set_dont_touch $hold_fix_cells
}

set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_max_fanout 4 $top_level
set_fix_multiple_port_nets -all -buffer_constants
source -verbose "../oadm_dm/timing.tcl"

compile_ultra -no_autoungroup
update_timing

set report_prefix $top_level
write -hierarchy -format verilog \
    -output "${output_dir}/${report_prefix}.nl.v"
write_sdf "${output_dir}/${report_prefix}.syn.sdf"
write_sdc "${output_dir}/${report_prefix}.syn.sdc" -version 2.1

set report_file "${output_dir}/${report_prefix}.dc.rpt"
check_design > $report_file
report_area >> $report_file
report_power -verbose -hier -analysis_effort medium >> $report_file
report_constraint -all_violators -verbose >> $report_file
report_timing -path full -delay max -max_paths 20 -nworst 20 >> $report_file

report_timing -delay max -nworst 1 -max_paths 10000 -path full \
    -nosplit -unique -sort_by slack \
    > "${output_dir}/${report_prefix}.syn.setup.rpt"
report_timing -delay min -nworst 1 -max_paths 10000 -path full \
    -nosplit -unique -sort_by slack \
    > "${output_dir}/${report_prefix}.syn.hold.rpt"

quit

if {![info exists ::env(BASELINE_KIND)]} {
    echo "ERROR: BASELINE_KIND must be mul, div, or divmul"
    exit 2
}
set baseline_kind $::env(BASELINE_KIND)
if {$baseline_kind != "mul" && $baseline_kind != "div" && $baseline_kind != "divmul"} {
    echo "ERROR: BASELINE_KIND must be mul, div, or divmul"
    exit 2
}

set top_level "exact_fp32_${baseline_kind}_nopipe"
set output_root "outputs_10ns"
if {[info exists ::env(OUTPUT_ROOT)]} {
    set output_root $::env(OUTPUT_ROOT)
}
set output_dir "./${output_root}/${baseline_kind}"
file mkdir $output_dir

source -verbose "../common_scripts/common.tcl"
analyze -format verilog "../../rtl/exact/exact_fp32_nopipe.v"
elaborate $top_level
if {[check_error -v] == 1} { exit 1 }
link
current_design $top_level
check_design

set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_max_fanout 4 $top_level
set_fix_multiple_port_nets -all -buffer_constants
source -verbose "./constraints.tcl"

# Match the full OADM DIV+MUL mapping policy so the resulting netlists are a
# symmetric PPA comparison: flatten fixed wrappers, then use area-high effort.
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
report_power -analysis_effort medium >> "${output_dir}/${top_level}.dc.rpt"
report_constraint -all_violators -verbose >> "${output_dir}/${top_level}.dc.rpt"
report_timing -delay max -path full -nworst 10 -max_paths 10 -nosplit \
    > "${output_dir}/${top_level}.dc.critical_path.rpt"

quit

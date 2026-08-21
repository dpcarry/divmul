if {![info exists ::env(PACE_LEVEL)]} {
    echo "ERROR: PACE_LEVEL must be 1, 2, 3, or 4"
    exit 2
}
set level $::env(PACE_LEVEL)
if {$level < 1 || $level > 4} {
    echo "ERROR: invalid PACE_LEVEL=$level"
    exit 2
}

set top_level "pace_fp32_l${level}"
set output_root "outputs"
if {[info exists ::env(PACE_OUTPUT_ROOT)]} {
    set output_root $::env(PACE_OUTPUT_ROOT)
}
set output_dir "./${output_root}/L${level}"
file mkdir $output_dir

source -verbose "../common_scripts/common.tcl"

set mantissa_file "Mantissa_Div_L${level}.v"
if {$level == 4} {
    set mantissa_file "Mantissa_Div_L4_Kec.v"
}
analyze -format verilog [list \
    ../../PACE/common/CSA3_2_Array.v \
    ../../PACE/common/FP_DIV_WRAPPER_32.v \
    "../../PACE/L${level}/${mantissa_file}" \
    "../../rtl/pace_original/${top_level}.v"]
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
source -verbose "./constraints.tcl"

# Preserve the original combinational architecture: no retiming or registers.
compile_ultra -no_autoungroup
update_timing

source -verbose "../common_scripts/namingrules.tcl"
write -hierarchy -format verilog -output "${output_dir}/${top_level}.nl.v"
write_sdf "${output_dir}/${top_level}.syn.sdf"
write_sdc "${output_dir}/${top_level}.syn.sdc" -version 2.1

set report_file "${output_dir}/${top_level}.dc.rpt"
check_design > $report_file
report_area >> $report_file
report_power -analysis_effort medium >> $report_file
report_constraint -all_violators -verbose >> $report_file
report_timing -delay max -path full -nworst 10 -max_paths 10 -nosplit \
    > "${output_dir}/${top_level}.dc.critical_path.rpt"

quit

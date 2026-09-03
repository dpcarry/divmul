if {![info exists ::env(TOP_LEVEL)]} {
    echo "ERROR: TOP_LEVEL must name a paper reconstruction top"
    exit 2
}
set top_level $::env(TOP_LEVEL)
set output_root "outputs_10ns"
if {[info exists ::env(OUTPUT_ROOT)]} {
    set output_root $::env(OUTPUT_ROOT)
}
file mkdir $output_root

source -verbose "../common_scripts/common.tcl"
analyze -format verilog ../../rtl/paper_repro/paper_fp32_dividers.v
elaborate $top_level
if {[check_error -v] == 1} { exit 1 }
link
current_design $top_level
set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_max_fanout 4 $top_level
set_fix_multiple_port_nets -all -buffer_constants
create_clock -name vclk -period 10
set_input_delay 0.02 [all_inputs] -clock vclk
set_output_delay 0.02 [all_outputs] -clock vclk
set_load 0.004 [all_outputs]
compile_ultra -no_autoungroup
update_timing
write -hierarchy -format verilog -output "$output_root/$top_level.nl.v"
write_sdc "$output_root/$top_level.syn.sdc" -version 2.1
report_area > "$output_root/$top_level.dc.rpt"
report_power -analysis_effort medium >> "$output_root/$top_level.dc.rpt"
report_timing -delay max -path full -nworst 10 -max_paths 10 -nosplit \
    > "$output_root/$top_level.dc.critical_path.rpt"
quit

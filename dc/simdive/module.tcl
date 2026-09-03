set top_level simdive_sisd16_recon
set output_dir outputs_10ns
file mkdir $output_dir
source -verbose "../common_scripts/common.tcl"
analyze -format verilog ../../rtl/simdive/simdive_sisd16_recon.v
elaborate $top_level
link
set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
create_clock -name vclk -period 10
set_input_delay 0.02 [all_inputs] -clock vclk
set_output_delay 0.02 [all_outputs] -clock vclk
set_load 0.004 [all_outputs]
ungroup -all -flatten
compile
write -hierarchy -format verilog -output "$output_dir/$top_level.nl.v"
write_sdc "$output_dir/$top_level.syn.sdc"
report_area > "$output_dir/$top_level.dc.rpt"
report_timing -delay max > "$output_dir/$top_level.timing.rpt"
quit

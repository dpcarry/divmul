set top_level simdive_original_fp32_wrapper
set output_dir outputs_fair_10ns
file mkdir $output_dir
source -verbose "../common_scripts/common.tcl"

set simdive_dir "../../LeAp_SIMDive, RAPID/SIMDive Version/SIMD_32_16_8/src"
analyze -format verilog [list \
    "$simdive_dir/adders_bit_select_2_4_6_8.v" \
    "$simdive_dir/adders_bit_select_3.v" \
    "$simdive_dir/adders_bit_select_5_7.v" \
    "$simdive_dir/add_4_bit.v" \
    "$simdive_dir/add_8_bit.v" \
    "$simdive_dir/bit_inverse.v" \
    "$simdive_dir/ec_mul_div.v" \
    "$simdive_dir/ec_mul_div_alternate.v" \
    "$simdive_dir/lod.v" \
    "$simdive_dir/shifter.v" \
    "../../rtl/simdive_original_compat/shifter_out_mul_div_compat.v" \
    "$simdive_dir/top_module.v" \
    "../../rtl/simdive_original/simdive_original_fp32_wrapper.v"]
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
write -hierarchy -format verilog -output "$output_dir/$top_level.nl.v"
write_sdc "$output_dir/$top_level.syn.sdc" -version 2.1
report_area > "$output_dir/$top_level.dc.rpt"
report_timing -delay max -path full -nworst 10 -max_paths 10 -nosplit > "$output_dir/$top_level.dc.critical_path.rpt"
quit

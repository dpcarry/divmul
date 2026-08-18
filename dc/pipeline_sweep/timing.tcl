set fo4 0.02
if {![info exists ::env(CLOCK_PERIOD)]} {
    echo "ERROR: CLOCK_PERIOD is required"
    exit 2
}
set clk_period $::env(CLOCK_PERIOD)
set clk_name clk
create_clock -name $clk_name -period $clk_period [get_ports clk]
set_clock_uncertainty 0.0 [get_clocks $clk_name]
set_clock_transition [expr 3*$fo4] [get_clocks $clk_name]
set_drive 0 [get_ports clk]
set_dont_touch_network [get_ports clk]
set_ideal_network [get_ports clk]
set_fix_hold [get_clocks $clk_name]

set data_inputs [remove_from_collection [all_inputs] [get_ports clk]]
set_driving_cell -lib_cell INVD0 $data_inputs
set_input_delay $fo4 $data_inputs -clock $clk_name
set_output_delay $fo4 [all_outputs] -clock $clk_name
set_load 0.004 [all_outputs]

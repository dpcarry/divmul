# Match the combinational PACE and OADM DIV-only comparison conditions.
set exact_period 10.0
if {[info exists ::env(EXACT_PERIOD_NS)]} {
    set exact_period $::env(EXACT_PERIOD_NS)
}

create_clock -name vclk -period $exact_period
set_clock_uncertainty 0.0 [get_clocks vclk]
set data_inputs [all_inputs]
set_driving_cell -lib_cell INVD0 $data_inputs
set_input_delay 0.02 $data_inputs -clock vclk
set_output_delay 0.02 [all_outputs] -clock vclk
set_load 0.004 [all_outputs]

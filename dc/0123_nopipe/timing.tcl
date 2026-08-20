set clock_period 7.0
create_clock -name vclk -period $clock_period
set_input_delay 0 -clock vclk [all_inputs]
set_output_delay 0 -clock vclk [all_outputs]
set_max_delay $clock_period -from [all_inputs] -to [all_outputs]

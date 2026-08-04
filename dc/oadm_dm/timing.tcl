######################################################################
## Timing setup for logic synthesis
## 2024 Paul Huang
######################################################################

# FO4 delay of the technology in nanosecond (used for margins below)
set fo4 0.02

# Synthesize with 25% implementation guardband. APR/signoff still uses the
# published 2 ns clock, but this prevents DC from reclaiming every setup margin.
set clk_period 1.5

# Used as setup/hold check pessimism margin, please adjust as needed
# The pipelined block uses a real clock and accepts one operation per cycle.
set clk_uncertainty 0.0
set clk_transition  [expr 3*$fo4]

# Pessimistic setting for hold time, please adjust as needed
set typical_input_delay  [expr 1*$fo4]
set typical_output_delay [expr 1*$fo4]

set typical_wire_load 0.002

# Create real clock if clock port is found
set clk_name "clk"
set clk_port "clk"
set rst_name "rstn"
set rst_port "rstn"

# If no waveform is specified, 50% duty cycle is assumed
if {[sizeof_collection [get_ports $clk_port]] > 0} {
  create_clock -name $clk_name -period $clk_period [get_ports $clk_port]
  set_drive 0 [get_ports $clk_port]
}

# Create virtual clock if clock port is not found
if {[sizeof_collection [get_ports $clk_port]] == 0} {

  set clk_name vclk
  create_clock -period $clk_period -name vclk
}

# Set clock uncertainty
set_clock_uncertainty $clk_uncertainty [get_clocks $clk_name]

# Set clock transition
if {[sizeof_collection [get_ports $clk_port]] > 0} {
  set_clock_transition $clk_transition [get_clocks $clk_name]
}

# Fix minimum-delay paths for both real and virtual clocks.
set_fix_hold [get_clocks $clk_name]

# Configure the clock network
if {[sizeof_collection [get_ports $clk_port]] > 0} {
  set_dont_touch_network $clk_port
  set_ideal_network $clk_port
}
# set_dont_touch_network $rst_port
# set_ideal_network $rst_port

# Set delays on data ports only; the clock is constrained by create_clock.
set data_inputs [all_inputs]
if {[sizeof_collection [get_ports $clk_port]] > 0} {
  set data_inputs [remove_from_collection $data_inputs [get_ports $clk_port]]
}
if {[sizeof_collection $data_inputs] > 0} {
  set_driving_cell -lib_cell INVD0 $data_inputs
  set_input_delay $typical_input_delay $data_inputs -clock $clk_name
}
set_output_delay $typical_output_delay [all_outputs] -clock $clk_name

# Set loading of outputs
set_load 0.004 [all_outputs]

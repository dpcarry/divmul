######################################################################
## Timing setup for logic synthesis
## 2024 Paul Huang
######################################################################

# FO4 delay of the technology in nanosecond (used for margins below)
set fo4 0.02

# Target clock period (ns)  ---- REQUIRED: 2ns
set clk_period 2

# Used as setup/hold check pessimism margin, please adjust as needed
set clk_uncertainty [expr 5*$fo4]
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

# Configure the clock network
if {[sizeof_collection [get_ports $clk_port]] > 0} {
  set_fix_hold [all_clocks]
  set_dont_touch_network $clk_port
  set_ideal_network $clk_port
}
# set_dont_touch_network $rst_port
# set_ideal_network $rst_port

# Set delays: Input, Output
set_driving_cell -lib_cell INVD0 [all_inputs]
set_input_delay $typical_input_delay [all_inputs] -clock $clk_name
if {[sizeof_collection [get_ports $clk_port]] > 0} {
  remove_input_delay -clock $clk_name [find port $clk_port]
}
set_output_delay $typical_output_delay [all_outputs] -clock $clk_name

# Set loading of outputs
set_load 0.004 [all_outputs]

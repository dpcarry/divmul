###################################################################### 
## Timing setup for prime time
## 2024 Paul Huang
###################################################################### 

# Setting variables
# FO4 delay of the technology in nanosecond
set fo4 0.02
set clk_period 2

# Used as setup/hold check pessimism margin, please adjust as needed
set clk_uncertainty [expr 5*$fo4] 
set clk_transition [expr 3*$fo4]

# Pessimistic setting for hold time, please adjust as needed 
set typical_input_delay [expr 1*$fo4]
set typical_output_delay [expr 1*$fo4]

set typical_wire_load 0.002

# Create real clock if clock port is found
set clk_name "clk"
set clk_port "clk"
set rst_name "rst_n"
set rst_port "rst_n"
set clk_ports [get_ports -quiet $clk_port]
set rst_ports [get_ports -quiet $rst_port]

# If no waveform is specified, 50% duty cycle is assumed
if {[sizeof_collection $clk_ports] > 0} {
  create_clock -name $clk_name -period $clk_period $clk_ports
  #set_drive 0 [get_clocks $clk_name] 
}


if {[sizeof_collection $clk_ports] == 0} {

    # Create a clock object and define its waveform in the current design
    # Note: source_objects are the pin or port where the clock waveform is applied to the design
    #       If no waveform is specified, 50% duty cycle is assumed
    set clk_name vclk
    create_clock -period $clk_period -name vclk

    # Set the rise_drive or fall_drive attributes to the specified resistance values on the specified input and inour ports
    # Note: For heavily loaded driving ports, such as clock lines, keep the drive strength seeeting 0 so that DC does not buffer the net
    #set_drive 0 [get_clocks $clk_name] 
}

# Set clock uncertainty
set_clock_uncertainty $clk_uncertainty [get_clocks $clk_name]

# Propagated clock used for gated clocks only
if {[sizeof_collection $clk_ports] > 0} {
  set_clock_transition $clk_transition [get_clocks $clk_name]
}

# Set delays: Input, Output
set data_inputs [all_inputs]
if {[sizeof_collection $clk_ports] > 0} {
  set data_inputs [remove_from_collection $data_inputs $clk_ports]
}
if {[sizeof_collection $rst_ports] > 0} {
  set data_inputs [remove_from_collection $data_inputs $rst_ports]
  set_false_path -from $rst_ports
}
if {[sizeof_collection $data_inputs] > 0} {
  set_input_delay $typical_input_delay $data_inputs -clock $clk_name
}
if {[sizeof_collection [all_outputs]] > 0} {
  set_output_delay $typical_output_delay [all_outputs] -clock $clk_name
}

# Set real clocks to be propagated clocks, i.e., have clock buffer delays.
if {[sizeof_collection $clk_ports] > 0} {
  set_propagated_clock [all_clocks]
}

# Set loading of outputs 
if {[sizeof_collection [all_outputs]] > 0} {
  set_load 0.004 [all_outputs]
}

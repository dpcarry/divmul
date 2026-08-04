# Preserve the published 2 ns pipeline clock while reserving physical
# implementation margin for Innovus-to-PrimeTime correlation.
source ../../dc/oadm_dm/oadm_dm.syn.mod.sdc
# Override the tighter synthesis clock with the actual implementation target.
create_clock -name clk -period 2.0 [get_ports clk]
set_clock_uncertainty 0.08 [get_clocks clk]

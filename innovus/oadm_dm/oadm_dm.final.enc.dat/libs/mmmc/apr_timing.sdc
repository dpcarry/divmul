


# Preserve the published 2 ns interface constraint while reserving physical
# implementation margin for Innovus-to-PrimeTime correlation.
source ${::IMEX::libVar}/mmmc/oadm_dm.syn.mod.sdc
set_clock_uncertainty 0.08 [get_clocks vclk]

#########################################
# Fast OADM elaboration/constraint check
#########################################

set top_level oadm_dm

source -verbose "../common_scripts/common.tcl"

analyze -format verilog {../../rtl/csa3.v ../../rtl/sa_scale.v ../../rtl/recip_lut.v ../../rtl/oadm_core.v ../../rtl/oadm_dm.v}
elaborate $top_level

link
current_design $top_level
check_design

source -verbose "./timing.tcl"
check_timing

quit

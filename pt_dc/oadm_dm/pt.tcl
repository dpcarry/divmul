set sh_enable_page_mode false
set power_enable_analysis true

#========================
# Files / paths
#========================
set top_level oadm_dm

set search_path [list "." \
  "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
  "/home/cad/installs/synopsys/syn/O-2018.06-SP5-1/libraries/syn" \
]

set link_path [list "*" "tcbn65gplustc_ccs.db"]

read_db [list "tcbn65gplustc_ccs.db"]

set svr_enable_vpp true
read_verilog "../../dc/$top_level/$top_level.nl.v"
link_design $top_level

#========================
# Timing constraints
#========================
source ./timing.tcl

# (Optional sanity)
check_timing

#========================
# Reports
#========================

# Critical path (setup worst path)
report_timing -significant_digits 4 -delay_type max -nworst 1 -path full \
  > "${top_level}.pt.critical_path.rpt"

# PrimeTime reports area through QoR; report_reference adds cell-count detail.
report_qor > "${top_level}.pt.area.rpt"
report_reference >> "${top_level}.pt.area.rpt"

#========================
# Power
#========================
set power_analysis_mode time_based

read_vcd "../../qsim_dc/tb_oadm_divmul/oadm_dm_dc.vcd" -strip_path "tb_oadm_divmul/dut"

update_power

report_power -significant_digits 4 > "${top_level}.pt.power.rpt"
report_power -hierarchy -significant_digits 4 > "${top_level}.pt.power.hier.rpt"

quit

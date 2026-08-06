set sh_enable_page_mode false
set power_enable_analysis true

#========================
# Files / paths
#========================
set top_level oadm_dm
set clk_period_ns 2.0

set search_path [list "." \
  "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
  "/home/cad/installs/synopsys/syn/O-2018.06-SP5-1/libraries/syn" \
]

set link_path [list "*" "tcbn65gplustc_ccs.db"]

read_db [list "tcbn65gplustc_ccs.db"]

set svr_enable_vpp true
read_verilog "../../innovus/$top_level/$top_level.phy.v"
link_design $top_level

#========================
# Timing constraints
#========================
source ./timing.tcl
read_parasitics -format spef "../../innovus/$top_level/$top_level.spef"
update_timing

# (Optional sanity)
check_timing > "${top_level}.pt.check_timing.rpt"
report_qor > "${top_level}.pt.qor.rpt"

#========================
# Reports
#========================

# Setup and hold worst paths
report_timing -significant_digits 4 -delay_type max -nworst 1 -path full \
  -slack_lesser_than 1000 \
  > "${top_level}.pt.critical_path.rpt"
report_timing -significant_digits 4 -delay_type max -nworst 10 -path full \
  -slack_lesser_than 1000 \
  > "${top_level}.pt.setup.rpt"
report_timing -significant_digits 4 -delay_type min -nworst 10 -path full \
  -slack_lesser_than 1000 \
  > "${top_level}.pt.hold.rpt"
report_constraint -all_violators -max_delay > "${top_level}.pt.setup.violations.rpt"
report_constraint -all_violators -min_delay > "${top_level}.pt.hold.violations.rpt"

# PrimeTime reports area through QoR; report_reference adds cell-count detail.
report_qor > "${top_level}.pt.area.rpt"
report_reference >> "${top_level}.pt.area.rpt"

#========================
# Power
#========================
set power_analysis_mode time_based

read_vcd "../../qsim_apr/tb_oadm_divmul/oadm_dm_apr.vcd" -strip_path "tb_oadm_divmul/dut"
report_switching_activity -list_not_annotated > "${top_level}.pt.saif_coverage.rpt"

update_power

report_power -significant_digits 4 > "${top_level}.pt.power.rpt"
report_power -hierarchy -significant_digits 4 > "${top_level}.pt.power.hier.rpt"

# Estimate energy per cycle from average power and clock period.
set total_power_w ""
set pf [open "${top_level}.pt.power.rpt" r]
while {[gets $pf line] >= 0} {
  if {[regexp {^\s*Total Power\s*=\s*([0-9eE\+\-\.]+)} $line -> pwr]} {
    set total_power_w $pwr
    break
  }
}
close $pf

set ef [open "${top_level}.pt.energy_per_cycle.rpt" w]
puts $ef "PrimeTime APR Energy Estimate"
puts $ef "Design            : $top_level"
puts $ef "Clock Period (ns) : $clk_period_ns"
if {$total_power_w eq ""} {
  puts $ef "Total Power (W)   : NOT_FOUND"
  puts $ef "Energy/Cycle      : NOT_COMPUTED"
} else {
  set energy_j [expr {$total_power_w * $clk_period_ns * 1.0e-9}]
  set energy_pj [expr {$energy_j * 1.0e12}]
  puts $ef "Total Power (W)   : $total_power_w"
  puts $ef [format "Energy/Cycle (J) : %.6e" $energy_j]
  puts $ef [format "Energy/Cycle (pJ): %.6f" $energy_pj]
}
close $ef

quit

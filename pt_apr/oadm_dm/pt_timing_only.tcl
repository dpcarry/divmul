set sh_enable_page_mode false

set top_level oadm_dm
set search_path [list "." \
  "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
  "/home/cad/installs/synopsys/syn/O-2018.06-SP5-1/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]

read_db [list "tcbn65gplustc_ccs.db"]
set svr_enable_vpp true
read_verilog "../../innovus/$top_level/$top_level.phy.v"
link_design $top_level
source ./timing.tcl
read_parasitics -format spef "../../innovus/$top_level/$top_level.spef"
update_timing

check_timing > "${top_level}.pt.check_timing.rpt"
report_qor > "${top_level}.pt.qor.rpt"
report_timing -significant_digits 6 -delay_type max -nworst 10 -path full \
  -slack_lesser_than 1000 \
  > "${top_level}.pt.setup.rpt"
report_timing -significant_digits 6 -delay_type min -nworst 10 -path full \
  -slack_lesser_than 1000 \
  > "${top_level}.pt.hold.rpt"
report_constraint -all_violators -max_delay > "${top_level}.pt.setup.violations.rpt"
report_constraint -all_violators -min_delay > "${top_level}.pt.hold.violations.rpt"
quit

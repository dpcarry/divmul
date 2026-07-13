set sh_enable_page_mode false
set power_enable_analysis false

set top_level oadm_dm

set search_path [list "." \
  "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
  "/home/cad/installs/synopsys/syn/O-2018.06-SP5-1/libraries/syn" \
]

set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db [list "tcbn65gplustc_ccs.db"]
set svr_enable_vpp true

proc load_design_and_constraints {} {
  global top_level

  read_verilog "../../dc/$top_level/$top_level.nl.v"
  link_design $top_level
  source ./timing.tcl
}

proc report_mode_timing {mode_value mode_name} {
  global top_level

  load_design_and_constraints
  check_timing > "${top_level}.pt.${mode_name}.check_timing.rpt"
  set_case_analysis $mode_value [get_ports divide_mode]
  update_timing

  report_timing -significant_digits 4 -delay_type max -nworst 1 -path full \
    > "${top_level}.pt.${mode_name}.critical_path.rpt"
  report_constraint -all_violators -max_delay \
    > "${top_level}.pt.${mode_name}.setup.violations.rpt"

  remove_design -all
}

report_mode_timing 0 "mul"
report_mode_timing 1 "div"

quit

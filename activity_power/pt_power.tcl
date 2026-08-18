set sh_enable_page_mode false
set power_enable_analysis true

foreach required_env {SCENARIO TOP_LEVEL NETLIST SDC VCD REPORT_DIR} {
    if {![info exists ::env($required_env)]} {
        puts "ERROR: $required_env is required"
        exit 2
    }
}

set scenario $::env(SCENARIO)
set top_level $::env(TOP_LEVEL)
set report_dir $::env(REPORT_DIR)
file mkdir $report_dir

set search_path [list "." \
    "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
    "/home/cad/installs/synopsys/syn/O-2018.06-SP5-1/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db [list "tcbn65gplustc_ccs.db"]

set svr_enable_vpp true
read_verilog $::env(NETLIST)
link_design $top_level
read_sdc $::env(SDC)

puts "ACTIVITY_SOURCE: $::env(VCD)"
read_vcd -strip_path tb_activity_power/dut $::env(VCD)
update_power

report_power -significant_digits 6 \
    > "${report_dir}/${scenario}.pt.power.rpt"
report_power -hierarchy -significant_digits 6 \
    > "${report_dir}/${scenario}.pt.power.hier.rpt"

quit

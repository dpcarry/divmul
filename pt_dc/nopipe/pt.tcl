set sh_enable_page_mode false
set power_enable_analysis true
set top_level oadm_dm_nopipe
set dc_dir ../../dc/nopipe/outputs
set report_dir reports
file mkdir $report_dir

set search_path [list "." \
    "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
    "/home/cad/installs/synopsys/syn/O-2018.06-SP5-1/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db [list "tcbn65gplustc_ccs.db"]

set svr_enable_vpp true
read_verilog "${dc_dir}/${top_level}.nl.v"
link_design $top_level
read_sdc "${dc_dir}/${top_level}.syn.sdc"
update_timing

check_timing > "${report_dir}/${top_level}.pt.check_timing.rpt"
report_timing -significant_digits 4 -delay_type max -nworst 10 \
    -slack_lesser_than 1000 -path full \
    > "${report_dir}/${top_level}.pt.max_delay.rpt"
report_constraint -all_violators -max_delay \
    > "${report_dir}/${top_level}.pt.max_delay.violations.rpt"
report_qor > "${report_dir}/${top_level}.pt.qor.rpt"
report_reference > "${report_dir}/${top_level}.pt.reference.rpt"

set data_inputs [all_inputs]
set activity_period [get_attribute [get_clocks vclk] period]
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 \
    -period $activity_period $data_inputs
update_power
report_power -significant_digits 4 \
    > "${report_dir}/${top_level}.pt.power.rpt"
report_power -hierarchy -significant_digits 4 \
    > "${report_dir}/${top_level}.pt.power.hier.rpt"
quit

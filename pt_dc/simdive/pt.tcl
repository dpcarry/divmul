set sh_enable_page_mode false
set power_enable_analysis true
set top_level simdive_sisd16_recon
set dc_dir "../../dc/simdive/outputs_10ns"
file mkdir reports
set search_path [list "." "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db tcbn65gplustc_ccs.db
read_verilog "$dc_dir/$top_level.nl.v"
link_design $top_level
read_sdc "$dc_dir/$top_level.syn.sdc"
update_timing
report_timing -delay_type max -nworst 10 -path full -slack_lesser_than 1000 > reports/max_delay.rpt
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 -period 10 [all_inputs]
update_power
report_power -significant_digits 5 > reports/power.rpt
quit

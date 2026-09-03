set sh_enable_page_mode false
set power_enable_analysis true
set top_level simdive_fp32_recon
set dc_dir "../../dc/simdive_fp32/outputs_fair_10ns"
set search_path [list "." "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" "/tools/synopsys/syn/U-2022.12-SP7/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db tcbn65gplustc_ccs.db
read_verilog "$dc_dir/$top_level.nl.v"
link_design $top_level
read_sdc "$dc_dir/$top_level.syn.sdc"
update_timing
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 [all_inputs]
update_power
file mkdir reports_fair_10ns
report_timing -significant_digits 5 -delay_type max -nworst 10 -path full -slack_lesser_than 1000 > "reports_fair_10ns/$top_level.pt.timing.rpt"
report_power -significant_digits 5 > "reports_fair_10ns/$top_level.pt.power.rpt"
quit

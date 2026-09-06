set sh_enable_page_mode false
set top $::env(TOP_LEVEL)
set root $::env(RESEARCH_ROOT)
set dc "$root/experiments/arithmetic_sharing/dc/$top"
set out "$root/experiments/arithmetic_sharing/timing_levels/$top"
file mkdir $out
set search_path [list . /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a /tools/synopsys/syn/U-2022.12-SP7/libraries/syn]
set link_path [list * tcbn65gplustc_ccs.db]
read_db tcbn65gplustc_ccs.db
set svr_enable_vpp true
read_verilog "$dc/$top.nl.v"
link_design $top
read_sdc "$dc/$top.syn.sdc"
update_timing
set exp_ports [get_ports {result[23] result[24] result[25] result[26] result[27] result[28] result[29] result[30]}]
set frac_ports [remove_from_collection [get_ports result*] [add_to_collection $exp_ports [get_ports {result[31]}]]]
report_timing -delay_type max -slack_lesser_than 1000 -max_paths 3 -nworst 1 -path full -input_pins -nets -capacitance -transition_time -significant_digits 5 > "$out/global.rpt"
foreach input {divide_mode x y} {
    if {$input == "divide_mode"} {set start [get_ports divide_mode]} else {set start [get_ports ${input}*]}
    foreach kind {exp frac} {
        if {$kind == "exp"} {set end $exp_ports} else {set end $frac_ports}
        report_timing -from $start -to $end -delay_type max -slack_lesser_than 1000 -max_paths 3 -nworst 1 -path full -input_pins -nets -capacitance -transition_time -significant_digits 5 > "$out/${input}_${kind}.rpt"
    }
}
foreach mode {0 1} {
    set_case_analysis $mode [get_ports divide_mode]
    update_timing
    report_timing -delay_type max -slack_lesser_than 1000 -max_paths 3 -nworst 1 -path full -input_pins -nets -significant_digits 5 > "$out/mode${mode}.rpt"
    remove_case_analysis [get_ports divide_mode]
}
puts "LEVEL_PATH_AUDIT_COMPLETE $top"
quit

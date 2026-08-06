if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name lib_ss_0v90_125c\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn65gpluswc_ccs.lib]
create_library_set -name lib_ss_0v90_0c\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn65gpluswcz_ccs.lib]
create_library_set -name lib_ff_1v10_m40c\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn65gpluslt_ccs.lib]
create_library_set -name lib_ff_1v10_125c\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn65gplusml_ccs.lib]
create_library_set -name lib_ss_0v90_m40c\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn65gpluswcl_ccs.lib]
create_library_set -name lib_tt_1v00_25c\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn65gplustc_ccs.lib]
create_library_set -name lib_ff_1v10_0c\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn65gplusbc_ccs.lib]
create_rc_corner -name rc_rcworst_m40\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_rcworst_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T -40
create_rc_corner -name rc_rcbest_0\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_rcbest_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 0
create_rc_corner -name rc_rcbest_125\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_rcbest_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125
create_rc_corner -name rc_rcworst_0\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_rcworst_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 0
create_rc_corner -name rc_cworst_125\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_cworst_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125
create_rc_corner -name rc_cbest_125\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_cbest_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125
create_rc_corner -name rc_typical_25\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_typical_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25
create_rc_corner -name rc_rcworst_125\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_rcworst_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125
create_rc_corner -name rc_cbest_0\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_cbest_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 0
create_rc_corner -name rc_cworst_0\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_cworst_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 0
create_rc_corner -name rc_rcbest_m40\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_rcbest_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T -40
create_rc_corner -name rc_cworst_m40\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_cworst_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T -40
create_rc_corner -name rc_cbest_m40\
   -cap_table ${::IMEX::libVar}/mmmc/cln65g+_1p09m+alrdl_cbest_top2.captable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T -40
create_delay_corner -name dc_ff0_cbest\
   -library_set lib_ff_1v10_0c\
   -rc_corner rc_cbest_0
create_delay_corner -name dc_ff125_cbest\
   -library_set lib_ff_1v10_125c\
   -rc_corner rc_cbest_125
create_delay_corner -name dc_ff0_rcbest\
   -library_set lib_ff_1v10_0c\
   -rc_corner rc_rcbest_0
create_delay_corner -name dc_tt_typical\
   -library_set lib_tt_1v00_25c\
   -rc_corner rc_typical_25
create_delay_corner -name dc_ss0_rcworst\
   -library_set lib_ss_0v90_0c\
   -rc_corner rc_rcworst_0
create_delay_corner -name dc_ssm40_rcworst\
   -library_set lib_ss_0v90_m40c\
   -rc_corner rc_rcworst_m40
create_delay_corner -name dc_ffm40_cbest\
   -library_set lib_ff_1v10_m40c\
   -rc_corner rc_cbest_m40
create_delay_corner -name dc_ssm40_cworst\
   -library_set lib_ss_0v90_m40c\
   -rc_corner rc_cworst_m40
create_delay_corner -name dc_ss125_cworst\
   -library_set lib_ss_0v90_125c\
   -rc_corner rc_cworst_125
create_delay_corner -name dc_ffm40_rcbest\
   -library_set lib_ff_1v10_m40c\
   -rc_corner rc_rcbest_m40
create_delay_corner -name dc_ss0_cworst\
   -library_set lib_ss_0v90_0c\
   -rc_corner rc_cworst_0
create_delay_corner -name dc_ff125_rcbest\
   -library_set lib_ff_1v10_125c\
   -rc_corner rc_rcbest_125
create_delay_corner -name dc_ss125_rcworst\
   -library_set lib_ss_0v90_125c\
   -rc_corner rc_rcworst_125
create_constraint_mode -name functional_2ns\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/functional_2ns/functional_2ns.sdc]
create_analysis_view -name ff0_cbest -constraint_mode functional_2ns -delay_corner dc_ff0_cbest -latency_file ${::IMEX::dataVar}/mmmc/views/ff0_cbest/latency.sdc
create_analysis_view -name ff125_cbest -constraint_mode functional_2ns -delay_corner dc_ff125_cbest -latency_file ${::IMEX::dataVar}/mmmc/views/ff125_cbest/latency.sdc
create_analysis_view -name ff0_rcbest -constraint_mode functional_2ns -delay_corner dc_ff0_rcbest -latency_file ${::IMEX::dataVar}/mmmc/views/ff0_rcbest/latency.sdc
create_analysis_view -name ss0_rcworst -constraint_mode functional_2ns -delay_corner dc_ss0_rcworst -latency_file ${::IMEX::dataVar}/mmmc/views/ss0_rcworst/latency.sdc
create_analysis_view -name ffm40_cbest -constraint_mode functional_2ns -delay_corner dc_ffm40_cbest -latency_file ${::IMEX::dataVar}/mmmc/views/ffm40_cbest/latency.sdc
create_analysis_view -name ssm40_cworst -constraint_mode functional_2ns -delay_corner dc_ssm40_cworst -latency_file ${::IMEX::dataVar}/mmmc/views/ssm40_cworst/latency.sdc
create_analysis_view -name ss125_cworst -constraint_mode functional_2ns -delay_corner dc_ss125_cworst -latency_file ${::IMEX::dataVar}/mmmc/views/ss125_cworst/latency.sdc
create_analysis_view -name tt25_typical -constraint_mode functional_2ns -delay_corner dc_tt_typical -latency_file ${::IMEX::dataVar}/mmmc/views/tt25_typical/latency.sdc
create_analysis_view -name ffm40_rcbest -constraint_mode functional_2ns -delay_corner dc_ffm40_rcbest -latency_file ${::IMEX::dataVar}/mmmc/views/ffm40_rcbest/latency.sdc
create_analysis_view -name ss0_cworst -constraint_mode functional_2ns -delay_corner dc_ss0_cworst -latency_file ${::IMEX::dataVar}/mmmc/views/ss0_cworst/latency.sdc
create_analysis_view -name ssm40_rcworst -constraint_mode functional_2ns -delay_corner dc_ssm40_rcworst -latency_file ${::IMEX::dataVar}/mmmc/views/ssm40_rcworst/latency.sdc
create_analysis_view -name ff125_rcbest -constraint_mode functional_2ns -delay_corner dc_ff125_rcbest -latency_file ${::IMEX::dataVar}/mmmc/views/ff125_rcbest/latency.sdc
create_analysis_view -name ss125_rcworst -constraint_mode functional_2ns -delay_corner dc_ss125_rcworst -latency_file ${::IMEX::dataVar}/mmmc/views/ss125_rcworst/latency.sdc
set_analysis_view -setup [list tt25_typical ss125_cworst ss125_rcworst ss0_cworst ss0_rcworst ssm40_cworst ssm40_rcworst] -hold [list tt25_typical ff0_cbest ff0_rcbest ffm40_cbest ffm40_rcbest ff125_cbest ff125_rcbest]

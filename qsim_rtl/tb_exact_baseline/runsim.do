if {[file exists work]} {
    vdel -lib work -all
}
vlib work
vlog /tools/synopsys/syn/U-2022.12-SP7/dw/sim_ver/DW_lp_pipe_mgr.v
vlog /tools/synopsys/syn/U-2022.12-SP7/dw/sim_ver/DW_fp_mult.v
vlog /tools/synopsys/syn/U-2022.12-SP7/dw/sim_ver/DW_fp_div.v
vlog /tools/synopsys/syn/U-2022.12-SP7/dw/sim_ver/DW_lp_piped_fp_mult.v
vlog /tools/synopsys/syn/U-2022.12-SP7/dw/sim_ver/DW_lp_piped_fp_div.v
vlog ../../rtl/exact/exact_fp32_7stage.v
vlog -sv tb_exact_baseline.sv
vsim -c work.tb_exact_baseline
run -all
quit -f

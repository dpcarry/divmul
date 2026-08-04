onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -noupdate /tb_oadm_divmul/clk
add wave -noupdate -radix hexadecimal /tb_oadm_divmul/x
add wave -noupdate -radix hexadecimal /tb_oadm_divmul/y
add wave -noupdate -radix unsigned /tb_oadm_divmul/level
add wave -noupdate -radix unsigned /tb_oadm_divmul/divide_mode
add wave -noupdate -radix hexadecimal /tb_oadm_divmul/result
add wave -noupdate -radix hexadecimal /tb_oadm_divmul/dut/*

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 220
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -timeline 0
configure wave -timelineunits ps
update

onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -noupdate -radix unsigned /testbench/*
add wave -noupdate -radix unsigned /testbench/oad_lut_divider_inst/*

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

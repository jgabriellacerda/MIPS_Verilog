onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /instruction_memory_tb/clk
add wave -noupdate /instruction_memory_tb/instruction_memory/rom
add wave -noupdate /instruction_memory_tb/A
add wave -noupdate /instruction_memory_tb/RD
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {151 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 152
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1050 ns}

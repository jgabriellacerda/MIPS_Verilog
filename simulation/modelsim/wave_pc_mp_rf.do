onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /pc_memprog_regfile_tb/clk
add wave -noupdate -label reset /pc_memprog_regfile_tb/reset
add wave -noupdate -label RegWrite /pc_memprog_regfile_tb/RegWrite
add wave -noupdate -label RegDst /pc_memprog_regfile_tb/RegDst
add wave -noupdate -label pc -radix decimal /pc_memprog_regfile_tb/pc
add wave -noupdate -label SignImm /pc_memprog_regfile_tb/SignImm
add wave -noupdate -label Instr /pc_memprog_regfile_tb/Instr
add wave -noupdate -label A1 /pc_memprog_regfile_tb/pc_memprog_regfile/reg_file/A1
add wave -noupdate -label RD1 -radix decimal /pc_memprog_regfile_tb/RD1
add wave -noupdate -label A2 /pc_memprog_regfile_tb/pc_memprog_regfile/reg_file/A2
add wave -noupdate -label RD2 -radix decimal /pc_memprog_regfile_tb/RD2
add wave -noupdate -label A3 /pc_memprog_regfile_tb/A3
add wave -noupdate -label Result -radix decimal /pc_memprog_regfile_tb/Result
add wave -noupdate -label RegisterFile -radix decimal /pc_memprog_regfile_tb/pc_memprog_regfile/reg_file/registradores
add wave -noupdate -label PCSrc /pc_memprog_regfile_tb/pc_memprog_regfile/PCSrc
add wave -noupdate -label ALUControl /pc_memprog_regfile_tb/ALUControl
add wave -noupdate -label aluResult /pc_memprog_regfile_tb/pc_memprog_regfile/aluResult
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {61457 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 210
configure wave -valuecolwidth 200
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
WaveRestoreZoom {26248 ps} {91874 ps}

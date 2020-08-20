onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /reg_file_tb/reg_file/clk
add wave -noupdate /reg_file_tb/reg_file/WE3
add wave -noupdate /reg_file_tb/reg_file/reset
add wave -noupdate -radix decimal /reg_file_tb/reg_file/A1
add wave -noupdate -radix decimal /reg_file_tb/reg_file/A2
add wave -noupdate -radix decimal /reg_file_tb/reg_file/A3
add wave -noupdate /reg_file_tb/reg_file/WD3
add wave -noupdate -radix decimal /reg_file_tb/reg_file/RD1
add wave -noupdate -radix decimal /reg_file_tb/reg_file/RD2
add wave -noupdate -radix decimal -childformat {{{/reg_file_tb/reg_file/registradores[31]} -radix decimal} {{/reg_file_tb/reg_file/registradores[30]} -radix decimal} {{/reg_file_tb/reg_file/registradores[29]} -radix decimal} {{/reg_file_tb/reg_file/registradores[28]} -radix decimal} {{/reg_file_tb/reg_file/registradores[27]} -radix decimal} {{/reg_file_tb/reg_file/registradores[26]} -radix decimal} {{/reg_file_tb/reg_file/registradores[25]} -radix decimal} {{/reg_file_tb/reg_file/registradores[24]} -radix decimal} {{/reg_file_tb/reg_file/registradores[23]} -radix decimal} {{/reg_file_tb/reg_file/registradores[22]} -radix decimal} {{/reg_file_tb/reg_file/registradores[21]} -radix decimal} {{/reg_file_tb/reg_file/registradores[20]} -radix decimal} {{/reg_file_tb/reg_file/registradores[19]} -radix decimal} {{/reg_file_tb/reg_file/registradores[18]} -radix decimal} {{/reg_file_tb/reg_file/registradores[17]} -radix decimal} {{/reg_file_tb/reg_file/registradores[16]} -radix decimal} {{/reg_file_tb/reg_file/registradores[15]} -radix decimal} {{/reg_file_tb/reg_file/registradores[14]} -radix decimal} {{/reg_file_tb/reg_file/registradores[13]} -radix decimal} {{/reg_file_tb/reg_file/registradores[12]} -radix decimal} {{/reg_file_tb/reg_file/registradores[11]} -radix decimal} {{/reg_file_tb/reg_file/registradores[10]} -radix decimal} {{/reg_file_tb/reg_file/registradores[9]} -radix decimal} {{/reg_file_tb/reg_file/registradores[8]} -radix decimal} {{/reg_file_tb/reg_file/registradores[7]} -radix decimal} {{/reg_file_tb/reg_file/registradores[6]} -radix decimal} {{/reg_file_tb/reg_file/registradores[5]} -radix decimal} {{/reg_file_tb/reg_file/registradores[4]} -radix decimal} {{/reg_file_tb/reg_file/registradores[3]} -radix decimal} {{/reg_file_tb/reg_file/registradores[2]} -radix decimal} {{/reg_file_tb/reg_file/registradores[1]} -radix decimal} {{/reg_file_tb/reg_file/registradores[0]} -radix decimal}} -expand -subitemconfig {{/reg_file_tb/reg_file/registradores[31]} {-radix decimal} {/reg_file_tb/reg_file/registradores[30]} {-radix decimal} {/reg_file_tb/reg_file/registradores[29]} {-radix decimal} {/reg_file_tb/reg_file/registradores[28]} {-radix decimal} {/reg_file_tb/reg_file/registradores[27]} {-radix decimal} {/reg_file_tb/reg_file/registradores[26]} {-radix decimal} {/reg_file_tb/reg_file/registradores[25]} {-radix decimal} {/reg_file_tb/reg_file/registradores[24]} {-radix decimal} {/reg_file_tb/reg_file/registradores[23]} {-radix decimal} {/reg_file_tb/reg_file/registradores[22]} {-radix decimal} {/reg_file_tb/reg_file/registradores[21]} {-radix decimal} {/reg_file_tb/reg_file/registradores[20]} {-radix decimal} {/reg_file_tb/reg_file/registradores[19]} {-radix decimal} {/reg_file_tb/reg_file/registradores[18]} {-radix decimal} {/reg_file_tb/reg_file/registradores[17]} {-radix decimal} {/reg_file_tb/reg_file/registradores[16]} {-radix decimal} {/reg_file_tb/reg_file/registradores[15]} {-radix decimal} {/reg_file_tb/reg_file/registradores[14]} {-radix decimal} {/reg_file_tb/reg_file/registradores[13]} {-radix decimal} {/reg_file_tb/reg_file/registradores[12]} {-radix decimal} {/reg_file_tb/reg_file/registradores[11]} {-radix decimal} {/reg_file_tb/reg_file/registradores[10]} {-radix decimal} {/reg_file_tb/reg_file/registradores[9]} {-radix decimal} {/reg_file_tb/reg_file/registradores[8]} {-radix decimal} {/reg_file_tb/reg_file/registradores[7]} {-radix decimal} {/reg_file_tb/reg_file/registradores[6]} {-radix decimal} {/reg_file_tb/reg_file/registradores[5]} {-radix decimal} {/reg_file_tb/reg_file/registradores[4]} {-radix decimal} {/reg_file_tb/reg_file/registradores[3]} {-radix decimal} {/reg_file_tb/reg_file/registradores[2]} {-radix decimal} {/reg_file_tb/reg_file/registradores[1]} {-radix decimal} {/reg_file_tb/reg_file/registradores[0]} {-radix decimal}} /reg_file_tb/reg_file/registradores
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {64586 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 272
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
WaveRestoreZoom {21097 ps} {99847 ps}

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Gabriel/Documents/IC/MIPS_Verilog {C:/Users/Gabriel/Documents/IC/MIPS_Verilog/reg_file.v}
vlog -vlog01compat -work work +incdir+C:/Users/Gabriel/Documents/IC/MIPS_Verilog {C:/Users/Gabriel/Documents/IC/MIPS_Verilog/program_counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Gabriel/Documents/IC/MIPS_Verilog {C:/Users/Gabriel/Documents/IC/MIPS_Verilog/pc_memprog_regfile.v}
vlog -vlog01compat -work work +incdir+C:/Users/Gabriel/Documents/IC/MIPS_Verilog {C:/Users/Gabriel/Documents/IC/MIPS_Verilog/my_datamemory.v}
vlog -vlog01compat -work work +incdir+C:/Users/Gabriel/Documents/IC/MIPS_Verilog {C:/Users/Gabriel/Documents/IC/MIPS_Verilog/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/Gabriel/Documents/IC/MIPS_Verilog {C:/Users/Gabriel/Documents/IC/MIPS_Verilog/instruction_memory.v}

vlog -vlog01compat -work work +incdir+C:/Users/Gabriel/Documents/IC/MIPS_Verilog {C:/Users/Gabriel/Documents/IC/MIPS_Verilog/pc_memprog_regfile_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  pc_memprog_regfile_tb

do C:/Users/Gabriel/Documents/IC/MIPS_Verilog/simulation/modelsim/setup_pc_mp_rf.do

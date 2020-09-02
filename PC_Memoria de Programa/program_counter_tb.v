`timescale 1ns/1ps
//Contador de Programa

module program_counter_tb();

reg clk, pc_src, reset;
reg signed [31:0] sign_imm;
wire [31:0] pc;

initial
fork
	clk = 1'b0;
	reset = 1'b1;
	pc_src = 1'b0;
	sign_imm = -6;
	#10
	reset = 1'b0;
	
	#190
	pc_src = 1'b1;	
	#200
	pc_src = 1'b0;
	
	#290
	pc_src = 1'b1;
	#290
	sign_imm = 50;	
	#300
	pc_src = 1'b0;
	
join


always #10 clk = ~clk;
 
program_counter program_counter
(
	.clk(clk), 
	.reset(reset),
	.pc_src(pc_src),
	.sign_imm(sign_imm) ,
	.pc(pc)

);

endmodule
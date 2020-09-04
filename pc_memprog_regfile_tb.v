`timescale 1ns/1ps
module pc_memprog_regfile_tb ();

	reg clk, reset;
	wire signed [31:0]RD1, RD2;
	wire [31:0]	Instr, pc, SignImm;
	wire [4:0]A3;
	wire [31:0] Result;
	
	always #10 clk <= ~ clk;
	
	initial
		begin
		
			clk <= 1'b1;
			reset <= 1'b1;
			
			#20
			
			reset <= 1'b0;
					
			
		end
		
	pc_memprog_regfile pc_memprog_regfile (
														.clk(clk), .reset(reset), 
														.Result(Result),
														.RD1(RD1), .RD2(RD2),
														.Instr(Instr), .pc(pc), .SignImm(SignImm),
														.A3(A3)
														);
		
endmodule

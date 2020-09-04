`timescale 1ns/1ps
module pc_memprog_regfile_tb ();

	reg clk, reset, RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg;
	reg [2:0]ALUControl;
	wire signed [31:0]RD1, RD2;
	wire [31:0]	Instr, pc, SignImm;
	wire [4:0]A3;
	wire [31:0] Result;
	
	always #10 clk <= ~ clk;
	
	initial
		begin
		
			clk <= 1'b1;
			reset <= 1'b1;
			RegWrite <= 1'b0;
			RegDst <= 1'b1;
			ALUSrc <= 1'b0;
			Branch <= 1'b0;
			MemWrite <= 1'b0;
			MemtoReg <= 1'b0;
			
			#20
			
			reset <= 1'b0;
			
			#20
			
			RegWrite <= 1'b1;
			ALUControl <= 3'd0;
			
			#20
			
			ALUControl <= 3'd1;
			
			#20
			
			ALUControl <= 3'd2;
			
			#20
			
			ALUControl <= 3'd4;
			
			#20
			
			ALUControl <= 3'd5;
			
			#20
			
			ALUControl <= 3'd6;
			
			#20
			
			ALUControl <= 3'd7;	
			
			#20
			
			RegWrite <= 1'b0;
			ALUControl = 3'd0;
			
			#100
			
			RegWrite <= 1'b1;
			
			#20
			
			RegWrite <= 1'b0;
					
			
		end
		
	pc_memprog_regfile pc_memprog_regfile (
														.clk(clk), .reset(reset), .RegWrite(RegWrite), .RegDst(RegDst), 
														.ALUSrc(ALUSrc), .Branch(Branch), .MemWrite(MemWrite), .MemtoReg(MemtoReg),
														.ALUControl(ALUControl),
														.Result(Result),
														.RD1(RD1), .RD2(RD2),
														.Instr(Instr), .pc(pc), .SignImm(SignImm),
														.A3(A3)
														);
		
endmodule

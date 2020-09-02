`timescale 1ns/1ps


module instruction_memory_tb();

reg[31:0] A;
wire [31:0] RD;

reg clk;

initial
begin
	A = 0;
	clk = 1'b0;
	
end

always #10 clk = ~clk;
always @ (posedge clk) A <= A + 32'd4;


 
instruction_memory instruction_memory
(
	.A (A),
	.RD (RD)

);

endmodule
`timescale 1ns/1ps
module ALU_tb ();

reg signed [31:0] SrcA, SrcB;
reg [2:0] ALUControl;
wire signed [31:0] ALUResult;
wire Zero;

initial
begin
SrcA <= 32'd65;
SrcB <= 32'd65;
ALUControl <= 3'd6;
end

ALU	 ALU (
				.SrcA(SrcA),
				.SrcB(SrcB),
				.ALUControl(ALUControl),
				.ALUResult(ALUResult),
				.Zero(Zero)
				);

endmodule 
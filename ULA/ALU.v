module ALU (
				input  signed [31:0] SrcA, SrcB,
				input [2:0] ALUControl,
				output reg signed [31:0] ALUResult,
				output reg Zero
				);

always @ (*)
begin
	case (ALUControl) // 3'd3 não é utilizada
	3'd0:
		ALUResult = SrcA & SrcB;
	3'd1:
		ALUResult = SrcA | SrcB;
	3'd2:
		ALUResult = SrcA + SrcB;
	3'd4:
		ALUResult = SrcA & ~SrcB;
	3'd5:
		ALUResult = SrcA | ~SrcB;
	3'd6:
		ALUResult = SrcA - SrcB;
	3'd7:
		ALUResult = SrcA < SrcB;
	default:
		ALUResult = 32'd0;
	endcase
end
	
always @ (*)
begin
	if (ALUResult == 32'd0)
		Zero = 1;
	else
		Zero = 0;
end	
				
endmodule 
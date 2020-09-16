module Control_Unit
(
	input      [31:26] Op, //tamanho [5:0]
	input      [ 5: 0] Funct,
	output reg 			 MemtoReg, MemWrite, Branch,
	output reg [ 2: 0] ALUControl,
	output reg			 ALUSrc, RegDst, RegWrite, Jump
);

reg [ 1: 0] ALUOp;

always @ (*) begin
	case (Op)
			 6'b000000 : begin                        // R-type
						RegWrite <= 1'b1;
						RegDst   <= 1'b1;
						ALUSrc   <= 1'b0;
						Branch   <= 1'b0;
						MemWrite <= 1'b0;
						MemtoReg <= 1'b0;
						ALUOp    <= 2'b10;
						Jump 		<= 1'b0;
					end
			 6'b100011 : begin                        // lw
						RegWrite <= 1'b1;
						RegDst   <= 1'b0;
						ALUSrc   <= 1'b1;
						Branch   <= 1'b0;
						MemWrite <= 1'b0;
						MemtoReg <= 1'b1;
						ALUOp    <= 2'b00;
						Jump 		<= 1'b0;
					end
			 6'b101011 : begin                        // sw
						RegWrite <= 1'b0;
						RegDst   <= 1'bx;
						ALUSrc   <= 1'b1;
						Branch   <= 1'b0;
						MemWrite <= 1'b1;
						MemtoReg <= 1'bx;
						ALUOp    <= 2'b00;
						Jump 		<= 1'b0;
						
					end
			 6'b000100 : begin                        // beq
						RegWrite <= 1'b0;
						RegDst   <= 1'bx;
						ALUSrc   <= 1'b0;
						Branch   <= 1'b1;
						MemWrite <= 1'bx;
						MemtoReg <= 1'b0;
						ALUOp    <= 2'b1;
						Jump 		<= 1'b0;
							
					end
			 6'b000010 : begin                        // j
						RegWrite <= 1'b0;
						RegDst   <= 1'bx;
						ALUSrc   <= 1'bx;
						Branch   <= 1'bx;
						MemWrite <= 1'b0;
						MemtoReg <= 1'bx;
						ALUOp    <= 2'bxx;
						Jump 		<= 1'b1;
							
					end
		default: begin
						RegWrite <= 1'bx;
						RegDst   <= 1'bx;
						ALUSrc   <= 1'bx;
						Branch   <= 1'bx;
						MemWrite <= 1'bx;
						MemtoReg <= 1'bx;
						ALUOp    <= 2'bx;
						Jump 		<= 1'bx;
					end
	endcase
end


reg [2:0] fio;
always @ (*) begin 

	case(ALUOp)
		2'b00: ALUControl <= 3'b010; // add
		2'b01: ALUControl <= 3'b110; // subtract
		2'b10: ALUControl <= fio;
		2'b11: ALUControl <= 3'bx;
endcase		

end


always @ (*) begin
	case (Funct)
			 6'b100000 : begin                      //add  
						fio <= 3'b010;
					end
			 6'b100010 : begin                      //sub  
						fio <= 3'b110;
					end
			 6'b100100 : begin                      //and  
						fio <= 3'b000;
					end
					
			 6'b100101 : begin                      //or 
						fio <= 3'b001;
					end
			 6'b101010 : begin                      //slt  
						fio <= 3'b111;
					end
		default: begin
						fio <= 3'bx;
					end
	endcase
end

endmodule

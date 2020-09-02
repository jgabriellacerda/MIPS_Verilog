module pc_memprog_regfile #(parameter NUM_BITS_ADDR_BARRAMENTO = 32, parameter NUM_BITS_MEM_PROG = 32)
									
									(
									input clk, reset, PCSrc, RegWrite, RegDst, Result,
									output [31:0]RD1, RD2
									);
									
	wire [31:0]pc;
	wire [31:0]Instr;
	wire [31:0]SignImm;
	reg [4:0]A3;
	
	always @ (*) 
		begin
			if (RegDst)
				A3 = Instr[15:11];
			else
				A3 = Instr[20:16];				
		end
	
	instruction_memory instruction_memory (
														.A(pc),
														.RD(Instr)
														);
														
	
	program_counter program_counter ( 
												.clk(clk),
												.pc_src(PCSrc),
												.reset(reset),
												.sign_imm(SignImm),
												.pc(pc)
												);
												
	reg_file reg_file (
								.clk(clk), .WE3(RegWrite), .reset(reset),        // WE : entrada de enable de escrita 
								.Instr(Instr),
								.A3(A3),		// A1(rs) e A2 : entrada de leitura (endereço do reg de origem) - A3(rt) : entrada de escrita (endereço do destino)	
								.WD3(Result),		// WD3 : entrada de escrita de dados da mem. dados
								.RD1(RD1), .RD2(RD2),				// RD1 E RD2 : saidas de dados
								.SignImm(SignImm)
							);
									
endmodule
									
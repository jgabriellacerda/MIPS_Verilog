`timescale 1ns/1ps
module pc_memprog_regfile #(parameter NUM_BITS_ADDR_BARRAMENTO = 32, parameter NUM_BITS_MEM_PROG = 32)
									
									(
									input clk, reset,
									output reg signed [31:0] Result,
									output signed [31:0]RD1, RD2, Instr, pc, SignImm,
									output reg [4:0] A3
									);
									
	//wire [31:0]pc;
	//wire [31:0]Instr;
	//wire [31:0]SignImm;
	//reg [4:0]A3;
	wire MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite;
	wire [2:0] ALUControl;
	
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
								.clk(clk), .WE3(RegWrite), .reset(1'b1),        // WE : entrada de enable de escrita 
								.Instr(Instr),
								.A3(A3),		// A1(rs) e A2 : entrada de leitura (endereço do reg de origem) - A3(rt) : entrada de escrita (endereço do destino)	
								.WD3(Result),		// WD3 : entrada de escrita de dados da mem. dados
								.RD1(RD1), .RD2(RD2),				// RD1 E RD2 : saidas de dados
								.SignImm(SignImm)
							);
							
	wire zero;
	reg signed [31:0] srcB;
	wire signed [31:0] aluResult;
	
	always @ (*) 
		begin
			if (ALUSrc)
				srcB = SignImm;
			else
				srcB = RD2;
		end
	
	assign PCSrc = zero & Branch;
	
	ALU ALU (
					.SrcA(RD1),
					.SrcB(srcB),
					.ALUControl(ALUControl),
					.ALUResult(aluResult),
					.Zero(zero)
				);
	
	wire signed [31:0] ReadData;

	always @ (*)
		begin
			if (MemtoReg)
				Result = ReadData;
			else
				Result = aluResult;
		end
   
	my_datamemory my_datamemory (
										.write_ena(MemWrite),
										.clk(clk),
										.data_wr(RD2),
										.addr(aluResult),
										.data_rd(ReadData)
									);
									
	Control_Unit Control_Unit (
										.Op(Instr[31:26]), //tamanho [5:0]
										.Funct(Instr[5:0]),
										.MemtoReg(MemtoReg), .MemWrite(MemWrite), .Branch(Branch),
										.ALUControl(ALUControl),
										.ALUSrc(ALUSrc), .RegDst(RegDst), .RegWrite(RegWrite)
										);
		
									
endmodule
									
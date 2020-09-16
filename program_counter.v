`timescale 1ns/1ps
//Contador de Programa
//A arquitetura MIPS é de 32 bits 
//Os parametros  NUM_BITS_ADDR_BARRAMENTO = 32 é referente à arquitetura MIPS de 32 bits. Esses
//parametros devem ser mantidos para não descaracterizar a arquitetura.

//O parametro NUM_BITS_ADDR_PROG = 8 define o tamanho da memória de programa. Ele deve ser alterado de acordo com
//a necessidade. Os valores de NUM_BITS_ADDR_PROG devem ser iguais tanto no program_counter.v quanto no instruction_memory.v


module program_counter #(parameter NUM_BITS_ADDR_BARRAMENTO = 32, parameter NUM_BITS_ADDR_PROG = 8)
(
	input clk, pc_src, reset, Jump,
	input [31:0]Instr,
	input signed [NUM_BITS_ADDR_BARRAMENTO - 1 : 0] sign_imm ,
	output reg [NUM_BITS_ADDR_BARRAMENTO - 1 : 0] PC

);

wire [NUM_BITS_ADDR_BARRAMENTO  - 1 : 0] pc_branch, pc_plus4, PCJump;
wire [NUM_BITS_ADDR_BARRAMENTO  - 1 : 0] PCSrcMux;

assign pc_plus4 = PC + 32'd4;
assign pc_branch = (sign_imm << 2) + pc_plus4; 
//assign PCJump = ((pc_plus4[31:28] << 28) + (Instr[25:0] << 2));
assign PCJump = ((pc_plus4 && 8'hf0000000) + (Instr[25:0] << 2));
assign PCSrcMux = pc_src ? pc_branch : pc_plus4;

always @ (posedge clk, posedge reset)
begin
	if(reset)
		PC <= 32'b0;
	else if (PC < (2**NUM_BITS_ADDR_PROG) - 4)
		begin
			PC <= Jump ? PCJump : PCSrcMux;
		end
	else
		PC <= 32'b0;

end


endmodule

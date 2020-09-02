`timescale 1ns/1ps
//Memória de Instrução
//A arquitetura MIPS é de 32 bits 
//Os parametros  NUM_BITS_ADDR_BARRAMENTO = 32 e NUM_BITS_MEM_PROG = 32 são referente à arquitetura MIPS de 32 bits. Esses
//parametros devem ser mantidos para não descaracterizar a arquitetura.

//O parametro NUM_BITS_ADDR_PROG = 8 define o tamanho da memória de programa. Ele deve ser alterado de acordo com
//a necessidade. Os valores de NUM_BITS_ADDR_PROG devem ser iguais tanto no program_counter.v quanto no instruction_memory.v


module instruction_memory #(parameter NUM_BITS_ADDR_BARRAMENTO = 32, parameter NUM_BITS_MEM_PROG = 32,
									 parameter NUM_BITS_ADDR_PROG = 8)
									 
(
	input[NUM_BITS_ADDR_BARRAMENTO - 1 :0] A,
	output[NUM_BITS_MEM_PROG  - 1:0] RD
	
);

reg [NUM_BITS_MEM_PROG - 1: 0] rom [(2**NUM_BITS_ADDR_PROG) - 1 : 0];

initial
begin
	$readmemb("C:/Users/Gabriel/Documents/IC/MIPS_Verilog/programa.txt", rom);
end

assign RD = rom[A[NUM_BITS_ADDR_BARRAMENTO - 1 : 2]];

endmodule
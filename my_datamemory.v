module my_datamemory
#(
	parameter NBITS =  31,   // (32-1) TEM UM RECURSO Q A SUBTRACAO DE UM PARAMETRO POR 1 QUER DIZER Q TODOS OS BITS SAO 1
	parameter ADDRSZ = 4,
	parameter MEMSZ = 31	
)
(
	input write_ena,
	input clk,
	input signed [NBITS:0] data_wr,
	input [ADDRSZ:0] addr,
	output signed [NBITS:0] data_rd
	
);

reg signed [NBITS:0] mem[MEMSZ:0];
assign data_rd = mem[addr];

always @ (posedge clk) begin
	if(write_ena == 1'b1)
		mem[addr] <= data_wr;

end

endmodule

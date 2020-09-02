module my_datamemory
#(
	parameter NBITS =  32,
	parameter ADDRSZ = 32
)
(
	input write_ena,
	input clk,
	input signed [NBITS-1:0] data_wr,
	input [ADDRSZ-1:0] addr,
	output signed [NBITS-1:0] data_rd
	
);

reg signed [NBITS-1:0] mem[2**ADDRSZ-1:0];
assign data_rd = mem[addr];

always @ (posedge clk) begin
	if(write_ena == 1'b1)
		mem[addr] <= data_wr;

end

endmodule
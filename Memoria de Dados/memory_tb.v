`timescale 1ps/1ps
module memory_tb
#(
	parameter NBITS = 32,
	parameter ADDRSZ = 5
)();

reg clk, write_ena;
reg signed [NBITS-1:0] wrdata;
reg [ADDRSZ-1:0] addr;
wire signed [NBITS-1:0] rddata;

initial
fork
	clk <= 1'b0;
	write_ena <= 1'b0;
	wrdata <= 32'd123;
	addr <= 5'd1;
	#45 write_ena <= 1'b1;
	#70 write_ena <= 1'b0;
	#80 addr <= 5'd0;
	#85 write_ena <= 1'b1;
	#110 write_ena <= 1'b0;
	
join

always #10 clk = ~clk;

my_datamemory #(.NBITS(NBITS),.ADDRSZ(ADDRSZ)) my_datamemory(.write_ena(write_ena),
																				 .clk(clk),
																				 .data_wr(wrdata),
																				 .addr(addr),
																				 .data_rd(rddata)
);

endmodule
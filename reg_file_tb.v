`timescale 1ns/1ps

module reg_file_tb();
	
	reg reset, clk, WE3;
 
	reg [4:0] A1, A2, A3;
 
	reg signed [31:0] WD3;
 
	wire [31:0] RD1, RD2;
 
	always #10 clk <= ~ clk;
 
 initial
	 begin
		 clk <= 1'd0;
		 reset <= 1'd0;
		 WE3 <= 1'd0;
		 A3 <= 5'd0;
		 WD3 <= 32'd0;
		 
		 #20 // faz o RD1 = valor do segundo reg. e RD2 = valor primeiro reg. 
		 A1 <= 5'd1;
		 A2 <= 5'd0;
		 
		 #30 // vai escrever o numero 9 no tereceiro registrador 
		 WE3 <= 1'd1;
		 WD3 <= 32'd9;
		 A3 <= 5'd2;
		 
		 #10 // faz o RD1 = 5 (valor do terceiro reg.) 
		 WE3 <= 1'd0;
		 A1 <= 5'd2;
		 
		 #10 // nao vai escrever no setimo reg. pq o enable de escrita esta desativado
		 WD3 <= 32'd6;
		 A3 <= 5'd6;
		 
		 #10 // faz o RD2 = 0, pq nao escreveu 6 nesse endereço
		 A2 <= 5'd6;
	end
 
reg_file reg_file ( 
							.clk (clk),
							.reset (reset),
							.A1 (A1),
							.A2 (A2),
							.A3 (A3),
							.WE3 (WE3),
							.WD3 (WD3),
							.RD1 (RD1),
							.RD2 (RD2)
							);
										
			
endmodule
 
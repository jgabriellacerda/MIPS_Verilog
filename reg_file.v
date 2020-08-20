`timescale 1ns/1ps

module reg_file (
						input clk, WE3, reset,        // WE : entrada de enable de escrita 
						input  [4:0] A1, A2, A3,		// A1(rs) e A2 : entrada de leitura (endereço do reg de origem) - A3(rt) : entrada de escrita (endereço do destino)	
						input signed  [31:0] WD3,		// WD3 : entrada de escrita de dados da mem. dados
						output reg [31:0] RD1, RD2				// RD1 E RD2 : saidas de dados
						)	;



reg [0:31] registradores[31:0];

// inicialização de dois valores para os registers 0 e 1 para teste

initial 
	begin
	 registradores[5'b00000] = 32'b00000000000000000000000000000011; //3
	 registradores[5'b00001] = 32'b00000000000000000000000000000101; //5
	end


// leitura (A1)
	
always @ (*)
	begin
		case (A1)
			5'b00000: //reg0
				RD1 = registradores[5'd0] ;
			5'b00001: //reg1
				RD1 = registradores[5'd1];
			5'b00010: //reg2
				RD1 = registradores[5'd2];
			5'b00011: //reg3
				RD1 = registradores[5'd3];
			5'b00100: //reg4
				RD1 = registradores[5'd4];
			5'b00101: //reg5
				RD1 = registradores[5'd5];
			5'b00110: //reg6
				RD1 = registradores[5'd6];
			5'b00111: //reg7
				RD1 = registradores[5'd7];
			5'b01000: //reg8
				RD1 = registradores[5'd8];
			5'b01001: //reg9
				RD1 = registradores[5'd9];
			5'b01010: //reg10
				RD1 = registradores[5'd10];
			5'b01011: //reg11
				RD1 = registradores[5'd11];
			5'b01100: //reg12
				RD1 = registradores[5'd12];
			5'b01101: //reg13
				RD1 = registradores[5'd13];
			5'b01110: //reg14
				RD1 = registradores[5'd14];
			5'b01111: //reg15
				RD1 = registradores[5'd15];
			5'b10000: //reg16
				RD1 = registradores[5'd16];
			5'b10001: //reg17
				RD1 = registradores[5'd17];
			5'b10010: //reg18
				RD1 = registradores[5'd18];
			5'b10011: //reg19
				RD1 = registradores[5'd19];
			5'b10100: //reg20
				RD1 = registradores[5'd20];
			5'b10101: //reg21
				RD1 = registradores[5'd21];
			5'b10110: //reg22
				RD1 = registradores[5'd22];
			5'b10111: //reg23
				RD1 = registradores[5'd23];
			5'b11000: //reg24
				RD1 = registradores[5'd24];
			5'b11001: //reg25
				RD1 = registradores[5'd25];
			5'b11010: //reg26
				RD1 = registradores[5'd26];
			5'b11011: //reg27
				RD1 = registradores[5'd27];
			5'b11100: //reg28
				RD1 = registradores[5'd28];
			5'b11101: //reg29
				RD1 = registradores[5'd29];
			5'b11110: //reg30
				RD1 = registradores[5'd30];
			5'b11111: //reg31
				RD1 = registradores[5'd31];
			default:
				RD1 = 32'd0;
		endcase
	end	

// leitura (A2)

always @ (*)
		begin
			case (A2)
				5'b00000: //reg0
					RD2 = registradores[5'd0] ;
				5'b00001: //reg1
					RD2 = registradores[5'd1];
				5'b00010: //reg2
					RD2 = registradores[5'd2];
				5'b00011: //reg3
					RD2 = registradores[5'd3];
				5'b00100: //reg4
					RD2 = registradores[5'd4];
				5'b00101: //reg5
					RD2 = registradores[5'd5];
				5'b00110: //reg6
					RD2 = registradores[5'd6];
				5'b00111: //reg7
					RD2 = registradores[5'd7];
				5'b01000: //reg8
					RD2 = registradores[5'd8];
				5'b01001: //reg9
					RD2 = registradores[5'd9];
				5'b01010: //reg10
					RD2 = registradores[5'd10];
				5'b01011: //reg11
					RD2 = registradores[5'd11];
				5'b01100: //reg12
					RD2 = registradores[5'd12];
				5'b01101: //reg13
					RD2 = registradores[5'd13];
				5'b01110: //reg14
					RD2 = registradores[5'd14];
				5'b01111: //reg15
					RD2 = registradores[5'd15];
				5'b10000: //reg16
					RD2 = registradores[5'd16];
				5'b10001: //reg17
					RD2 = registradores[5'd17];
				5'b10010: //reg18
					RD2 = registradores[5'd18];
				5'b10011: //reg19
					RD2 = registradores[5'd19];
				5'b10100: //reg20
					RD2 = registradores[5'd20];
				5'b10101: //reg21
					RD2 = registradores[5'd21];
				5'b10110: //reg22
					RD2 = registradores[5'd22];
				5'b10111: //reg23
					RD2 = registradores[5'd23];
				5'b11000: //reg24
					RD2 = registradores[5'd24];
				5'b11001: //reg25
					RD2 = registradores[5'd25];
				5'b11010: //reg26
					RD2 = registradores[5'd26];
				5'b11011: //reg27
					RD2 = registradores[5'd27];
				5'b11100: //reg28
					RD2 = registradores[5'd28];
				5'b11101: //reg29
					RD2 = registradores[5'd29];
				5'b11110: //reg30
					RD2 = registradores[5'd30];
				5'b11111: //reg31
					RD2 = registradores[5'd31];
				default:
					RD2 = 32'd0;
				endcase
end

// escrita (A3)	
		
always @ (posedge clk )
	begin
		if (WE3)
			case (A3)
			5'b00000: //reg0
				registradores[5'd0] = WD3 ;
			5'b00001: //reg1
				registradores[5'd1] = WD3 ;
			5'b00010: //reg2
				registradores[5'd2] = WD3 ;
			5'b00011: //reg3
				registradores[5'd3] = WD3 ;
			5'b00100: //reg4
				registradores[5'd4] = WD3 ;
			5'b00101: //reg5
				registradores[5'd5] = WD3 ;
			5'b00110: //reg6
				registradores[5'd6] = WD3 ;
			5'b00111: //reg7
				registradores[5'd7] = WD3 ;
			5'b01000: //reg8
				registradores[5'd8] = WD3 ;
			5'b01001: //reg9
				registradores[5'd9] = WD3 ;
			5'b01010: //reg10
				registradores[5'd10] = WD3 ;
			5'b01011: //reg11
				registradores[5'd11] = WD3 ;
			5'b01100: //reg12
				registradores[5'd12] = WD3 ;
			5'b01101: //reg13
				registradores[5'd13] = WD3 ;
			5'b01110: //reg14
				registradores[5'd14] = WD3 ;
			5'b01111: //reg15
				registradores[5'd15] = WD3 ;
			5'b10000: //reg16
				registradores[5'd16] = WD3 ;
			5'b10001: //reg17
				registradores[5'd17] = WD3 ;
			5'b10010: //reg18
				registradores[5'd18] = WD3 ;
			5'b10011: //reg19
				registradores[5'd19] = WD3 ;
			5'b10100: //reg20
				registradores[5'd20] = WD3 ;
			5'b10101: //reg21
				registradores[5'd21] = WD3 ;
			5'b10110: //reg22
				registradores[5'd22] = WD3 ;
			5'b10111: //reg23
				registradores[5'd23] = WD3 ;
			5'b11000: //reg24
				registradores[5'd24] = WD3 ;
			5'b11001: //reg25
				registradores[5'd25] = WD3 ;
			5'b11010: //reg26
				registradores[5'd26] = WD3 ;
			5'b11011: //reg27
				registradores[5'd27] = WD3 ;
			5'b11100: //reg28
				registradores[5'd28] = WD3 ;
			5'b11101: //reg29
				registradores[5'd29] = WD3 ;
			5'b11110: //reg30
				registradores[5'd30] = WD3 ;
			5'b11111: //reg31
				registradores[5'd31] = WD3 ;
		endcase
		
	end			 


endmodule 		
							
/*****************************************************************************
* File:				tb_fourbyone_multiplexer_eightbit.v
* Author:			Iran, Earl Jeremy L.
* Class:				CPE 3101L
* Group/Schedule:	GROUP 2 F 7:30 - 10:30 AM
* Description:		Testbench file for 8Bit fourbyone_multiplexer.v
*
*****************************************************************************/

`timescale 1 ns / 1 ps

module tb_fourbyone_multiplexer_eightbit();

	reg [7:0] A, B, C, D;
	reg [1:0] S;
	wire [7:0] Y;
	
	fourbyone_multiplexer #(8) UUT (.A(A), .B(B), .C(C), .D(D), .S(S), .Y(Y));
	
	initial begin
	
		$display("Time | S  |   A   |   B   |   C   |   D   |   Y   ");
      $display("------------------------------------------------");
		
		//Test Case
		A = 8'hAA; B = 8'h55; C = 8'hF0; D = 8'h0F;
		
		S = 2'b00; #10; $display("%4t | %b | %b | %b | %b | %b | %b", $time, S, A, B, C, D, Y);
		S = 2'b01; #10; $display("%4t | %b | %b | %b | %b | %b | %b", $time, S, A, B, C, D, Y);
		S = 2'b10; #10; $display("%4t | %b | %b | %b | %b | %b | %b", $time, S, A, B, C, D, Y);
		S = 2'b11; #10; $display("%4t | %b | %b | %b | %b | %b | %b", $time, S, A, B, C, D, Y);
		
		//2nd Test Case
		A = 8'h0A; B = 8'h1B; C = 8'h2C; D = 8'h3D;
      
		S = 2'b00; #10; $display("%4t | %b | %b | %b | %b | %b | %b", $time, S, A, B, C, D, Y);
      S = 2'b01; #10; $display("%4t | %b | %b | %b | %b | %b | %b", $time, S, A, B, C, D, Y);
      S = 2'b10; #10; $display("%4t | %b | %b | %b | %b | %b | %b", $time, S, A, B, C, D, Y);
      S = 2'b11; #10; $display("%4t | %b | %b | %b | %b | %b | %b", $time, S, A, B, C, D, Y);
		
		$stop;
	end
	
endmodule 
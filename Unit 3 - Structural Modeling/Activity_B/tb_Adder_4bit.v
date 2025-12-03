/*************************************************
* File: tb_Adder_4bit.v
* Author: Nino Angelo Balagtas 
* Class: CPE 3101L
* Group/Schedule: Group 2 Fri 7:30-10:30 AM
* Description: Testbench file for 4bit Adder
*
**************************************************/

`timescale 1 ns / 1 ps
module tb_Adder_4bit();	
	// inputs as reg
	reg  [3:0] A, B;
	reg        C_in;

	// outputs as wire
	wire [3:0] S;
	wire       C_out;

	// i dont understand here - to study
	Adder_4bit UUT (
		.A(A),
		.B(B),
		.C_in(C_in),
		.S(S),
		.C_out(C_out)
	);

	// generate stimuli
	initial begin
		// Monitor values during simulation
		$monitor("Time=%0t | A=%b B=%b C_in=%b => S=%b C_out=%b", 
		          $time, A, B, C_in, S, C_out);

		// test vectors
		A = 4'b0000; B = 4'b0000; C_in = 0; #10;
		A = 4'b0001; B = 4'b0001; C_in = 0; #10;
		A = 4'b0010; B = 4'b0011; C_in = 0; #10;
		A = 4'b0101; B = 4'b0011; C_in = 1; #10;
		A = 4'b1111; B = 4'b0001; C_in = 0; #10;
		A = 4'b1111; B = 4'b1111; C_in = 0; #10;
		A = 4'b1010; B = 4'b0110; C_in = 1; #10;

		$stop;
	end
	
endmodule 

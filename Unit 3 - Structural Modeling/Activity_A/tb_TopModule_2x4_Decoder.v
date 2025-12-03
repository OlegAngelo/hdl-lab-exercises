/*************************************************************
* 
* File: tb_TopModule_2x4_Decoder.v
* Author:  Nino Angelo Balagtas
* Class: CpE 3101L - Intro to HDL
* Group/Schedule: Group 2 Fri 7:30-10:30 AM
* Description: Testbench File for TopModule_2x4_Decoder.v
*
************************************************************/

`timescale 1 ns /	1 ps
module tb_TopModule_2x4_Decoder();	
	
	// inputs as reg, outputs as wire
	reg 			E;
	reg [1:0] 	A;
	wire [3:0]	D;
	
	// instantiate UUT
	TopModule_2x4_Decoder UUT (.E(E), .A(A), .D(D));
	
	// generate stimuli
	initial
	begin
		E = 1'b0; 	A = 2'b00; #5
						A = 2'b01; #5
						A = 2'b10; #5
						A = 2'b11; #5
		
		E = 1'b1; 	A = 2'b00; #5
						A = 2'b01; #5
						A = 2'b10; #5
						A = 2'b11; #10
		
		$stop;
	end
	
endmodule 
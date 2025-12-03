/*************************************************
* File: FullAdder.v
* Author: Nino Angelo Balagtas 
* Class: CPE 3101L
* Group/Schedule: Group 2 Fri 7:30-10:30 AM
* Description: Verilog HDL code for a FullAdder
*
**************************************************/

module FullAdder (A, B, C_in, S, C_out);

	input A, B, C_in;
	output S, C_out;
	
	wire ab_out, and1_out, and2_out;
	
	xor X1 (ab_out, A, B);
	xor X2 (S, ab_out, C_in);
	and A1 (and1_out, ab_out, C_in);
	and A2 (and2_out, A, B);
	or O1 (C_out, and1_out, and2_out);

endmodule 

/*************************************************************
* 
* File: TopModule_2x4_Decoder.v
* Author:  Nino Angelo Balagtas
* Class: CpE 3101L - Intro to HDL
* Group/Schedule: Group 2 Fri 7:30-10:30 AM
* Description: Verilog HDL code for a 2x4 Decoder
*
************************************************************/

module TopModule_2x4_Decoder (
	input 			E,
	input [1:0] 	A,
	output [3:0]	D
);

	wire [1:0] n_out;
	
	not N1 (n_out[0], A[0]);
	not N2 (n_out[1], A[1]);
		
	and D0 (D[0], n_out[1], n_out[0], E);// ~A1 & ~A0 & E
	and D1 (D[1], n_out[1], A[0], E);  	 // ~A1 &  A0 & E
	and D2 (D[2], A[1], n_out[0], E);  	 //  A1 & ~A0 & E
	and D3 (D[3], A[1], A[0], E);   		 //  A1 &  A0 & E

endmodule 
// Author: Nino Angelo Balagtas
// File: Mux_4x1_nbit.v

module Mux_4x1_nbit 
	#(parameter n = 4)
(
	// ports for 4 bit
	input 	[(n-1):0] 	A, B, C, D,
	input 	[1:0] 		S,
	output 	[(n-1):0] 	Y
);
	
	wire s_temp = (~S[1] & ~S[0]);

	//assign Y[n-1] =  ((s_temp & A[n-1]) | (s_temp & B[n-1]) | (s_temp & C[n-1]) | (s_temp & D[n-1]));
	
	assign Y = (S == 2'b00) ? A:
			  (S == 2'b01) ? B:
			  (S == 2'b10) ? C:
								  D;
	
endmodule 
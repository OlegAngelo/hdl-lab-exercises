// Author: Nino Angelo Balagtas
// File: Comparator_4bit.v

module Comparator_4bit (
	input [3:0] A, B,
	output [2:0] R
);

	assign R[2] = (A > B) ? 1 : 0;
	assign R[1] = (A == B) ? 1 : 0;
	assign R[0] = (A < B) ? 1 : 0;
	
endmodule 
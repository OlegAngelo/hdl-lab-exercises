/*************************************************
* File: Adder_4bit.v
* Author: Nino Angelo Balagtas 
* Class: CPE 3101L
* Group/Schedule: Group 2 Fri 7:30-10:30 AM
* Description: Verilog HDL code for a 4bit Adder
*
**************************************************/

module Adder_4bit(
    input  [3:0] A, B,
    input        C_in,
    output [3:0] S,
    output       C_out
);

    // internal carry signals
    wire [2:0] C;

	 // match parameters with FullAdder file - to study
    // bit 0
    FullAdder FA0 (	.A(A[0]),
							.B(B[0]),
							.C_in(C_in),
							.S(S[0]),
							.C_out(C[0])
    );

    // bit 1
    FullAdder FA1 (	.A(A[1]),
							.B(B[1]),
							.C_in(C[0]),
							.S(S[1]),
							.C_out(C[1])
    );

    // bit 2
    FullAdder FA2 (	.A(A[2]),
							.B(B[2]),
							.C_in(C[1]),
							.S(S[2]),
							.C_out(C[2])
    );

    // bit 3
    FullAdder FA3 (	.A(A[3]),
							.B(B[3]),
							.C_in(C[2]),
							.S(S[3]),
							.C_out(C_out)
    );

endmodule

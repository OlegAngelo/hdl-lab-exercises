/*************************************************************
   File:                        nbit_ALU.v
   Author:                    Balagtas, Nino Angelo / Balagtas, Mac Dylan
   Class:                    CpE 3101L
   Description:            nbit_ALU.v module.
*************************************************************/

module nbit_ALU(A, B, CB_in, Mode, Result, CB_out);
		localparam n = 4;
		
		input [(n-1):0] A, B, Mode;
		input CB_in;
		
		output reg [(n-1):0] Result;
		output reg CB_out;
		
always @(*)
begin
	
		case (Mode)
		
			3'b000 : {CB_out, Result} = A + B + CB_in; // Addition (A + B) with carry
			3'b001 : {CB_out, Result} = A - B - CB_in; // Subtract (A – B) with borrow
			3'b010 : begin Result = A & B; CB_out = 1'b0; end // Bitwise AND of A and B
			3'b011 : begin Result = A | B; CB_out = 1'b0; end // Bitwise OR of A and B
			3'b100 : begin Result = A ^ B; CB_out = 1'b0; end // Bitwise XOR of A and B
			3'b101 : begin Result = ~A;    CB_out = 1'b0; end // Complement of A
			3'b110 : begin Result = A + 1'd1; CB_out = 1'b0; end // Increment A
			3'b111 : begin Result = A - 1'd1; CB_out = 1'b0; end // Decrement A
			default: {CB_out, Result} = 0;
			
		endcase
	end
endmodule
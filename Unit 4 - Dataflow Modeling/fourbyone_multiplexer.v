/*****************************************************************************
* File:				fourbyone_multiplexer.v
* Author:			Iran, Earl Jeremy L.
* Class:				CPE 3101L
* Group/Schedule:	GROUP 2 F 7:30 - 10:30 AM
* Description:		Verilog HDL code for a 4x1 Multiplexer
*
*****************************************************************************/

module fourbyone_multiplexer 
	#(parameter n = 4)
(
	output	[(n-1):0] Y,
	input		[(n-1):0] A, B, C, D,
	input		[1:0] S	
);

	assign Y = (S == 2'b00) ? A:
				  (S == 2'b01) ? B:
	           (S == 2'b10) ? C:
									  D;
	
endmodule 
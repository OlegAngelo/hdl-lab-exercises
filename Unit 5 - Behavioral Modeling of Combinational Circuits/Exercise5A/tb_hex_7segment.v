/*************************************************************
*	File:						tb_hex_7segment.v
*	Author:					Balagtas, Nino Angelo / Balagtas, Mac Dylan
*	Class:					CpE 3101L
*	Description:			tb_hex_7segment.v module.
*************************************************************/

`timescale 1 ns / 1 ps

module tb_hex_7segment();

    reg [3:0] hex_input;
    wire [6:0] seven_segment_output;

    hex_7segment UUT (
        .hex_input(hex_input),
        .seven_segment_output(seven_segment_output)
    );

    initial 
    begin
        hex_input = 4'bxxxx; #10;
        hex_input = 4'b0000; #10;	// 0
        hex_input = 4'b0001; #10;	// 1
        hex_input = 4'b0010; #10;	// 2
        hex_input = 4'b0011; #10;	// 3
        hex_input = 4'b0100; #10;	// 4
        hex_input = 4'b0101; #10;	// 5
        hex_input = 4'b0110; #10;	// 6
        hex_input = 4'b0111; #10;	// 7
        hex_input = 4'b1000; #10;	// 8
        hex_input = 4'b1001; #10;	// 9
        hex_input = 4'b1010; #10;	// A
        hex_input = 4'b1011; #10;	// B
        hex_input = 4'b1100; #10;	// C
        hex_input = 4'b1101; #10;	// D
        hex_input = 4'b1110; #10;	// E
        hex_input = 4'b1111; #10;	// F

        $stop;
    end

endmodule


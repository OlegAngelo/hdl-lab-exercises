/*************************************************************
   File:                        nbit_ALU.v
   Author:                    Balagtas, Nino Angelo / Balagtas, Mac Dylan
   Class:                    CpE 3101L
   Description:            nbit_ALU.v module.
*************************************************************/

`timescale 1 ns / 1 ps

module tb_nbit_ALU();
		localparam n = 4;

		reg [(n-1):0] A, B;
		reg [2:0] Mode;
		reg C_in;
		
		wire [(n-1):0] Result;
		wire C_out;
		
		nbit_ALU UUT (A, B, C_in, Mode, Result, C_out);
		
		initial
		begin
		
			Mode = 3'b000; C_in = 1'b0; 	A = 4'b0000;	B = 4'b0011;	#10
													A = 4'b1001; 	B = 4'b1010;	#10
													A = 4'b1111;	B = 4'b1111;	#10
			Mode = 3'b001; C_in = 1'b0; 	A = 4'b1111;	B = 4'b1011;	#10
													A = 4'b1010; 	B = 4'b0011;	#10
													A = 4'b1000;	B = 4'b0111;	#10									
			Mode = 3'b010; C_in = 1'b0; 	A = 4'b1100;	B = 4'b0011;	#10
													A = 4'b1111; 	B = 4'b0101;	#10
													A = 4'b1001;	B = 4'b1001;	#10										
			Mode = 3'b011; C_in = 1'b0; 	A = 4'b1011;	B = 4'b0011;	#10
													A = 4'b1111; 	B = 4'b0101;	#10
													A = 4'b1001;	B = 4'b1001;	#10																					
			Mode = 3'b100; C_in = 1'b0; 	A = 4'b1010;	B = 4'b0101;	#10
													A = 4'b1111; 	B = 4'b1110;	#10
													A = 4'b1001;	B = 4'b1011;	#10												
			Mode = 3'b101; C_in = 1'b0; 	A = 4'b0000;	B = 4'b0101;	#10
													A = 4'b1110; 	B = 4'b1011;	#10
													A = 4'b0101;	B = 4'b1011;	#10										
			Mode = 3'b110; C_in = 1'b0; 	A = 4'b1010;	B = 4'b0111;	#10
													A = 4'b0101; 	B = 4'b1101;	#10
													A = 4'b0000;	B = 4'b1011;	#10		
			Mode = 3'b111; C_in = 1'b0; 	A = 4'b1001;	B = 4'b0111;	#10
													A = 4'b1111; 	B = 4'b0011;	#10
													A = 4'b0001;	B = 4'b1011;	#10
									
			$stop;
		end
		initial begin
		$monitor ("Time: %2d ns\t Mode = %3b\t A= %4b\t B = %4b\t C_in = %1b\t C_out %1b\t Result %4b", $time, Mode, A, B, C_in, C_out, Result);
		end	
endmodule
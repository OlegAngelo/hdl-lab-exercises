// Author: Nino Angelo Balagtas
// File: tb_Mux_4x1_nbit.v

`timescale 1 ns / 1 ps
module tb_Mux_4x1_nbit();
	reg 	[3:0] 	A, B, C, D;
	reg 	[1:0] 	S;
	wire 	[3:0] 	Y;


	// 4-bit mux
	Mux_4x1_nbit #( .n(4) )
		Mux_4x1_4bit (.A(A), .B(B), .C(C), .D(D), .S(S), .Y(Y));
	
	initial
	begin
		$display("Starting simulation at %0d ns...", $time);
		// test case 1 - 4bit
		A = 8'hAA; B = 8'h55; C = 8'hF0; D = 8'h0F;

		S=2'b00;		#10
		S=2'b01; 	#10
		S=2'b10;		#10
		S=2'b11;		#10
		
		// test case 2 - 8bit
		A = 8'h0A; B = 8'h1B; C = 8'h2C; D = 8'h3D;

		S=2'b00;		#10
		S=2'b01; 	#10
		S=2'b10;		#10
		S=2'b11;		#10
		
		$display("Finished simulation at %0d ns", $time);
		$stop;
	end
	
endmodule

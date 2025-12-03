// Author: Nino Angelo Balagtas
// File: tb_Comparator_4bit.v

`timescale 1 ns / 1 ps
module tb_Comparator_4bit ();
	reg [3:0 ]A, B;
	wire [2:0] R;
	
	Comparator_4bit UUT (.A(A), .B(B), .R(R) );
	
	initial
	begin
		$display("Starting simulation at %0d ns...", $time);
		
		// case (A > B)
		A = 4'd0;	B = 4'd0; 	#10 
		A = 4'd5;	B = 4'd3; 	#10
		A = 4'd1;	B = 4'd10;	#10
		
		// case (A == B)
		A = 4'd0;	B = 4'd0; 	#10 
		A = 4'd5;	B = 4'd3; 	#10
		A = 4'd1;	B = 4'd10;	#10
		
		// case (A < B)
		A = 4'd0;	B = 4'd0; 	#10 
		A = 4'd5;	B = 4'd3; 	#10
		A = 4'd1;	B = 4'd10;	#10
		A = 4'd6; 	B = 4'd9;	#30
		
		
		$display("Finished simulation at %0d ns.", $time);
		$stop;
	end

endmodule 
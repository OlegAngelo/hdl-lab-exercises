

`timescale 1 ns / 1 ps
module tb_ProblemCO2();
	
	reg x1, x2, x3;
	wire f;
	
	ProblemCO2 UUT(x1, x2,x3, f);
	
	initial
	begin
		x1 = 0; x2 = 0; x3 = 0; #10
		x1 = 0; x2 = 0; x3 = 1; #10
		x1 = 0; x2 = 1; x3 = 0; #10
		x1 = 0; x2 = 1; x3 = 1; #10
	
		
		x1 = 1; x2 = 0; x3 = 0; #10
		x1 = 1; x2 = 0; x3 = 1; #10
		x1 = 1; x2 = 1; x3 = 0; #10
		x1 = 1; x2 = 1; x3 = 1; #10
		$stop;
	end
	
	

	
endmodule

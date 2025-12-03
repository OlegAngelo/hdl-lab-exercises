

module ProblemCO2(
	input x1, x2,x3,
	output f
);
	wire g,h,k;
	
	not N1 (k, x2);
	and A1(g, x1,x2);
	and A2(h,k,x3);
	or O1(f, g, h);
	

	
endmodule

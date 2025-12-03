module jkflipflop (
		input clk, Reset, J, K,
		output reg Q
);


always @(negedge clk)
begin
	if (Reset)
		 Q <= 1'b0;
	else
		if (~clk)
			if(J == 0 && K == 0)
				Q <= Q;
				
			if(J == 1 && K == 0)
				Q <= 1;
				
			if(J == 0 && K == 1)
				Q <= 0;
				
			if(J == 1 && K == 1)
				Q <= ~Q;
				
end
endmodule 
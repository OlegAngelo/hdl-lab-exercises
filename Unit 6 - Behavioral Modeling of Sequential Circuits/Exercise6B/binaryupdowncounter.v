module binaryupdowncounter (
	input clk, nReset, Load, Count_en, Up,
	input [3:0] Count_in,
	output reg [3:0] Count_out 
);


always @(negedge clk)
begin
	if (~nReset) 		Count_out <= 4'b0000;
	else if (Load) 	Count_out <= Count_in;
	else if (Count_en)
		if (Up) 			Count_out <= Count_out + 1'b1;
		else if (~Up)	Count_out <= Count_out - 1'b1;
		
end
endmodule 
`timescale 1ns / 1ps

module tb_binaryupdowncounter();
    reg clk, nReset, Load, Count_en, Up;
    reg [3:0] Count_in;
    wire [3:0] Count_out;

    binaryupdowncounter UUT (.clk(clk), .nReset(nReset), .Load(Load), .Count_en(Count_en), .Up(Up), .Count_in(Count_in), .Count_out(Count_out));

    initial begin
        clk 		= 1'b0;
        Count_en 	= 1'b1;
        Up 			= 1'b1;
        nReset 	= 1'b1;
    end

    always
        #5 clk = ~clk;

    initial begin
        nReset = 1'b0;  #10
        nReset = 1'b1;
    end

    initial begin
        $display("Starting simulation at %0d ns...", $time);
        Load 		= 1'b1;
		  Count_in 	= 4'b1100;  #10
        Load		= 1'b0;
        Up 			= 1'b1; 		#50
		  nReset 	= 1'b0;		#10
        nReset 	= 1'b1; 		
        Load 		= 1'b1;
		  Count_in 	= 4'b0100;  #10
        Load 		= 1'b0;
        Up 			= 1'b0; 		#50

        $display("Finished simulation at %0d ns.", $time);
        $stop;
    end

    //initial
    //    $monitor("Time = %2d ns t Clk = %b\t Reset = %b\t J = %b\t K = %b\t Q = %d", $time, Clk, Reset, J, K, Q);

endmodule

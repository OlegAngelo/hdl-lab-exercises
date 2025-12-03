`timescale 1ns / 1ps

module tb_jkflipflop ();
    reg Clk, Reset, J, K;
    wire Q;

    jkflipflop UUT (.Clk(Clk), .Reset(Reset), .J(J), .K(K), .Q(Q));

    initial
        Clk = 1'b0;

    always
        #5 Clk = ~Clk;

    initial begin
        Reset = 1'b1;    #10
        Reset = 1'b0;    #20
        Reset = 1'b1;    #10
        Reset = 1'b0;
    end

    initial begin
        $display("Starting simulation at %d ns...", $time);
        J = 1'b0;         #12
        K = 1'b0;         #10
        J = 1'b1;         #10
        K = 1'b0;         #10
        J = 1'b0;         #10
        K = 1'b1;         #10
        J = 1'b1;         #10
        K = 1'b1;         #10
        J = 1'b0;         #10
        K = 1'b0;         #10
        $display("Finished simulation at %d ns.", $time);
        $stop;
    end

    initial
        $monitor("Time = %2d ns\t Clk = %b\t Reset = %b\t j = %b\t k = %b\t Q = %d", $time, Clk, Reset, J, K, Q);

endmodule

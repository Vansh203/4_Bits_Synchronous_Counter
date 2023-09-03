module jk_ff_tb;
    reg j, k, clk;
    wire q_sig, qbar_sig;
    // Instantiate the DUT
    jk_ff_beh jk_ff_inst (
        .j(j),
        .k(k),
        .clk(clk),
        .q(q_sig),
        .qn(qbar_sig)
    );
    initial
    begin
     clk = 1'b0; 
    end
    always #3 clk = ~clk;
    initial begin
        j = 0;k= 0;
        #6 j = 0;k = 1;
        #6 j = 1; k = 0;
        #6;
        j = 1; k = 1;
        #6;
        j = 1; k = 1;
        #10;
        $finish;
    end
endmodule

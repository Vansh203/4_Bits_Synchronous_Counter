module tb();
    reg clk, reset;
    wire [3:0] count;
    syn_cou dut(.clk(clk), .reset(reset), .count(count));
    initial 
    begin
        clk = 1'b0;
       #10 reset = 0;
    end
    always #5 clk = ~clk;
       initial 
       begin
        #150 reset =1;
        #200 $finish;
    end
endmodule
module jk_ff_beh(q,qn,j,k,clk,reset);
input j,k, clk, reset;
    output reg q,qn;
   always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 0;
            qn <= 0;
        end
         else begin
            if (j && k) begin
                q <= qn;
                qn <= q;
            end 
            else if (j) begin
                q <= 1;
                qn <= 0;
            end 
            else if (k) 
            begin
                q <= 0;
                qn <= 1;
            end
        end
    end
endmodule

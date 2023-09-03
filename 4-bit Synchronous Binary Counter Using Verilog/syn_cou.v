module syn_cou(input clk, reset,
    output reg [3:0] count); 
    integer i =1;
    wire q0, q1, q2, q3;
    wire qn0, qn1, qn2, qn3;
    wire x,y;
    and a1(x,q0,q1);
    and a2(y,q0,q1,q2);
    jk_ff_beh  j1(.j(i),.k(i), .clk(clk), .reset(reset), .q(q0), .qn(qn0));
    jk_ff_beh  j2(.j(q0), .k(q0), .clk(clk), .reset(reset),.q(q1), .qn(qn1));
    jk_ff_beh  j3(.j(x), .k(x), .clk(clk), .reset(reset), .q(q2), .qn(qn2));
    jk_ff_beh  j4(.j(y), .k(y), .clk(clk), .reset(reset), .q(q3), .qn(qn3));
    always @(posedge clk or posedge reset)
        begin
        if (reset) begin
            count <= 0;
        end 
        else 
        begin
            count <= {q3, q2, q1, q0};
        end
    end
endmodule

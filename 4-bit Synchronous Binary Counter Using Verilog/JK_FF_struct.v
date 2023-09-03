module jkff_struct(q,qbar,clk,j,k);

input j,k,clk;
output q,qbar;

wire nand1_out; 
wire nand2_out;
wire a,b;
assign a=0;
assign b=1;
nand(nand1_out, j,clk,b);
nand(nand2_out, k,clk,a);
nand(q,b,nand1_out);
nand(qbar,a,nand2_out);
end module
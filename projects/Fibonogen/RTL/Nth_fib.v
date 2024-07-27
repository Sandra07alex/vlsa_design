module Nth_fibo
(
input clk,rst,
input[3:0]N,
output[3:0]fibo_out,
output fibo_valid
);
wire[3:0]count;
assign fibo_valid=(count==0) ? 1:0;
assign fibo_out_outer=fibo_valid ? fibo_out:0;
down_counter D1(.clk(clk),.rst(rst),.N(N),.count(count));
fibo_gen f1(.clk(clk),.rst(rst),.fibo_out(fibo_out));
endmodule

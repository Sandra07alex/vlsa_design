module Nth_fibo_tb;
wire[3:0]fibo_out;
wire fibo_valid;
reg clk,rst;
reg [3:0]N;
always #5 clk=~clk;
Nth_fibo N1(.clk(clk),.rst(rst),.N(N),.fibo_out(fibo_out),.fibo_valid(fibo_valid));
initial 
begin
clk=0;
rst=0;
#10
rst=1;
N=4'b0011;
#10
rst=0;
#100
$finish;
end
endmodule

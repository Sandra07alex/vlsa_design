module fibo_gen
(
  input clk,rst,
  output[3:0]fibo_out
);
  wire[3:0]m1_out,m2_out,add_out;
  reg[3:0]R1_out,R2_out;
assign m1_out=rst?4'b0001:add_out;
assign m2_out=rst?4'b0000:R1_out;
assign add_out=R1_out+R2_out;
always@(posedge clk)
begin
  R1_out<=m1_out;
  R2_out<=m2_out;
end
assign fibo_out=R2_out;
endmodule

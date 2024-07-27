module down_counter
(
input clk,rst,
input [3:0]N,
output [3:0]count
);
wire[3:0]mux_out,dec_out;
reg[3:0]count_out;
assign mux_out=rst ? N:dec_out;
assign dec_out=count_out-4'b0001;
always@(posedge clk)
begin
count_out<=mux_out;
end
assign count=count_out;
endmodule

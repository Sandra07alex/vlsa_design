module t_b;
reg [3:0]A;
reg [3:0]B;
wire[3:0]s;
wire cout;
rca uut (
.A(A),
.B(B),
.S(s),
.carry_out(cout)

);
initial  begin 


A=4'd1; B=4'd2;
#10
A=4'b0001;B=4'b0001;# 10
A=4'b0010;B=4'b0010;# 10
A=4'b0011;B=4'b0011;

end 
endmodule





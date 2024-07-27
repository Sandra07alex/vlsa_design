module rca(
input [3:0]A,B,
output [3:0]S,
output carry_out
);
wire C0,C1,C2;
f_a fa1 (.a(A[0]),.b(B[0]),.cin(1'b0),.sum(S[0]),.cout(C0));
f_a fa2 (.a(A[1]),.b(B[1]),.cin(C0),.sum(S[1]),.cout(C1));
f_a fa3 (.a(A[2]),.b(B[2]),.cin(C1),.sum(S[2]),.cout(C2));
f_a fa4 (.a(A[3]),.b(B[3]),.cin(C2),.sum(S[3]),.cout(carry_out));
endmodule







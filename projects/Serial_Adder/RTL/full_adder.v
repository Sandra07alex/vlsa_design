module fa (
    input a, b, cin,
    output s, cout
);
    assign s = a ^ b ^ cin;
    assign cout = cin & (a ^ b) | (a & b);
endmodule

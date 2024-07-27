
module top (
    input reset, clk, a, b,
    output s, cout
);
    wire cin, dout;

    fa uutf (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    df uuti (
        .reset(reset),
        .clk(clk),
        .cout(cout),
        .dout(dout)
    );

    assign cin = reset ? dout : 0;
endmodule


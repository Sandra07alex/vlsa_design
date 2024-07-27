
module df (
    input reset, clk, cout,
    output reg dout
);
    always @(posedge clk) begin
        if (reset == 1) dout <= 0;
        else dout <= cout;
    end
endmodule

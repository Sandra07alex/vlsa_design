module top (
    input clk, t1,
    output  t_out
);

    reg D;

    always @(posedge clk) begin
        D <= t1;
    end

    assign t_out = D ^ t1;
    
endmodule


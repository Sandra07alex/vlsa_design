module mod_tb;

    reg clk;
    reg t1;
    wire t_out;

    // Instantiate module uut
    mod uut (
        .clk(clk),
        .t1(t1),
        .t_out(t_out)
    );

    // Clock generation
    always #5 clk = ~clk;  // Generate a clock with 10 ns period (5 ns high, 5 ns low)

    // Testbench initial block
    initial begin
      
 	clk = 0;
	t1=1;
        #6; t1 = 0;

        #20; t1 = 1;

    
 
        #50 $finish;
    end

endmodule


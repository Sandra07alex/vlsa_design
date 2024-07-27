module mod_tb;

   
    reg clk;
    reg t1;
    wire t_out;

   
    mod uut (
        .clk(clk),
        .t1(t1),
        .t_out(t_out)
    );

  
    always #5 clk = ~clk; 

   
    initial begin
        clk = 0;
        t1 = 0;

       
        #10;
        D = 1; 
        #10; 

        
        D = 0; 
        #10; 
        t1 = 1; 
        #10; 

      

        
        $finish;
    end

endmodule


module and_gate_tb;

    reg t_a, t_b;
    wire t_y;

    // Instantiate the AND gate module
    and_gate and_gate_inst (
        .a(t_a),
        .b(t_b),
        .y(t_y)
    );

    initial begin
        $dumpfile("2.vcd");
        $dumpvars(0, and_gate_tb);
    end

    initial begin
        $monitor(t_a, t_b, t_y);
        
        t_a = 1'b0;
        t_b = 1'b0;
        #5;
        
        t_a = 1'b0;
        t_b = 1'b1;
        #5;
        
        t_a = 1'b1;
        t_b = 1'b0;
        #5;
        
        t_a = 1'b1;
        t_b = 1'b1;
        #5;
        
    end

endmodule

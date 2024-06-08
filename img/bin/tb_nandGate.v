module tb_nandGate;

    reg t_a, t_b;
    wire t_y;

    nandGate nandGate_inst (
        .a(t_a),
        .b(t_b),
        .y(t_y)
    );

    initial begin
        $dumpfile("5.vcd");
        $dumpvars(0, tb_nandGate);
    end

    initial begin
        $monitor(t_a, t_b, t_y);

        t_a = 1'b0; t_b = 1'b0;
        #5;

        t_a = 1'b0; t_b = 1'b1;
        #5;

        t_a = 1'b1; t_b = 1'b0;
        #5;

        t_a = 1'b1; t_b = 1'b1;
        #5;
    end

endmodule

module tb_xorGate;

    reg t_a, t_b;
    wire t_y;

    xorGate xorGate_inst (
        .a(t_a),
        .b(t_b),
        .y(t_y)
    );

    initial begin
        $dumpfile("7.vcd");
        $dumpvars(0, tb_xorGate);
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

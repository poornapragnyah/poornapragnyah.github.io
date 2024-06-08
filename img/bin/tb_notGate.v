module tb_notGate;
reg t_a;
wire t_y;
    notGate notGate1(
        .a(t_a),
        .y(t_y)
    );
    initial begin
        $dumpfile("4.vcd");
        $dumpvars(0,tb_notGate);
    end
    initial begin
        $monitor(t_a,t_y);
        t_a = 1'b0;
        #5;        
        t_a = 1'b0;
        #5;        
        t_a = 1'b1;
        #5;        
        t_a = 1'b1;
        #5;
    end
endmodule



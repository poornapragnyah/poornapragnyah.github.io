module tb_fullAdder;
reg t_a,t_b,t_c;
wire t_y;
fullAdder ckt1(.a(t_a),.b(t_b),.c(t_c),.y(t_y));
initial begin
    $dumpfile("1.vcd");
    $dumpvars(0,tb_fullAdder);
end
initial begin
    $monitor(t_a,t_b,t_c,t_y);
    t_a = 1'b0; t_b = 1'b0;t_c = 1'b0; //000
    #5   
    t_a = 1'b0;t_b = 1'b0; t_c = 1'b1; //001
    #5
    t_a = 1'b0;t_b = 1'b1;t_c = 1'b0; //010   
    #5 
    t_a = 1'b0;t_b = 1'b1; t_c = 1'b1; //011
    #5 
    t_a = 1'b1;t_b = 1'b0;t_c = 1'b0; //100
    #5  
    t_a = 1'b1;t_b = 1'b0;t_c = 1'b1; //101
    #5    
    t_a = 1'b1;t_b = 1'b1;t_c = 1'b0; //110
    #5   
    t_a = 1'b1;t_b = 1'b1;t_c = 1'b1; //111
    #5        
    t_a = 1'b0;t_b = 1'b0;   t_c = 1'b0; //000 
end    
endmodule

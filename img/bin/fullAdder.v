module fullAdder(input wire a,b,c,output wire y);
    wire t1,t2,t3;
    assign t1 = ~c;
    assign t2 = a & t1;
    assign t3 = b & c;
    assign y = t2|t3;
endmodule

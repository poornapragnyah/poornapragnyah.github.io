module notGate(
    input wire a,
    output wire y
);
    assign y = ~a;
endmodule
module fa;

reg A, B;
reg C;
wire S;
wire Cout;

fullAdder f0(
// Students: Instantiate the `fourBitAdder_FourByOne` module
    .a (A),
    .b (B),
    .cin (C),
    .s (S),
    .cout (Cout)
);

initial begin
// Students: test a set of inputs for the `fullAdder` module
    A = 0;
    B = 0;
    C = 0;
    #20 A = 1;
    #20 B = 1;
    #20 C = 1;
    #20;
    $stop;
end

endmodule
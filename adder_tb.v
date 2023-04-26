// Students: Write a description for your testbench.
// The module "fourBitAdder_FourByOne" ...
module adder_tb;

reg [3:0] A, B;
wire [3:0] S;
reg cin;
wire cout;

fourBitAdder_TwoByTwo f0(
// Students: Instantiate the `fourBitAdder_FourByOne` module
    .a (A),
    .b (B),
    .cin (cin),
    .s (S),
    .cout (cout)

);

initial begin
// Students: test a set of inputs for the `fullAdder` module
    A = 4'b0000;
    B = 4'b0000;
    cin = 1'b0;
    #20 A = 4'b0001;
    #20 B = 4'b0001;
    #20 cin = 1'b1;
    #20;
    $stop;
end

endmodule

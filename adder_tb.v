// Students: Write a description for your testbench.
// The module "fourBitAdder_FourByOne" ...
module adder_tb;

reg [3:0] A, B;
reg cin;
wire [3:0] S;
wire cout;
integer i;
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
    for (i = 0; i < 32; i = i + 1) begin
        A[0] = i % 2;
        B[0] = (i % 4) / 2;
        A[1] = (i % 8) / 4;
        B[1] = (i % 16) / 8;
        A[2] = (i % 32) / 16;
        B[2] = (i % 64) / 32;
        A[3] = (i % 128) / 64;
        B[3] = (i % 256) / 128;
        cin = (i % 512) / 256;
        #20;
    end
    $stop;
end

endmodule

// Students: Write a description for your testbench.
// The module "fourbitadder_FourbyOne" ...
module test2bitmod;

reg [1:0] a, b;
wire [1:0] S;
reg cin;
wire cout;
integer i;

bit2adder p0(
// Students: Instantiate the `fourbitadder_FourbyOne` module
    .a0 (a[0]),
    .a1 (a[1]),
    .b0 (b[0]),
    .b1 (b[1]),
    .cin (cin),
    .s0 (S[0]),
    .s1 (S[1]),
    .cout (cout)

);

initial begin
// Students: test a set of inputs for the `fulladder` module
    a[0] = 1'b0;
    b[0]= 1'b0;
    a[1] = 1'b0;
    b[1]= 1'b0;
    cin = 1'b0;
    
    
    for (i = 0; i < 32; i = i + 1) begin
        a[0] = i % 2;
        b[0] = (i % 4) / 2;
        a[1] = (i % 8) / 4;
        b[1] = (i % 16) / 8;
        cin = (i % 32) / 16;
        #20;
    end
    $stop;
end

endmodule


// Students: Write a description for your testbench.
// The module "fourbitadder_FourbyOne" ...
module test2bitmod;

reg [1:0] a, b;
reg cin;
wire [1:0] S;
wire cout;
integer i;

twoBitAdder p0(
// Students: Instantiate the `fourbitadder_FourbyOne` module
    .a (a),
    .b (b),
    .cin (cin),
    .s (S),
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


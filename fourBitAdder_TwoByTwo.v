// Students: Write a description for the ripple-carry adder.
// The module "fourBitAdder_FourByOne" ...
module fourBitAdder_TwoByTwo (
    input   wire [3:0]  a, b,
    input   wire        cin,
    output  wire [3:0]  s,
    output  wire        cout
);

    
    wire temp1c;
    wire temp2c;
    wire temp3c;
    // Students: Implementation goes here
    // Students: Instantiate the `fullAdder` module
    
    bit2adder a1 (
      .a0 (a[0]),
      .a1 (a[1]),
      .b0 (b[0]),
      .b1 (b[1]),
      .cin (cin),
      .s0  (s[0]),
      .s1   (s[1]),
      .cout (temp1c)
      
      );
      
      bit2adder a2 (
      .a0 (a[2]),
      .a1 (a[3]),
      .b0 (b[2]),
      .b1 (b[3]),
      .cin (temp1c),
      .s0  (s[2]),
      .s1   (s[3]),
      .cout (cout)
      
      );

endmodule

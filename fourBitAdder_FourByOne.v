// Students: Write a description for the ripple-carry adder.
// The module "fourBitAdder_FourByOne" ...
module fourBitAdder_FourByOne (
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
    
    fullAdder a1 (
      .a (a[0]),
      .b (b[0]),
      .cin (cin),
      .s  (s[0]),
      .cout (temp1c)
      
      );
      
      fullAdder a2 (
      .a (a[1]),
      .b (b[1]),
      .cin (temp1c),
      .s  (s[1]),
      .cout (temp2c)
      
      );
      
      fullAdder a3 (
      .a (a[2]),
      .b (b[2]),
      .cin (temp2c),
      .s  (s[2]),
      .cout (temp3c)
      
      );
      
      fullAdder a4 (
      .a (a[3]),
      .b (b[3]),
      .cin (temp3c),
      .s  (s[3]),
      .cout (cout)
      
      );

endmodule

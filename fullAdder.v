// Students: Always start your module definition with a description
// of what the module does
// The full adder takes two bits and one carry-in bit as inputs
// and computes the sum...
module fullAdder (
    input   wire    a, b, cin,
    output  wire    s, cout
         
);

    // Students: Implementation goes here
    assign cout = (a & b)|(a & cin)|(b & cin); 
    assign s = (~a & ~b & cin)|(~a & b & ~cin)|(a & ~b & ~cin)|(a & b & cin);



endmodule


module twoBitAdder (
    input wire  [1:0]  a, b,
    input wire cin,
    output wire  [1:0] s,
    output wire  cout
         
);

    // Students: Implementation goes here
    
    assign cout = (cin & a[1] & a[0]) | (cin & b[1] & b[0]) | (cin & a[1] & b[0]) | (cin & a[0] & b[1]) | (a[0] & a[1] & b[0]) | (a[0] & b[0] & b[1]) | (a[1] & b[1]);
    
    assign s[0] = (~cin & a[0] & ~b[0]) | (~cin & ~a[0] & b[0]) | (cin & ~a[0] & ~b[0]) | (cin & a[0] & b[0]);
    
    assign s[1] = (~cin & a[1] & ~b[1] & ~b[0]) | (a[1] & a[0] & b[1] & b[0]) | (cin & ~a[1] & ~b[1] & b[0]) | (~a[1] & ~a[0] & b[1] & ~b[0]) | (cin & ~a[1] & a[0] & ~b[1]) | (a[1] & ~a[0] & ~b[1] & ~b[0]) | (cin & a[1] & b[1] & b[0]) | (cin & a[1] & a[0] & b[1])|(~cin & ~a[1] & ~a[0] & b[1]) | (~a[1] & a[0] & ~b[1] & b[0]) | (~cin & ~a[1] & b[1] & ~b[0]) | (~cin & a[1] & ~a[0] & ~b[1]);


endmodule


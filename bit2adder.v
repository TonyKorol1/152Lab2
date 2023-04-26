module bit2adder (
    input   wire    a0, a1, b0, b1, cin,
    output  wire    s0, s1, cout
         
);

    // Students: Implementation goes here
    
    assign cout = (cin & a1 & b0) | (cin & a1 & b1) | (cin & a0 & b1) | (cin & a0 & a1) | (cin & b0 & b1)|(a0 & a1 & b0) | (a0 & b0 & b1) | (a0 & a1 & b1) | (a1 & b0 & b1) ;
    
    assign s0 = (~cin & a0 & ~b0) | (~cin & ~a0 & b0) | (cin & ~a0 & ~b0) | (cin & a0 & b0);
    
    assign s1 = (~cin & a1 & ~b1 & ~b0) | (a1 & a0 & b1 & b0) | (cin & ~a1 & ~b1 & b0) | (~a1 & ~a0 & b1 & ~b0) | (cin & ~a1 & a0 & ~b1) | (a1 & ~a0 & ~b1 & ~b0) | (cin & a1 & b1 & b0) | (cin & a1 & a0 & b1)|(~cin & ~a1 & ~a0 & b1) | (~a1 & a0 & ~b1 & b0) | (~cin & ~a1 & b1 & ~b0) | (~cin & a1 & ~a0 & ~b1);


endmodule


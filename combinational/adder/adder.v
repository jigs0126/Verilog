module full_adder (
    input a,        // First input bit
    input b,
    input c,        // Second input bit
    output sum,     // Sum output
    output c_out    // Carry output
);

    half_adder u0(.a(a), .b(b), .sum(s1) , .c_out(c1));
    half_adder u1(.a(s1), .b(c), .sum(sum) , .c_out(c_out));
   

endmodule


module half_adder (
    input a,        // First input bit
    input b,        // Second input bit
    output sum,     // Sum output
    output c_out    // Carry output
);

    assign sum = a ^ b;     // XOR for sum
    assign c_out = a & b;   // AND for carry

endmodule

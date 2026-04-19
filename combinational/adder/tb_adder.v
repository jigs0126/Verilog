`timescale 1ns / 1ps

module half_adder_tb;

    // Testbench signals
    reg a;
    reg b;
    wire sum;
    wire c_out;

    // Instantiate the Unit Under Test (UUT)
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .c_out(c_out)
    );

    initial begin
        // Monitor signal changes
        $monitor("Time=%0t | a=%b b=%b | sum=%b c_out=%b", $time, a, b, sum, c_out);

        // Test all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        #10 $stop; // End simulation
    end

endmodule



//test bench for full adder

`timescale 1ns / 1ps
module full_adder_tb();
    reg a,b,c;
    wire sum,c_out;
    full_adder uut(.a(a), .b(b), .c(c), .sum(sum), .c_out(c_out));
    initial begin
          a=0;b=0;c=0;
          #10 a=0;b=0;c=1;
          #10 a=0;b=1;c=0;
          #10 a=0;b=1;c=1;
          #10 a=1;b=0;c=0;
          #10 a=1;b=0;c=1;
          #10 a=1;b=1;c=0;
          #10 a=1;b=1;c=1;
          #10 $finish;
       end
          
endmodule

module subractor(input x,input y, input b_in, output s, output b_out

    );
    assign s = x^y^b_in;
    assign b_out = ~x&y | b_in &(~x^y);
endmodule

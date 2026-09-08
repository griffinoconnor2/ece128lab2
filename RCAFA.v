module RCAFA(input A, B, Cin,
             output Cout, S);

//Implement 1-bit full adder logic
assign S = A^B^Cin;
assign Cout = A&Cin | B&Cin | A&B;

endmodule
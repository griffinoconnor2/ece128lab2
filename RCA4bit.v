module RCA4bit(input [3:0] A, B,
               input Cin,
               output [3:0] S,
               output Cout);

//Declare intermediate carries
wire [3:1] C;

//Implement 4-bit Ripple Carry Adder using RCAFA module
RCAFA FA0 (.A(A[0]), .B(B[0]), .Cin(Cin),  .Cout(C[1]),  .S(S[0]));
RCAFA FA1 (.A(A[1]), .B(B[1]), .Cin(C[1]), .Cout(C[2]),  .S(S[1]));
RCAFA FA2 (.A(A[2]), .B(B[2]), .Cin(C[2]), .Cout(C[3]),  .S(S[2]));
RCAFA FA3 (.A(A[3]), .B(B[3]), .Cin(C[3]), .Cout(Cout),  .S(S[3]));

endmodule
`timescale 1ns/1ps

module CLA4bit_tb;

//Declare testbench I/O signals
reg [3:0] A, B;
reg Cin;
wire [3:0] S;
wire Cout;

//Instantiate 4-bit CLA to test
CLA4bit uut(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

//Perform various tests
initial begin

    //Test Case 1: 3 + 4 = 7 (no carry in)
    A = 4'b0011; B = 4'b0100; Cin  = 1'b0; #10;

    //Test Case 2: 3 + 4 + 1 = 8 (w/ carry in)
    A = 4'b0011; B = 4'b0100; Cin  = 1'b1; #10;

    //Test Case 3: 8 + 8 = 16 (testing if Cout = 1/overflow to S = 0)
    A = 4'b1000; B = 4'b1000; Cin  = 1'b0; #10;

    //Test Case 4: 0 + 0 = 0 (no carry in)
    A = 4'b0000; B = 4'b0000; Cin  = 1'b0; #10;

    //Test Case 5: 15 + 15 + 1 (max possible value w/ carry in, expect S = 15 & Cout = 1)
    A = 4'b1111; B = 4'b1111; Cin  = 1'b1; #10;

    $finish;

end

endmodule
module RCA4bit(input [3:0] A, B,
               output [3:0] S,
               output Cout;
);

assign S = A^B^C;


endmodule
`timescale 1ns / 1ps
module FBA(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output Co
    );
    wire [3:0] Cout;
    wire Cin;
    assign Cin = 1'b0;
    
    /*  input CI,
    input A,
    input B,
    output reg Sum,
    output reg CO
    );*/
    
    one_bit_add add0 (.A(A[0]), .B(B[0]), .CI(Cin), .Sum(S[0]), .CO(Cout[0]));
    one_bit_add add1 (.A(A[1]), .B(B[1]), .CI(Cout[0]), .Sum(S[1]), .CO(Cout[1]));
    one_bit_add add2 (.A(A[2]), .B(B[2]), .CI(Cout[1]), .Sum(S[2]), .CO(Cout[2]));
    one_bit_add add3 (.A(A[3]), .B(B[3]), .CI(Cout[2]), .Sum(S[3]), .CO(Cout[3]));
    
    assign Co = Cout[3];
    
endmodule

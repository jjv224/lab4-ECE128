`timescale 1ns / 1ps

module final(
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [6:0] Display
    );
    wire Co;
    wire [3:0] Sum, Mo;
    FBA add4 (.A(A), .B(B), .S(Sum), .Co(Co));
    to_mux moo(.Sum(Sum), .Co(Co), .sel(sel), .Mo(Mo));
    sev_seg shine_bright_like_a_diamond(.Sum(Mo), .Display(Display));
    
endmodule

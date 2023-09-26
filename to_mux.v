`timescale 1ns / 1ps

module to_mux(
    input [3:0] Sum,
    input [3:0] Co,
    input sel,
    output reg [3:0] Mo
    );
    wire [3:0] new_co = {3'b000, Co}; 
    always@(Sum or new_co or sel)
    begin
        case(sel)
            1'b0: Mo = Sum;
            1'b1: Mo = new_co;
            default: Mo = 4'bx;
        endcase     
    end
endmodule

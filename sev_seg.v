`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 02:14:18 PM
// Design Name: 
// Module Name: sev_seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sev_seg(
    input [3:0] Sum,
    output reg [6:0] Display
    );
    
    always@(Sum)
        begin
            case(Sum)
            4'b0000: Display = 7'b0000001;
            4'b0001: Display = 7'b1001111;
            4'b0010: Display = 7'b0010010;
            4'b0011: Display = 7'b0000110;
            4'b0100: Display = 7'b1001100;
            4'b0101: Display = 7'b0100100;
            4'b0110: Display = 7'b0100000;
            4'b0111: Display = 7'b0001111;
            4'b1000: Display = 7'b0000000;
            4'b1001: Display = 7'b0000100;
            endcase
        end             
endmodule

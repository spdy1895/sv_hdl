`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 23.05.2021 14:08:13
// Design Name: 
// Module Name: barrel_shifter
// Project Name: left-right shift barrel shifter
// Target Devices: artix-7
// Tool Versions: 2020.2
// Description: based upon the select logic the type of shift and the width of shift is decided.
//              4-bit.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module barrel_shifter(
    output logic [3:0] out,
    input wire [3:0] in,
    input wire [1:0] sel,
    input wire sft_lft
    );
    
    logic [3:0] w1, w2, w3;

    // mux pins definition are (out, in0, in1, sel)

    mux2to1 obj2_0(w1, {in[2], in[3], in[0], in[1]}, {in[2:0], in[3]}, sft_lft);
    mux2to1 obj2_1(w2, {in[1], in[2], in[3], in[0]},  {in[1:0], in[3:2]},sft_lft);
    mux2to1 obj2_2(w3, {in[0], in[1], in[2], in[3]}, {in[0], in[3:1]}, sft_lft);

    mux4to1 obj4_3(out[3], in, sel);
    mux4to1 obj4_4(out[2], w1, sel);
    mux4to1 obj4_5(out[1], w2, sel);
    mux4to1 obj4_6(out[0], w3, sel);

endmodule

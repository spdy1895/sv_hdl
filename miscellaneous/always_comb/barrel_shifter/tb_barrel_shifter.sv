`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 23.05.2021 16:36:31
// Design Name: 
// Module Name: tb_barrel_shifter
// Project Name: left-right shift barrel shifter.
// Target Devices: artix-7
// Tool Versions: 2020.21
// Description: test bench for the barrel shifter.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_barrel_shifter(

    );
    logic [3:0] out;
    logic [3:0] in;
    logic [1:0] sel;
    logic sft_lft;

    // instantiation of the logic
    barrel_shifter b0(
        .out(out),
        .in(in),
        .sel(sel),
        .sft_lft(sft_lft)
    );

    // input to the DUT
    initial begin
        $monitor($time,"input: %b,  shift bits: %b, shift left: %b, out: %b", in, sel, sft_lft, out);
        #10 {in, sel, sft_lft}= 7'b1101_00_1; // left shift
        #10 {in, sel, sft_lft}= 7'b1101_01_1;
        #10 {in, sel, sft_lft}= 7'b1101_10_1;
        #10 {in, sel, sft_lft}= 7'b1101_11_1;

        #10 {in, sel, sft_lft}= 7'b1101_00_0;   // right shift
        #10 {in, sel, sft_lft}= 7'b1101_01_0;
        #10 {in, sel, sft_lft}= 7'b1101_10_0;
        #10 {in, sel, sft_lft}= 7'b1101_11_0;
        #10 $finish;

    end

endmodule

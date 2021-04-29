`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 29.04.2021 13:50:03
// Design Name: 
// Module Name: tb_seq_design
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


module tb_seq_design(

    );

    logic y1_out;
    logic y2_out;
    logic a_in;
    logic b_in;
    logic reset_n;
    logic clk;

    // instantiation of the design.
    seq_design sd0(
        .y1_out(y1_out),
        .y2_out(y2_out),

        .a_in(a_in),
        .b_in(b_in),
        .reset_n(reset_n),
        .clk(clk)
    );

    // clock generation.
    initial begin
        clk= '0;
        forever clk= #5 ~clk;
    end

    // input to the DUT
    initial begin
        reset_n= 1'b0;
        #20 {reset_n, a_in, b_in}= 3'b100;
        #20 {reset_n, a_in, b_in}= 3'b101;
        #20 {reset_n, a_in, b_in}= 3'b110;
        #20 {reset_n, a_in, b_in}= 3'b111;
        #20 $finish;
    end
endmodule

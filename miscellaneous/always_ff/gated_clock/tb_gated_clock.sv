`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 09.05.2021 16:06:51
// Design Name: 
// Module Name: tb_gated_clock
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


module tb_gated_clock(

    );

    logic q_out;
    logic d_in;
    logic enable_in;
    logic clk;

    // instantiation of DUT
    gated_clock DUT(
        .q_out(q_out),
        .d_in(d_in),
        .enable_in(enable_in),
        .clk(clk)
    );

    // generating a clock
    initial begin
        clk= 1'b0;
        forever clk= #5 ~clk;

    end

    // input to DUT
    initial begin
        #10 repeat(10) {enable_in, d_in}= #10 $urandom;
        #10 repeat(10) {enable_in, d_in}= #5 {1'b1, $urandom};

        #10 $finish;

    end
endmodule

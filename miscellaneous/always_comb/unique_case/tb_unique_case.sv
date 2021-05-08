`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 08.05.2021 16:10:52
// Design Name: 
// Module Name: tb_unique_case
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


module tb_unique_case(

    );
    logic y_out;
    logic a_in;
    logic b_in;
    logic c_in;
    logic d_in;
    logic [1:0] sel_in;

    // instantiation of the DUT
    unique_case DUT(
        .y_out(y_out),
        .a_in(a_in),
        .b_in(b_in),
        .c_in(c_in),
        .d_in(d_in),
        .sel_in(sel_in)
        );

    // input to DUT
    initial begin
        #10 repeat(10) 
        #10 {a_in, b_in, c_in, d_in, sel_in}= $urandom;
        #10 $finish;
    end
endmodule

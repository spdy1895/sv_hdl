`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 29.04.2021 13:25:09
// Design Name: 
// Module Name: seq_design
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: logic data type for inferring combinational and 
//              sequential elements.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seq_design(
    output logic y1_out,
    output logic y2_out,

    input wire a_in,
    input wire b_in,
    input wire reset_n,
    input wire clk
    );

    // infers a combinational element
    assign y1_out= a_in ^ b_in;

    // infers a sequential element
    always_ff @( posedge clk or negedge reset_n ) begin : seq
        if(~reset_n) y2_out<= '0;
        else y2_out<= a_in & b_in;
    end
endmodule

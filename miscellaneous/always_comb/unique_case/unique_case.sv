`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 08.05.2021 16:06:04
// Design Name: 
// Module Name: unique_case
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: designing a mux with unique case statement.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module unique_case(
    output logic y_out,
    
    input wire a_in,
    input wire b_in,
    input wire c_in,
    input wire d_in,
    input wire [1:0] sel_in
    );

    always_comb begin : mux
    unique case(sel_in)
    2'b11: y_out= d_in;
    2'b01: y_out= b_in;
    2'b10: y_out= c_in;
    2'b00: y_out= a_in;
    endcase
    end
endmodule

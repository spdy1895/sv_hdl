`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 01.05.2021 23:45:13
// Design Name: 
// Module Name: mux_2to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: multiplexer design using always_comb procedural block.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_2to1(
    output logic out,

    input wire sel,
    input wire in0,
    input wire in1
    );

    always_comb begin : mux
        if(sel) out= in1;
        else out= in0;
    end

endmodule: mux_2to1

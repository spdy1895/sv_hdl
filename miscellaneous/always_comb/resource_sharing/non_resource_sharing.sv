`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 10.05.2021 10:47:47
// Design Name: 
// Module Name: non_resource_sharing
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: RTL description of the multiplier without resource sharing.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module non_resource_sharing(
    output logic q1_out,
    output logic q2_out,
    input wire a_in,
    input wire b_in,
    input wire c_in,
    input wire d_in,
    input wire e_in,
    input wire f_in,
    input wire [1:0] sel_in
    );

    always_comb begin : multiplier_0
        if(sel_in[0]) q1_out= a_in*b_in;
        else q1_out= c_in*d_in;

    end

    always_comb begin : multiplier_1
        if(sel_in[1]) q2_out= e_in*f_in;
        else q2_out= a_in*b_in;
    end
endmodule

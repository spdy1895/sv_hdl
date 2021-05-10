`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 10.05.2021 18:49:05
// Design Name: 
// Module Name: non_pipelined_design
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: a simple logic implemented without using pipelined approach.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module non_pipelined_design(
    output logic q_out,
    input wire a_in,
    input wire b_in,
    input wire c_in,
    input wire d_in,
    input wire clk
    );

    logic q1_out;
    logic q2_out;
    logic q3_out;
    logic reg_a_in;
    logic reg_b_in;
    logic reg_c_in;
    logic reg_d_in;

    always_ff @( posedge clk ) begin : registered_inputs
        reg_a_in<= a_in;
        reg_b_in<= b_in;
        reg_c_in<= c_in;
        reg_d_in<= d_in;
    end

    assign q1_out= reg_a_in && reg_b_in;
    assign q2_out= reg_c_in && reg_d_in;
    assign q3_out= q1_out || q2_out;

    always_ff @( posedge clk ) begin : register_logic
        q_out<= q3_out;
    end

endmodule

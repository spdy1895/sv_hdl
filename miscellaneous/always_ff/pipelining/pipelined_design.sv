`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 10.05.2021 18:47:08
// Design Name: 
// Module Name: pipelined_design
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: a simple logic implemented using pipelining.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pipelined_design(
    output logic q_out,
    input wire a_in,
    input wire b_in,
    input wire c_in,
    input wire d_in,
    input wire clk
    );

    logic q1_out;
    logic q2_out;
    logic reg_a_in;
    logic reg_b_in;
    logic reg_c_in;
    logic reg_d_in;
    logic pipe_q1_out;
    logic pipe_q2_out;

    always_ff @( posedge clk ) begin : registered_inputs
        reg_a_in<= a_in;
        reg_b_in<= b_in;
        reg_c_in<= c_in;
        reg_d_in<= d_in;
    end

    assign q1_out= reg_a_in && reg_b_in;
    assign q2_out= reg_c_in && reg_d_in;

    always_ff @( posedge clk ) begin : pipelined_register_1
        pipe_q1_out<= q1_out;
        pipe_q2_out<= q2_out;
    end

    always_ff @( posedge clk ) begin : pipelined_register_2
        q_out<= pipe_q1_out || pipe_q2_out;
        
    end
 
endmodule

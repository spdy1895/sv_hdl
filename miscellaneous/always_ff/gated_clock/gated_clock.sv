`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 09.05.2021 16:06:18
// Design Name: 
// Module Name: gated_clock
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: a flip-flop using gated clock.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gated_clock(
    output logic q_out,
    input wire d_in,
    input wire enable_in,
    input wire clk
    );

    logic clock_gate;

    assign clock_gate= (clk && enable_in);

    always_ff @( posedge clock_gate ) begin : clock_gated_ff
        q_out<= d_in;
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 21:57:29
// Design Name: 
// Module Name: ring_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 4 bit ring counter designed using behavioral approach.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ring_counter(
    output logic [3:0] q_out,

    input wire rst,
    input wire clk
    );

    always_ff @( posedge clk or negedge rst ) begin : ring
        if(~rst) q_out<= 4'b1000;
        else q_out<= {q_out[0], q_out[3:1]};
    end
endmodule

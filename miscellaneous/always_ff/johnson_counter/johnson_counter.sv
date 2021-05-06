`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 22:22:08
// Design Name: 
// Module Name: johnson_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 4 bit johnson counter.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module johnson_counter(
    output logic [3:0] q_out,
    input wire rst,
    input wire clk
    );

    always_ff @( posedge clk or negedge rst ) begin : johnson
        if(~rst) q_out<= 4'b0000;
        else q_out<= {~q_out[0], q_out[3:1]};
    end
endmodule

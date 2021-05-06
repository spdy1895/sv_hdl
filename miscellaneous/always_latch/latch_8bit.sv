`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 13:27:21
// Design Name: 
// Module Name: latch_8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: designing an intentional latch.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module latch_8bit(
    output logic [7:0] data_out,
    input wire [7:0] data_in,
    input wire latch_en
    );

    always_latch begin : latch
        if(latch_en) data_out<= data_in;
    end
endmodule

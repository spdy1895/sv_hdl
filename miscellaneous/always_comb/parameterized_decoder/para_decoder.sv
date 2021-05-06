`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 11:01:59
// Design Name: 
// Module Name: para_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: designing a parametrized model of decoder.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module para_decoder #(parameter in_width= 2, parameter out_width= 4) (
    output logic [out_width-1:0] out,
    input wire [in_width-1:0] in,
    input wire enable
    );

    always_comb begin : decoder
        out= (enable) ? ( 1<<in ) : 0;
    end
endmodule

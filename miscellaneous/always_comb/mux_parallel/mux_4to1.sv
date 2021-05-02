`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 02.05.2021 21:23:08
// Design Name: 
// Module Name: mux_4to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: using case statement to infer multiplexer. case statement infers 
//              parallel logic.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_4to1 #(parameter data_width= 4, parameter sel_width= 2) (
    output logic out,

    input wire [data_width-1:0] in,
    input wire [sel_width-1: 0] sel
    );

    always_comb begin : mux
        case (sel)
            'd0: out= in[0];
            'd1: out= in[1];
            'd2: out= in[2];
            'd3: out= in[3];
            default: out= in[0];
        endcase
    end
endmodule

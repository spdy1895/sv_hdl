`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 03.05.2021 01:51:08
// Design Name: 
// Module Name: mux_4to1_2to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: designing 4to1 mux using 2to1 mux.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_4to1_2to1 #(parameter data_width= 4, parameter select_width= 2) (
    output logic y_out,

    input wire [data_width-1:0] data_in,
    input wire [select_width-1:0] sel_in
    );
    
    logic wire0, wire1;
    always_comb begin : mux_4to1
        wire0= (sel_in[0]) ? data_in[1] : data_in[0];
        wire1= (sel_in[0]) ? data_in[3] : data_in[2];
        y_out= (sel_in[1]) ? wire1 : wire0;
    end

endmodule

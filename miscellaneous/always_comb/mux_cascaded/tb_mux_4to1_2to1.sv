`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 03.05.2021 01:58:31
// Design Name: 
// Module Name: tb_mux_4to1_2to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_mux_4to1_2to1(

    );

    parameter data_width= 4;
    parameter select_width= 2;
    
    logic y_out;
    logic [data_width-1:0] data_in;
    logic [select_width-1:0] sel_in;

    // instantiation of DUT
    mux_4to1_2to1 #(4, 2) m0(
        .y_out(y_out),

        .data_in(data_in),
        .sel_in(sel_in)
    );

    // providing input to the DUT
    initial begin
        repeat(5) begin
            #10 {data_in, sel_in}= $random;
        end
        #10 $finish;
    end
endmodule

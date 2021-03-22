`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: SHUBHAM PANDEY 
// 
// Create Date: 22.03.2021 17:06:08
// Design Name: counter by system verilog
// Module Name: counter
// Project Name: counter
// Target Devices: artix
// Tool Versions: 2020.2
// Description: this is a simple counter using system verilog.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter(
    output logic [4:0] count,

    input logic [4:0] data,
    input logic load,
    input logic enable,
    input logic rst,
    input logic clk
    );

    always_ff @( posedge clk ) begin : upcounter
        if(!rst) count<= 5'd0;
        else if ( (load== 1'b1) && (enable== 1'b1) ) count<= data;
        else if (enable== 1'b1) count<= count + 1'b1;
        else count<= count;

    end
endmodule

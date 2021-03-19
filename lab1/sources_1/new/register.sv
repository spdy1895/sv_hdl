`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 19.03.2021 19:22:56
// Design Name: simple register
// Module Name: register
// Project Name: register
// Target Devices: nexys ddr 4
// Tool Versions: 2020.2
// Description: modeling a simple register in system verilog.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module register(
    output logic [7:0] out,
    
    input logic [7:0] data,
    input logic enable,
    input logic rst,
    input logic clock

    );
    timeunit 1ns;
    timeprecision 1ps;

    always_ff @( posedge clock ) begin : a_simple_register
        if (!rst)
            out<= '0;
        else if(rst==1 && enable== 1)
            out<= data;
        else
            out<= out;

    end : a_simple_register
endmodule

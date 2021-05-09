`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 09.05.2021 13:34:42
// Design Name: 
// Module Name: tb_priority_if
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


module tb_priority_if(

    );

    logic [3:0] y_out;
    logic [1:0] sel_in;

    // instantiation of DUT
    priority_if DUT(
        .y_out(y_out),
        .sel_in(sel_in)
    );

    // input to the DUT
    initial begin
        #10 repeat (10) sel_in= #10 $urandom;

        #10 $finish;
    end
endmodule

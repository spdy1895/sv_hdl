`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 09.05.2021 13:34:01
// Design Name: 
// Module Name: priority_if
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: designing a priority encoder with priority if construct.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module priority_if(
    output logic [3:0] y_out,
    input wire [1:0] sel_in
    );

    always_comb begin : priority_encoder
        priority if (sel_in== 2'b00) y_out= 4'b0001;
        else if(sel_in== 2'b01) y_out= 4'b0010;
        else if(sel_in== 2'b10) y_out= 4'b0100;
        else if(sel_in== 2'b11) y_out= 4'b1000;
    end
endmodule

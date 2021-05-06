`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 11:09:11
// Design Name: 
// Module Name: tb_para_decoder
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


module tb_para_decoder(

    );
    parameter in_width= 2;
    parameter out_width= 4;
    
    logic [out_width-1:0] out;
    logic [in_width-1:0] in;
    logic enable;

    // instantiation of DUT
    para_decoder #(2, 4) DUT (
        .out(out),
        .in(in),
        .enable(enable)
    );

    // input for the DUT
    initial begin
        repeat (10) #10 {enable, in}= $urandom;
        #10 $finish;
    end
endmodule

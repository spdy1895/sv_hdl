`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 13:01:17
// Design Name: 
// Module Name: tb_priEncoder
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


module tb_priEncoder(

    );

    logic [1:0] y_out;
    logic data_valid;
    logic [3:0] data_in;

    // instantiation of DUT
    priEncoder DUT(
        .y_out(y_out),
        .data_valid(data_valid),
        .data_in(data_in)
    );

    // input to DUT
    initial begin
        repeat (10) data_in= #10 $urandom;

        #10 $finish;
    end
endmodule

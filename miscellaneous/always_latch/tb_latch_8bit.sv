`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 13:27:48
// Design Name: 
// Module Name: tb_latch_8bit
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


module tb_latch_8bit(

    );

    logic [7:0] data_out;
    logic [7:0] data_in;
    logic latch_en;

    // instantiation of the DUT
    latch_8bit DUT(
        .data_out(data_out),
        .data_in(data_in),
        .latch_en(latch_en)
    );

    // input to DUT
    initial begin 
        repeat (10) {latch_en, data_in}= #10 $urandom;

        #10 $finish;
    end

endmodule

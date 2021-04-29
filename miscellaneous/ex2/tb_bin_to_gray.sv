`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 29.04.2021 18:14:13
// Design Name: 
// Module Name: tb_bin_to_gray
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


module tb_bin_to_gray(

    );

    logic [3:0] gray_data;
    logic [3:0] binary_data;

    // instantiate the DUT
    bin_to_gray b2g0(
        .gray_data(gray_data),

        .binary_data(binary_data)
    );

    // input data for the DUT
    initial begin

        repeat(16) begin
            #10 binary_data= $urandom();
        end
        #10 $finish;
    end
endmodule

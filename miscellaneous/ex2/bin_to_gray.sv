`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 29.04.2021 17:56:58
// Design Name: 
// Module Name: bin_to_gray
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: system verilog code to convert binary number to gray number.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bin_to_gray(
    output logic [3:0] gray_data,
    
    input wire [3:0] binary_data
    );

    always_comb begin : bin2gray
        gray_data[3]= binary_data[3];
        gray_data[2]= binary_data[3] ^ binary_data[2];
        gray_data[1]= binary_data[2] ^ binary_data[1];
        gray_data[0]= binary_data[1] ^ binary_data[0];
    end
endmodule

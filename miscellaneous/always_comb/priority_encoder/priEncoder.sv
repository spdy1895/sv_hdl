`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 12:55:01
// Design Name: 
// Module Name: priEncoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: designing a priority encoder.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module priEncoder(
    output logic [1:0] y_out,
    output logic data_valid,

    input wire [3:0] data_in
    );

    always_comb begin : priority_encoder
        unique casez (data_in)
            4'b1???: {data_valid, y_out}= 3'b100;
            4'b01??: {data_valid, y_out}= 3'b101;
            4'b001?: {data_valid, y_out}= 3'b110;
            4'b0001: {data_valid, y_out}= 3'b111;
            default: {data_valid, y_out}= 3'b000;
        endcase
    end
endmodule

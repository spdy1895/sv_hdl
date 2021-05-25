`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 23.05.2021 16:03:20
// Design Name: 
// Module Name: mux4to1
// Project Name: left-right shift barrel shifter
// Target Devices: artix-7
// Tool Versions: 2020.2
// Description: 4 to 1 mux logic.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4to1(
    output logic out,
    input wire [3:0] in,
    input wire [1:0] sel
    );

    always_comb begin : mux4to1
        case (sel)
            2'b00: out= in[3];
            2'b01: out= in[2];
            2'b10: out= in[1];
            2'b11: out= in[0];

        endcase
    end
    
    
    
    
    
    //assign out= in[sel];
endmodule

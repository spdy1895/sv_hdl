`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 23.05.2021 16:03:20
// Design Name: 
// Module Name: mux2to1
// Project Name: left-right shift barrel shifter.
// Target Devices: artix-7
// Tool Versions: 2020.2
// Description: this is 2 to 1 mux. where input widht is 4.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2to1(
    output logic [3:0] out,
    input wire [3:0] in0,
    input wire [3:0] in1,
    input wire in
    );

    // in==1 will invoke left shift else right shift.
    assign out= (in==1) ? in1 : in0;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 01.05.2021 23:48:28
// Design Name: 
// Module Name: tb_mux_2to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: testbench for the DUT.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_mux_2to1(

    );

    logic out;
    logic sel;
    logic in0;
    logic in1;

    // instantiation of DUT
    mux_2to1 DUT(
        .out(out),

        .sel(sel),
        .in0(in0),
        .in1(in1)
    );

    initial begin
        #10 {sel, in0, in1}= 3'b000;
        #10 {sel, in0, in1}= 3'b001;
        #10 {sel, in0, in1}= 3'b010;
        #10 {sel, in0, in1}= 3'b011;
        #10 {sel, in0, in1}= 3'b100;
        #10 {sel, in0, in1}= 3'b101;
        #10 {sel, in0, in1}= 3'b110;
        #10 {sel, in0, in1}= 3'b111;
        #10 $finish;
        
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 19.03.2021 22:50:05
// Design Name: multiplexor
// Module Name: multiplexorUnit_tb
// Project Name: multiplexor
// Target Devices: artix
// Tool Versions: 2020.2
// Description: testbench for dut.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplexorUnit_tb(

    );

    logic out;
    logic in_a;
    logic in_b;
    logic sel_a;

    // instantiate the dut
    multiplexorUnit m0(
        .out(out),
        .in_a(in_a),
        .in_b(in_b),
        .sel_a(sel_a)
    );

    initial begin
    #20 {in_a, in_b, sel_a}= 3'b000;
    #20 {in_a, in_b, sel_a}= 3'b001;
    #20 {in_a, in_b, sel_a}= 3'b010;
    #20 {in_a, in_b, sel_a}= 3'b011;

    #20 {in_a, in_b, sel_a}= 3'b100;
    #20 {in_a, in_b, sel_a}= 3'b101;
    #20 {in_a, in_b, sel_a}= 3'b110;
    #20 {in_a, in_b, sel_a}= 3'b111;

    #50 $finish;

    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 19.03.2021 19:35:02
// Design Name: simple register
// Module Name: register_tb
// Project Name: register
// Target Devices: nexys ddr 4
// Tool Versions: 2020.2
// Description: testbench for the register module.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module register_tb(

    );
    timeunit 1ns;           // always write this keywords here only;
    timeprecision 1ps;

    logic [7:0] out;
    logic [7:0] data;
    logic enable;
    logic rst;
    logic clock;

    // instantiation of register module;
    register r0(
        .out(out),
        .data(data),
        .enable(enable),
        .rst(rst),
        .clock(clock)
    );
    
    // generation of clock
    initial begin
        clock= '0;
        forever clock= #5 ~clock;
    end

    initial begin
        #10 rst= '0;
        #30 rst= '1;

        #10 enable= 1'b1;       // enabled the ff;

        #20 data= 8'd127;

        #50 enable= 1'b0;       // disabled the ff;
            data= 8'd15;
        #10 $finish;
    end


endmodule

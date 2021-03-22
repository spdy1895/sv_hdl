`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 22.03.2021 17:17:50
// Design Name: counter by system verilog
// Module Name: counter_tb
// Project Name: counter
// Target Devices: artix
// Tool Versions: 2020.2
// Description: this is a simple testbench for counter design.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_tb(

    );

    logic [4:0] count;
    logic [4:0] data;
    logic load;
    logic enable;
    logic rst;
    logic clk;

    // instantiate the counter module.
    counter co(
        .count(count),
        .data(data),
        .load(load),
        .enable(enable),
        .rst(rst),
        .clk(clk)
    );

    // generation of clock
    initial begin
        clk= 1'b0;
        forever clk= #5 ~clk;
    end

    // input block
    initial begin
        #30 rst= 1'b0;          // reset asserted.
        #10 rst= 1'b1;          // reset de-asserted.

        #50 enable= 1'b1;       // enable asserted for the counter.
        #400 load= 1'b1;        // load made enable.
             data= 8'h0f;       // data to be loaded.
        #10 load= 1'b0;

        #200 rst= 1'b0;         // reset is asserted.
        #50 $finish;
    end

endmodule

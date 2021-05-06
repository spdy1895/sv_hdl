`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 22:25:27
// Design Name: 
// Module Name: tb_johnson_counter
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


module tb_johnson_counter(

    );

    logic [3:0] q_out;
    logic rst;
    logic clk;

    // instantiation of DUT
    johnson_counter DUT(
        .q_out(q_out),
        .rst(rst),
        .clk(clk)
    );

    // generating clock signal
    initial begin
        clk= 1'b0;
        forever clk= #5 ~clk;
    end

    // input to the DUT
    initial begin
        #10 rst= 1'b1;
        #10 rst= 1'b0;      // asserting reset signal.
        #15 rst= 1'b1;      // de-asserting reset signal.

        #200 $finish;
    end
endmodule

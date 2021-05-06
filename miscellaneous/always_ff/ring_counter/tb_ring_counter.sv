`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 06.05.2021 22:02:16
// Design Name: 
// Module Name: tb_ring_counter
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


module tb_ring_counter(

    );
    
    logic [3:0] q_out;
    logic rst;
    logic clk;

    // instantiation of DUT
    ring_counter DUT(
        .q_out(q_out),
        .rst(rst),
        .clk(clk)
    );

    // generation of clock
    initial begin
        clk= 1'b0;
        forever clk= #10 ~clk;
    end

    // input to the DUT
    initial begin
        #20 rst= 1'b1;      // de-asserting reset.
        #20 rst= 1'b0;      // asserting reset.
        #15 rst= 1'b1;      // de-asserting reset.

        #200 $finish;
    end
endmodule

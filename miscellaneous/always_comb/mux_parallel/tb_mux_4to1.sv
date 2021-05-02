`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 02.05.2021 21:32:55
// Design Name: 
// Module Name: tb_mux_4to1
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


module tb_mux_4to1(

    );
    parameter data_width= 4;
    parameter sel_width= 2;

    logic out;
    logic [data_width-1:0] in;
    logic [sel_width-1:0] sel;


    // instantiation of DUT
    mux_4to1 m0(
        .out(out),
        .in(in),
        .sel(sel)
    );

    // values for verification
    initial begin
        #10 repeat(10) begin
            #10 sel= $random;
                in= $random;
        
        end

        #10 $finish;
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 08.05.2021 21:09:07
// Design Name: 
// Module Name: latch_alwayscomb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: checking what logic in inferred if an intentional latch is code 
//              is written inside always comb block.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module latch_alwayscomb(
    output logic y_out1,
    output logic y_out2,
    input wire in,
    input wire en
    );

    always_comb begin : latch_always_comb
        if(en) y_out1= in;
        else y_out1= 1'b0;
    end

    always_comb begin
        if(en) y_out2= in;

    end
endmodule

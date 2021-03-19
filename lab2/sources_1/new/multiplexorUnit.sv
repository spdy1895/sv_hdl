`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 19.03.2021 22:44:31
// Design Name: multiplexor
// Module Name: multiplexorUnit
// Project Name: multiplexor
// Target Devices: artix
// Tool Versions: 2020.2
// Description: a simple multiplexor using the always_comb block.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplexorUnit(
    output logic out,

    input logic in_a,
    input logic in_b,
    input logic sel_a
    );

    always_comb begin : mux
        if (sel_a== 1) out= in_b;
        else out= in_a;
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: open-source
// Engineer: shubham pandey
// 
// Create Date: 10.05.2021 10:48:27
// Design Name: 
// Module Name: resource_sharing
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: RTL description of multiplier with resource sharign.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module resource_sharing(
    output logic q1_out,
    output logic q2_out,
    input wire a_in,
    input wire b_in,
    input wire c_in,
    input wire d_in,
    input wire e_in,
    input wire f_in,
    input wire [1:0] sel_in
    );

    logic tmp_1, tmp_2, tmp_3, tmp_4;
    
    always_comb begin : resource_sharing_0
    if(sel_in[0]) begin
        tmp_1= a_in;
        tmp_2= b_in;
    end

    else begin
        tmp_1= c_in;
        tmp_2= d_in;
    end        
    end

    always_comb begin : resource_sharing_1
        if(sel_in[1]) begin
            tmp_3= e_in;
            tmp_4= f_in;
        end

        else begin
            tmp_3= a_in;
            tmp_4= b_in;
        end
    end

    assign q1_out= tmp_1*tmp_2;
    assign q2_out= tmp_3*tmp_4;

endmodule

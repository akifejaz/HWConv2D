`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2022 08:32:59 PM
// Design Name: 
// Module Name: Module_Conv2D
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


//assume 3 by 3 kernel and matrix
module Module_Conv2D#(
    parameter DATA_WIDTH        =   24,                      // size of each input element
    parameter NUM_ELEMS         =   3,                      // number of elements in a row or column
    parameter OUT_WIDTH         =   20 //DPU_OUT_WIDTH           // size of output of one DPU
    ) (
    input  			                    clk,  
    input  		        	            arst_n,

    // one row of a 3x3 of matrix a
    input  [DATA_WIDTH-1:0]               data, 
    // one row or column of a 3x3 of matrix B ? FIGURE OUT IF TRANSPOSE IS NEEDED
    input  [DATA_WIDTH-1:0]               kernal,

    input                                  acc_rst,

    // dot product produces single output
    output reg [OUT_WIDTH-1:0]             c_out                
    );

    // include sign extension in bit growth
    localparam PRODUCT_WIDTH = 2*(8);  // 8 * 2 = 16
    reg [PRODUCT_WIDTH-1:0]     product[0:NUM_ELEMS];
    reg [OUT_WIDTH-1:0]         dot_product;
    reg [OUT_WIDTH-1:0]         acc_out;

initial begin
    assign dot_product = product[0] + product[1] + product[2];
        // output the result
    assign c_out = acc_out;
end
    // accumulate the dot product
    always @(posedge clk or negedge arst_n) begin
        if (arst_n) begin
            acc_out <= 0;
        end else if (!acc_rst) begin
            acc_out <= acc_out + dot_product;
        end else begin
            acc_out <= acc_out + dot_product;
        end
    end

    // multiply the two inputs
    always @(posedge clk or negedge arst_n) begin
        if (arst_n) begin
            product[0] <= 0;
            product[1] <= 0;
            product[2] <= 0;
        end else begin
            product[0] <= data[7:0] * kernal[7:0];
            product[1] <= data[15:8] * kernal[15:8];
            product[2] <= data[23:16] * kernal[23:16];

            $display("product[0] = %b product[1] = %b product[2] = %b", product[0], product[1], product[2]);
            $display("data = %b kernal = %b", data, kernal);
        end
    end







endmodule

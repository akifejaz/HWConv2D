`timescale 1ns / 1ps

//This module is for multiplying 2 matrixes of size 3 by 3
module Module_MM3by3 #(
    parameter DATA_WIDTH        =   24,                      // size of each input element
    parameter NUM_ELEMS         =   3,                      // number of elements in a row or column
    parameter OUT_WIDTH         =   22 //DPU_OUT_WIDTH           // size of output of one DPU
    ) (
    input  			                    clk,  
    input  		        	            arst_n,

    // one row of a 3x3 of matrix a
    input  [DATA_WIDTH-1:0]               data_a,data_b,data_c, 
    // one row or column of a 3x3 of matrix B ? FIGURE OUT IF TRANSPOSE IS NEEDED
    input  [DATA_WIDTH-1:0]               kernal_a,kernal_b,kernal_c,

    input                                  acc_rst,

    // dot product produces single output
    output reg [OUT_WIDTH-1:0]             c_out                
    );

    /*
     Calling 2D convolution module
    */
    reg [23:0] data_r ; //3 numbers
    reg [23:0] kern_r ; //3 numbers
    wire [19:0] partial_out ;
    reg [1:0] count;    
    //call 2DConv module
    Module_Conv2D #(.DATA_WIDTH(24), .NUM_ELEMS(3), .OUT_WIDTH(20))
    conv (
        .clk(clk),
        .arst_n(arst_n),
        .data(data_r),
        .kernal(kern_r),
        .acc_rst(acc_rst),
        .c_out(partial_out)
    );
    
    // include sign extension in bit growth
    localparam PRODUCT_WIDTH = 2*(8);  // 8 * 2 = 16
    reg [PRODUCT_WIDTH-1:0]     product[0:NUM_ELEMS];
    reg [OUT_WIDTH-1:0]         dot_product;
    reg [OUT_WIDTH-1:0]         acc_out;

    initial begin  
        dot_product = 20'b0;      
        assign c_out = dot_product;

        count = 0;
    end
    // pass data_a, data_b, data_c to data_r and kernal_a, kernal_b, kernal_c to kern_r each time
    always @(posedge clk or negedge arst_n) begin
        if (arst_n) begin
            data_r <= 0;
            kern_r <= 0;
        end else begin
            case (count)
                0: begin
                    data_r <= data_a;
                    kern_r <= kernal_a;
                    count <= 1;
                end
                1: begin
                    data_r <= data_b;
                    kern_r <= kernal_b;
                    count <= 2;
                end
                2: begin
                    data_r <= data_c;
                    kern_r <= kernal_c;
                    count <= 0;
                end
            endcase
        end
    end

    always @(posedge clk or negedge arst_n) begin
        if (arst_n) begin
            dot_product <= 0;
        end else begin
            if (acc_rst) begin
                dot_product <= 0;
            end else begin
                dot_product <= partial_out + dot_product;
            end
        end
    end
endmodule

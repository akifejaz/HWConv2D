`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 12:08:18 PM
// Design Name: 
// Module Name: matrix_accumulator
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

module matrix_accumulator #(
    parameter DATA_WIDTH        =   8,                      // size of each input element
    parameter NUM_ELEMS         =   3,                      // number of elements in a row or column
    parameter OUT_WIDTH         =   20 //DPU_OUT_WIDTH           // size of output of one DPU
    ) (
    input  logic			                    clk,  
    input  logic		        	            arst_n,

    // one row of a 3x3 of matrix a
    input  logic [DATA_WIDTH-1:0]               row_a[NUM_ELEMS], 
    
    input  logic [DATA_WIDTH-1:0]               col_b[NUM_ELEMS],
    // 0: data a is unsigned
    input  logic                                is_signed_a,
    // 0: data b is unsigned
    input  logic                                is_signed_b,
    // 0: accumulate curent dot product with old dot product
    input  logic                                acc_rst,

    // dot product produces single output
    output logic signed [OUT_WIDTH-1:0]         c_out                
    );
    //////////////////////////////////////////////////////////////////////////////
    // Local Parameters
    //////////////////////////////////////////////////////////////////////////////
    
    // include sign extension in bit growth
    localparam PRODUCT_WIDTH = 2*(DATA_WIDTH+1);  // 2 * 8 + 1 = 17
    localparam DOT_PRODUCT_WIDTH = PRODUCT_WIDTH + $clog2(NUM_ELEMS);

    // Sign extension width: number of bits needed to add dot product to
    // register value 
    localparam SEXT_WIDTH = OUT_WIDTH - PRODUCT_WIDTH;
    
    //////////////////////////////////////////////////////////////////////////////
    // Functions
    //////////////////////////////////////////////////////////////////////////////
    
    //////////////////////////////////////////////////////////////////////////////
    // Signals
    //////////////////////////////////////////////////////////////////////////////
    //result of each multiplication
    logic signed [PRODUCT_WIDTH-1:0]     product[NUM_ELEMS];      
    // dot product before accumulation
    logic signed [OUT_WIDTH-1:0]         dot_product;           
    // accumulates current DPU result with previous results
    logic signed [OUT_WIDTH-1:0]         acc_out;

    ///////////////////////////////////////////////////////////////////////////////
    // Assignments and Instantiations
    //////////////////////////////////////////////////////////////////////////////

    /*mm_reduce #(
            .NUM_ELEMS(NUM_ELEMS),
            .IN_WIDTH(PRODUCT_WIDTH)) 
            u_reduce(
                .sum_in(product),
                .sum_out(dot_product)
            );*/
   
    assign c_out = acc_out;

    //////////////////////////////////////////////////////////////////////////////
    // Always Statements
    //////////////////////////////////////////////////////////////////////////////
    always_ff @(posedge clk or negedge arst_n)
    begin
        if(~arst_n)  //for compute value should be 1
        begin
            acc_out <= 0;
        end
        else
        begin
            // Accumulate current dot-product with previous dot-product
            // if rst, don't use accumulator value
            acc_out <= acc_rst ? dot_product : (acc_out + dot_product);
        end
    end
    
    always_comb
    begin
        for(int i = 0; i < NUM_ELEMS; i++)
        begin
            // Multiply each element of row_a and col_b, store as array of products
            // Sign extend each element before multiplying
            product[i] = $signed({is_signed_a & row_a[i][DATA_WIDTH-1], row_a[i]}) * 
                         $signed({is_signed_b & col_b[i][DATA_WIDTH-1], col_b[i]});       
        end
    end

    always_comb
    begin
        dot_product = 0;
        for(int i = 0; i < NUM_ELEMS; i++)
        begin
            // Sign extend dot-product so that it's the right size to accumulate
            dot_product = product[i] + dot_product;
        end
    end
    
endmodule
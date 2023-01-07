`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 12:54:56 PM
// Design Name: 
// Module Name: matrix_compute
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


module matrix_compute#
( 
	parameter  ARRAY_DIM    = 3,            // Dimension of ARRAY
	parameter  DATA_WIDTH   = 24,          // Width of an element of the input matrix * 3
	parameter  OUT_WIDTH    = 20           // Width of an element of the output matrix
)
(
    input  logic                        clk,
    input  logic	                    arst_n, 
	
	input  logic [DATA_WIDTH-1:0]       mat_a[ARRAY_DIM],     // input 3x3 array A
	input  logic [DATA_WIDTH-1:0]       mat_b[ARRAY_DIM],          
	
    input  logic                        res_rdy,    // result is ready
	output logic signed [OUT_WIDTH-1:0] data_c      // one element of output array C
    
);


    logic [7:0] data_rowa[ARRAY_DIM];   // 8 * 3 = 24 bits 
    logic [7:0] data_rowb[ARRAY_DIM];
    logic [7:0] data_rowc[ARRAY_DIM];

    logic [7:0] ker_rowa[ARRAY_DIM];
    logic [7:0] ker_rowb[ARRAY_DIM];
    logic [7:0] ker_rowc[ARRAY_DIM];


    always_comb begin
        data_rowa[0] = mat_a[0][7:0];
        data_rowa[1] = mat_a[0][15:8];
        data_rowa[2] = mat_a[0][23:16];

        data_rowb[0] = mat_a[1][7:0];
        data_rowb[1] = mat_a[1][15:8];
        data_rowb[2] = mat_a[1][23:16];

        data_rowc[0] = mat_a[2][7:0];
        data_rowc[1] = mat_a[2][15:8];
        data_rowc[2] = mat_a[2][23:16];

        ker_rowa[0] = mat_b[0][7:0];
        ker_rowa[1] = mat_b[0][15:8];
        ker_rowa[2] = mat_b[0][23:16];
        
        ker_rowb[0] = mat_b[1][7:0];
        ker_rowb[1] = mat_b[1][15:8];
        ker_rowb[2] = mat_b[1][23:16];

        ker_rowc[0] = mat_b[2][7:0];
        ker_rowc[1] = mat_b[2][15:8];
        ker_rowc[2] = mat_b[2][23:16];

//    for (int i = 0; i < 3; i = i+1) begin
//        data_rowa[i] = mat_a[0][8*i+7:8*i];
//        data_rowb[i] = mat_a[1][8*i+7:8*i];
//        data_rowc[i] = mat_a[2][8*i+7:8*i];
//        ker_rowa[i] = mat_b[0][8*i+7:8*i];
//        ker_rowb[i] = mat_b[1][8*i+7:8*i];
//        ker_rowc[i] = mat_b[2][8*i+7:8*i];
//  end
end

    logic [19:0] partial_out[ARRAY_DIM];
    
    // Generate DPU array
    generate
        matrix_accumulator #(.DATA_WIDTH(8), .NUM_ELEMS(3), .OUT_WIDTH(20))
        acc01 (
            .clk(clk),
            .arst_n(arst_n),
            .row_a(data_rowa),
            .col_b(ker_rowa),
            .is_signed_a(1'b0),
            .is_signed_b(1'b0),
            .acc_rst(1'b1),
            .c_out(partial_out[0])
        );

        matrix_accumulator #(.DATA_WIDTH(8), .NUM_ELEMS(3), .OUT_WIDTH(20))
        acc02 (
            .clk(clk),
            .arst_n(arst_n),
            .row_a(data_rowb),
            .col_b(ker_rowb),
            .is_signed_a(1'b0),
            .is_signed_b(1'b0),
            .acc_rst(1'b1),
            .c_out(partial_out[1])
        );

        matrix_accumulator #(.DATA_WIDTH(8), .NUM_ELEMS(3), .OUT_WIDTH(20))
        acc03 (
            .clk(clk),
            .arst_n(arst_n),
            .row_a(data_rowc),
            .col_b(ker_rowc),
            .is_signed_a(1'b0),
            .is_signed_b(1'b0),
            .acc_rst(1'b1),
            .c_out(partial_out[2])
        );
    endgenerate

    //////////////////////////////////////////////////////////////////////////////
    // Always Statements
    //////////////////////////////////////////////////////////////////////////////
    
    // Register DPU outputs
    always_ff @(posedge clk)
    begin 
        begin
            if(res_rdy)
            begin
              
                data_c <= partial_out[0] + partial_out[1] + partial_out[2];
//                $display("Data 0=%d, Data 1=%d, Data 2=%d",partial_out[0],partial_out[1],partial_out[2] );
            end
        end
    end

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 12:13:23 PM
// Design Name: 
// Module Name: test_matrix_accumulator
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

module test_matrix_accumulator;
  logic clk;
  logic rst_n;
  logic [7:0] A[0:2][0:2];
  logic [7:0] B[0:2][0:2];
  logic [19:0] result;
  logic result_ready;
  logic data_valid;

  matrix_compute uut (
    .clk(clk),
    .arst_n(rst_n),
    .mat_a(A),
    .mat_b(B),
    .res_rdy(result_ready),
    .data_c(result)
  );

    initial
    begin
    clk = 1'b0;
        forever
            clk = #5 ~clk;   
    end
    
  initial begin
    
    // Initialize matrices A and B
    A[0][0] = 8'h01;
    A[0][1] = 8'h02;
    A[0][2] = 8'h03;
    A[1][0] = 8'h04;
    A[1][1] = 8'h05;
    A[1][2] = 8'h06;
    A[2][0] = 8'h07;
    A[2][1] = 8'h08;
    A[2][2] = 8'h09;
    
    B[0][0] = 8'h01;
    B[0][1] = 8'h02;
    B[0][2] = 8'h03;
    B[1][0] = 8'h04;
    B[1][1] = 8'h05;
    B[1][2] = 8'h06;
    B[2][0] = 8'h07;
    B[2][1] = 8'h08;
    B[2][2] = 8'h09;
    
    rst_n = 1; #10;
    result_ready = 1;
    
    
  end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2022 09:05:50 PM
// Design Name: 
// Module Name: Module_2DConvTB
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

/* 
    Module_SRAM #(parameter IW = 512, L = 66, OW = 1650)(
        input clk,we,
        input [6:0] addr,     // 7 bits address for data read/write
        output reg [IW-1:0] din  // Output data from SRAM

    );
*/

module Module_2DConvTB(

    );

parameter ADDR_DATA     =   7;
parameter ADDR_KERNAL   =   3;
parameter IN_DATA_W     =   512;
parameter DATA_ROWS     =   66; //64 IN CASE OF READ & 66 IN CASE OF WRTIE

parameter IN_KERNAL_W   =   24;
parameter KERNAL_ROWS   =   3; //64 IN CASE OF READ & 66 IN CASE OF WRTIE

parameter OUT_DATA_W    =   1650;
parameter DATA_WIDTH    =   24;

// inputs
reg clk, we;
reg [ADDR_DATA-1:0] addr_data;
reg [ADDR_KERNAL-1:0] addr_kernal;

wire [IN_DATA_W-1:0]din_data;     // input data from SRAM single line
wire [IN_KERNAL_W-1:0]din_kernal; // input kernal from SRAM single line

//call SRAM module
Module_SRAM #(.IDW(IN_DATA_W), .IDL(DATA_ROWS), .ODW(OUT_DATA_W), .IKW(IN_KERNAL_W), .IKL(KERNAL_ROWS))
RAM(
    .clk(clk),
    .we(we),
    .addr_data(addr_data),
    .addr_kernal(addr_kernal),
    .din_data(din_data),
    .din_kernal(din_kernal)
);

/* 
    reg for conv data : Test01
*/
reg [23:0] data_r ; //3 numbers
reg [23:0] kern_r ; //3 numbers
wire [19:0] partial_out ;
reg arst_n;

//call 2DConv module
Module_Conv2D #(.DATA_WIDTH(24), .NUM_ELEMS(3), .OUT_WIDTH(20))
conv (
    .clk(clk),
    .arst_n(arst_n),
    .data(data_r),
    .kernal(kern_r),
    .acc_rst(1'b1),
    .c_out(partial_out)
);

// generate clock
initial
begin
    clk = 1'b0;
    forever
        clk = #5 ~clk;   
end

reg [23:0] kernal_d [0:2];
reg [19:0] conv_out;
reg [7:0]  value_a,value_b,value_c;
integer i,j;
initial begin
    clk = 1'b0; we = 1'b0; addr_data = 0; addr_kernal = 0; arst_n = 1; addr_data = 0; conv_out =0; addr_kernal = 0;
    value_a = 0; value_b = 0; value_c = 0;
    #10;
    /* 
        Test01
        For Readind data from SRAM
    */
    /* 
    // read data from SRAM
    for (i = 0; i < DATA_ROWS; i = i + 1) begin 
        addr_data = i; #10;        
        $display("[%d] DATA %b",i, din_data);
        $display("[%d] DATA [511:488] %b",i, din_data[511:488]);        
    end
    
    // read kernal from SRAM
    for (j = 0; j < KERNAL_ROWS; j = j + 1) begin 
        addr_kernal = j; #10;     
        $display("[%d] KERNAL %b",j, din_kernal);
        $display("[%d] KERNAL [23:16] %b",j, din_kernal[23:16]);         
        
    end
    */
    
    /* 
        Test02
        For 1 Iteration of 2DConv: 3 values of matrix and 3 values of kernal
    */
//    /* 
    //1st Rows of kernal and data matrix 
    $display("Iteration 01");   
    arst_n = 0;
    data_r = din_data[511:488]; 
    kern_r = din_kernal[23:0]; 
    #10;   
//    $display("[%d] KERNAL_DATA %b, DATA %b, OUTPUT %b",i, kern_r,data_r,partial_out); 
    $display("Partial out 01 %d" , partial_out); 
    conv_out = conv_out + partial_out;
    
    //2st Rows of kernal and data matrix
    $display("Iteration 02");
    addr_data = 1;
    addr_kernal = 1; #10; 
        
    arst_n = 0;
    data_r = din_data[511:488]; 
    kern_r = din_kernal[23:0]; 
    #10;   
//    $display("[%d] KERNAL_DATA %b, DATA %b, OUTPUT %b",i, kern_r,data_r,partial_out);
    $display("Partial out 02 %d" , partial_out);
    conv_out = conv_out + partial_out;
    
    //3st Rows of kernal and data matrix
    $display("Iteration 03");
    addr_data = 2;
    addr_kernal = 2; #10; 
        
    arst_n = 0;
    data_r = din_data[511:488]; 
    kern_r = din_kernal[23:0]; 
    #10;   
//    $display("[%d] KERNAL_DATA %b, DATA %b, OUTPUT %b",i, kern_r,data_r,partial_out);
    $display("Partial out 03 %d" , partial_out);
    conv_out = conv_out + partial_out;
    
    $display("Final Single out %d",conv_out);
    $finish;
//    */


    /* 
        Test03
        For 64 * 64 matrix and 3 * 3 kernal
    

    // read kernal from SRAM
    for (j = 0; j < KERNAL_ROWS; j = j + 1) begin 
        addr_kernal = j; #10;
        kernal_d[j] = din_kernal[23:0];     
        $display("[%d] KERNAL %b KERNAL_D %b",j, din_kernal,kernal_d[j]);        
        
    end


    for (i = 0; i < DATA_ROWS; i = i + 1) begin 
        addr_data = i ; #10;

        for (j = 0; j < DATA_ROWS; j = j + 1) begin 
            // saparate 24 bits from 512 bits each time
            data_r = din_data[DATA_WIDTH*j+23:DATA_WIDTH*j];


        end
    end
    */

    /* 
        Test04
        For 3 * 3 matrix and 3 * 3 kernal
    
    arst_n = 0; value_a = 10; value_b = 11; value_c = 12;
    //operation formet: MSB --- LSB * MSB --- LSB
    for(i = 0; i < 3; i = i + 1) begin
        data_r = {value_a, value_b, value_c};
//        kern_r = {value_a,value_a,value_a};  // result = 130
        kern_r = {value_a, value_b, value_c};  //result = 365
        
        #10;
        $display("[%d] KERNAL_DATA %b, DATA %b, OUTPUT %d",i, kern_r,data_r,partial_out);
        $finish;
    end
    
    */
end


endmodule

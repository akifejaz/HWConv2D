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

wire [IN_DATA_W-1:0]din_data; // input data from SRAM single line
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

integer i,j;
initial begin
    clk = 1'b0; we = 1'b0; addr_data = 0; addr_kernal = 0; arst_n = 1;

    /* 
        Test01
        For Readind data from SRAM
    */
    /*
    // read data from SRAM
    for (i = 0; i < DATA_ROWS; i = i + 1) begin 
        addr_data = i; #10;        
        $display("[%d] DATA %b",i, din_data);        
    end
    
    // read kernal from SRAM
    for (j = 0; j < KERNAL_ROWS; j = j + 1) begin 
        addr_kernal = j; #10;     
        $display("[%d] KERNAL %b",j, din_kernal);        
        
    end
    */
    
    /* 
        Test02
        For 1 Iteration of 2DConv: 3 values of matrix and 3 values of kernal
    */
    /*
    addr_data = 0;
    addr_kernal = 0; #10; 
        
    arst_n = 0;
    data_r = din_data[23:0]; 
    kern_r = din_kernal[23:0]; 
    $display("[%d] KERNAL_DATA %b, DATA %b, OUTPUT %b",i, kern_r,data_r,partial_out);
    #50;   
    $display("[%d] KERNAL_DATA %b, DATA %b, OUTPUT %b",i, kern_r,data_r,partial_out);  
    */

    /* 
        Test03
        For 64 * 64 matrix and 3 * 3 kernal
    */

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

end


endmodule

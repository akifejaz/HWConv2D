`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 01:22:55 PM
// Design Name: 
// Module Name: Static_RAM
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


module Static_RAM#( parameter IDW = 8, IDL = 4096, ODW = 3844, IKW = 8, IKL = 9)(
        input clk,we,
        input [11:0] addr_data_a,        // 12 bits address for data read/write
        input [11:0] addr_data_b,        // 12 bits address for data read/write
        input [2:0] addr_kernal,         // 3 bits address for kernal read/write
        
        output reg [IDW-1:0] din_data_a,      // Output data from SRAM
        output reg [IDW-1:0] din_data_b,      // Output data from SRAM
        output reg [IKW-1:0] din_kernal       // Output kernal from SRAM

);

    reg [IDW-1:0] Matrix [0:IDL-1];   // SRAM memory
    reg [IKW-1:0] Kernal [0:IKL-1];  // Kernal memory
    
    initial begin
        $readmemb ("D:/Akif/ITU/Semester 7/FYI-I/Vivado/Python_TestBench/conv2D/version2.0/conv_inputV2.txt",Matrix);
        $readmemb ("D:/Akif/ITU/Semester 7/FYI-I/Vivado/Python_TestBench/conv2D/version2.0/conv_kernalV2.txt",Kernal);
    end

      assign  din_data_a = Matrix[addr_data_a];
      assign  din_data_b = Matrix[addr_data_b];

    // Read kernal from SRAM
    always @(*) begin
        if (we) begin
            Kernal[addr_kernal] <= din_kernal;
        end
        else begin
            din_kernal <= Kernal[addr_kernal];
        end
    end
endmodule
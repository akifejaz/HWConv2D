`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2022 08:34:55 PM
// Design Name: 
// Module Name: Module_SRAM
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
    `timescale 1ns / 1ps
    module Memory#(parameter W = 15, X = 7, Y = 3)(clk, we, addr, din, dout); 
    input      clk, we;
    input      [W:0] dout;
    input      [X:0] addr;
    output reg [W:0] din;
    reg [W:0] M[0:255];   

    initial $readmemh("memory.mem", M); 
    always @ (posedge clk)
        if (we)
            M[addr] <= dout; 
        else 
            din <= M[addr];

    endmodule
*/

// IDW = Input Data Width
// IDL = Input Data Length
// IKW = Input kernal Width
// IKL = Input Kernal Length
// ODW = Output Data Width
module Module_SRAM #(parameter IDW = 512, IDL = 66, ODW = 1650, IKW = 24, IKL = 3)(
        input clk,we,
        input [6:0] addr_data,        // 7 bits address for data read/write

        input [IKL-1:0] addr_kernal,  // 3 bits address for kernal read/write
        output reg [IDW-1:0] din_data,      // Output data from SRAM
        output reg [IKW-1:0] din_kernal    // Output kernal from SRAM

);

    reg [IDW-1:0] Mem[0:IDL-1];   // SRAM memory
    reg [IKW-1:0] Kernal[0:IKL-1]; // Kernal memory
    initial begin
        $readmemb ("D:/Akif/ITU/Semester 7/FYI-I/Vivado/Python_TestBench/conv2D/conv_input.txt",Mem);
        $readmemb ("D:/Akif/ITU/Semester 7/FYI-I/Vivado/Python_TestBench/conv2D/conv_kernal.txt",Kernal);
    end

    // Read data from SRAM
    always @(posedge clk) begin
        if (we) begin
            Mem[addr_data] <= din_data;
        end
        else begin
            din_data <= Mem[addr_data];
        end
    end

    // Read kernal from SRAM
    always @(posedge clk) begin
        if (we) begin
            Kernal[addr_kernal] <= din_kernal;
        end
        else begin
            din_kernal <= Kernal[addr_kernal];
        end
    end
endmodule

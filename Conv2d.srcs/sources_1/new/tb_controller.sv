`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 03:39:53 PM
// Design Name: 
// Module Name: tb_controller
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


module tb_controller();

//inputs
logic clk;
logic start_comp;
logic [11:0] start_add;

logic [7:0] din_data_a;
logic read_flag;
logic stop_flag;
logic res_rdy;
logic [19:0] data_c;
logic [23:0]       mat_b[3];
logic pass_data ;
logic [3:0] counter;
logic [11:0] addr_data_a;

// input logic clk,                             // clock
// input logic start_comp,                      // start computation
// input logic [ADDR_DATA-1:0] start_add,       // start address
// input logic [23:0]       mat_b[3],            // kernal data direct from tb
// output logic [OUT_WIDTH-1:0] data_out,        // signle value out {3 * 3} * {3 * 3}

// //flags for debugging etc.
// output logic [DATA_WIDTH-1:0] din_data_a,    //data from ram/output because showing it in waveform
// output logic read_flag,                      // 1: reads 9 values after that stops reading
// output logic stop_flag,                      //1: means readed 9 values
// output logic res_rdy,                        //used in compute module 
// output logic pass_data,                       // 1: means passinig to conv2d for Mac operaion
// output logic [3:0] counter,           
// output logic [ADDR_DATA-1:0] addr_data_a      // address of curr data from ram   

conv2d_controller controller(
    .clk(clk),
    .start_comp(start_comp),
    .start_add(start_add),
    .mat_b(mat_b),
    .data_out(data_c),

    .din_data_a(din_data_a),
    .read_flag(read_flag),
    .stop_flag(stop_flag),
    .res_rdy(res_rdy),
    .pass_data(pass_data),
    .counter(counter),
    .addr_data_a(addr_data_a)
);

initial
begin
    clk = 1'b0;
    forever
        clk = #5 ~clk;   
end

logic [24:0] output_data[0:3844-1];
initial begin
    $readmemb("D:/Akif/ITU/Semester 7/FYI-I/Vivado/Python_TestBench/conv2D/version2.0/conv_outputV2.txt", output_data);
    $monitor("%d",data_c);
end

int count,fail;
initial begin
    
    start_comp = 1'b0; count = 0; #5;
    start_add = 12'h000;  start_comp = 1'b1; 
    
    //53 185  68
    mat_b[0] = {8'h0, 8'h1, 8'h2};
    //230  38 226
    mat_b[1] = {8'h0, 8'h1, 8'h2};
    //233  68  27
    mat_b[2] = {8'h0, 8'h1, 8'h2};#265;
    
    for(int i=0; i<3844; i=i+1) begin
        if(data_c != output_data[i]) begin
            $display("data_c = %d, output_data[%d] = %d", data_c, i, output_data[i]);
            fail = fail + 1;
        end
        count = count + 1;
        #130;
    end
    
    $display ("Matrix Dimentions 64 * 64 = 4096\nConvolution Matrix Dimentions 62 * 62 = 3844");
    $display("Total Values = %d, Wrong Match Count = %d", count, fail);
    $finish;
end
endmodule


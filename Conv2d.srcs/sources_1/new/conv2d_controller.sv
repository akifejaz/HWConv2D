`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 01:34:09 PM
// Design Name: 
// Module Name: conv2d_controller
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
    This modules has
        Controll addressing / the data that we send the mod_con2d 

*/

`timescale 1ns / 1ps

/*
    This modules has
        Controll addressing / the data that we send the mod_con2d 

*/
module conv2d_controller#(
    
    parameter DATA_WIDTH    =   8,          // size of each input element
    parameter ADDR_DATA     =   12,
    parameter ADDR_KERNAL   =   3,
    parameter IN_DATA_W     =   8,
    parameter DATA_ROWS     =   64 * 64,    //64 IN CASE OF READ & 66 IN CASE OF WRTIE
    parameter IN_KERNAL_W   =   8,
    parameter KERNAL_ROWS   =   3 * 3,      //64 IN CASE OF READ & 66 IN CASE OF WRTIE
    
    parameter NUM_ELEMS     =   3,
    parameter OUT_DATA_W    =   62 * 62,
    parameter ONE_ROW_LEN   =   64,          // 64 bits
    parameter  OUT_WIDTH    = 20
    
)
(
//    input logic clk,                             // clock
//    input logic start_comp,                      // start computation
//    input logic [ADDR_DATA-1:0] start_add,       // start address
    
//    output logic [DATA_WIDTH-1:0] din_data_a,    //data from ram/output because showing it in waveform
//    output logic read_flag,                      // 1: reads 9 values after that stops reading
//    output logic stop_flag,                      //1: means readed 9 values
//    output logic res_rdy,                        //used in compute module
    
//    output logic [OUT_WIDTH-1:0] data_out,        // signle value out {3 * 3} * {3 * 3}
    
//    input logic [23:0]       mat_b[3],            // kernal data direct from tb
//    output logic pass_data,                       // 1: means passinig to conv2d for Mac operaion
//    output logic [3:0] counter,           
//    output logic [ADDR_DATA-1:0] addr_data_a      // address of curr data from ram

    input logic clk,                             // clock
    input logic start_comp,                      // start computation
    input logic [ADDR_DATA-1:0] start_add,       // start address
    input logic [23:0]       mat_b[3],            // kernal data direct from tb
   output logic [OUT_WIDTH-1:0] data_out,        // signle value out {3 * 3} * {3 * 3}    
    
    //flags for debugging etc.
    output logic [DATA_WIDTH-1:0] din_data_a,    //data from ram/output because showing it in waveform
    output logic read_flag,                      // 1: reads 9 values after that stops reading
    output logic stop_flag,                      //1: means readed 9 values
    output logic res_rdy,                        //used in compute module 
    output logic pass_data,                       // 1: means passinig to conv2d for Mac operaion
    output logic [3:0] counter,           
    output logic [ADDR_DATA-1:0] addr_data_a      // address of curr data from ram       
);

//parameter


logic [ADDR_DATA-1:0] addr_data_b;
logic [ADDR_KERNAL-1:0] addr_kernal;
//logic [IN_DATA_W-1:0] din_data_a;
logic [IN_DATA_W-1:0] din_data_b;
logic [IN_KERNAL_W-1:0] din_kernal;
logic we;

//call SRAM module
Static_RAM #(.IDW(IN_DATA_W), .IDL(DATA_ROWS), .ODW(OUT_DATA_W), .IKW(IN_KERNAL_W), .IKL(KERNAL_ROWS))
RAM(
    .clk(clk),
    .we(we),
    .addr_data_a(addr_data_a),
    .addr_data_b(addr_data_b),    
    .addr_kernal(addr_kernal),
    
    .din_data_a(din_data_a),
    .din_data_b(din_data_b),
    .din_kernal(din_kernal)
);

logic [23:0]       mat_a[3];  // 3 * 3 matrix
// logic [23:0]       mat_b[3]; 

// logic res_rdy;
logic [19:0] data_c;
logic arst_n;

matrix_compute #(.ARRAY_DIM(3), .DATA_WIDTH(24), .OUT_WIDTH(20) )
comp
(
   .clk(clk),
   .arst_n(arst_n),
   .mat_a(mat_a),
   .mat_b(mat_b),
   .res_rdy(res_rdy),
   .data_c(data_c)
);

logic [IN_DATA_W-1:0] reg_data_a[3];  // 3 * 3 matrix
logic [IN_DATA_W-1:0] reg_data_b[3];
logic [IN_DATA_W-1:0] reg_data_c[3];
int res;

logic [ADDR_DATA-1:0] addr_rowa;
logic [ADDR_DATA-1:0] addr_rowb;
logic [ADDR_DATA-1:0] addr_rowc;
logic [6:0] row_count ; 

initial begin

    read_flag = 0;
    stop_flag = 1;
    res_rdy = 0;
    arst_n = 0;
    pass_data = 0;
    counter = 0;
    res = 0;
    row_count = 0;
    
end

reg [3:0] state, next_state;
parameter IDLE = 0, COL_CHANGE = 1, ROW_CHANGE = 2, READ_DATA = 3, COMPUTE = 4, WRITE_DATA = 5;

//always block for fsm
always @(posedge clk) begin
    case(state)
        IDLE: begin
            if(start_comp) begin

                addr_rowa = start_add ;
                addr_rowb = start_add + ONE_ROW_LEN ;
                addr_rowc = start_add + 2 * ONE_ROW_LEN ;
                
                if(~read_flag)begin
                    addr_data_a = 12'b0;
                    read_flag = 1; stop_flag = 0;
                    state = READ_DATA;
                end 
            end
        end
        
        COL_CHANGE : begin
            addr_rowa = addr_rowa + 1;
            addr_rowb = addr_rowb + 1;
            addr_rowc = addr_rowc + 1;
                                                        
            stop_flag = 0; 
            addr_data_a = addr_rowa;
            state = READ_DATA;
        end
        
        ROW_CHANGE : begin
            res = 0;
            addr_rowa = ( ONE_ROW_LEN - ONE_ROW_LEN ) + ONE_ROW_LEN;
            addr_rowb = ( start_add + ONE_ROW_LEN ) + ONE_ROW_LEN;
            addr_rowc = ( start_add + 2 * ONE_ROW_LEN ) + ONE_ROW_LEN;
            
            stop_flag = 0; 
            addr_data_a = addr_rowa;
            state = READ_DATA;
        end

        READ_DATA: begin
            if(read_flag && ~(stop_flag)) begin
                case(counter)
                    0: begin
                        reg_data_a[0] = din_data_a;
                        counter = counter + 1;
//                        addr_rowa = addr_rowa + 1;
                        addr_data_a <= addr_data_a + 1;
                    end
            
                    1: begin
                        reg_data_a[1] = din_data_a;                        
                        counter = counter + 1;
                        addr_data_a <= addr_data_a + 1;
                    end
            
                    2: begin
                        reg_data_a[2] = din_data_a;                        
                        counter = counter + 1;
                        addr_data_a = addr_rowb;  //start add for reading data from SRAM
                    end                    
                    
                    3:begin     
                        reg_data_b[0] = din_data_a;                        
                        counter = counter + 1;
                        addr_data_a <= addr_data_a + 1;
                    end
            
                    4:begin 
                        
                        reg_data_b[1] = din_data_a;
                        counter = counter + 1;
                        addr_data_a <= addr_data_a + 1;
                    end
            
                    5:begin 
                        
                        reg_data_b[2] = din_data_a;
                        counter = counter + 1;
                        addr_data_a = addr_rowc;  //start add for reading data from SRAM
                    end
                    
                    6:begin 
                        
                        reg_data_c[0] = din_data_a;
                        counter = counter + 1;
                        addr_data_a <= addr_data_a + 1;
                    end
            
                    7:begin 
                        
                        reg_data_c[1] = din_data_a;
                        counter = counter + 1;
                        addr_data_a <= addr_data_a + 1;
                    end
            
                    8:begin 
                        
                        reg_data_c[2] = din_data_a;
                        counter = counter + 1;       
                    end
                    default: begin
                        counter = 0;
                    end
                endcase
                
                 if(counter == 9) begin
                    stop_flag = 1;    
                 end
            end   
           else if(stop_flag) begin
                arst_n = 1;
                pass_data = 1;
                counter = 0; res_rdy = 1;
                state = COMPUTE;
            end
        end

        COMPUTE: begin
            //pass data to MAC 
            pass_data = 0; 
            
            if(~pass_data) begin
                state <= WRITE_DATA;
                arst_n = 1;
            end

        end

        WRITE_DATA: begin
            data_out <= data_c; 
            res = res + 1;
            if(res < 62)begin
                state = COL_CHANGE;
            end
            
            else begin
                row_count <= row_count + 1;
                state = ROW_CHANGE;
            end
            
            if(row_count > 62) begin
                state <= IDLE;
            end
            
        end

        default: begin
            state = IDLE;
        end

    endcase
end
always @ (pass_data)begin

    if(pass_data)begin 
        mat_a[0] = {reg_data_a[0], reg_data_a[1], reg_data_a[2]};
        mat_a[1] = {reg_data_b[0], reg_data_b[1], reg_data_b[2]};
        mat_a[2] = {reg_data_c[0], reg_data_c[1], reg_data_c[2]};
    end
    
end

endmodule
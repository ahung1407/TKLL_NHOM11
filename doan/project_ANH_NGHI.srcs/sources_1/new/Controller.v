`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 01:46:08 PM
// Design Name: 
// Module Name: Controller
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


module Controller(
    input wire clk,                 // Clock
    input wire rst,                 // Reset đồng bộ
    input wire [2:0] opcode,        // Opcode từ Instruction Register
    input wire is_zero,             // Tín hiệu Zero từ ALU
    output reg pc_enable,           // Điều khiển Program Counter
 //   output reg pc_select,
   // output reg signal,
    output reg mux_select,          // Điều khiển Address Mux
  //  output reg data_mem_read,            // Điều khiển đọc Memory
   // output reg data_mem_write,           // Điều khiển ghi Memory
   // output reg instruction_mem_read,
    output reg load_ir,             // Điều khiển nạp Instruction Register
  //  output reg alu_enable,          // Kích hoạt ALU
  //  output reg acc_write,           // Ghi kết quả vào Accumulator
 //   output reg acc_read,
//    output reg [3:0] state ,       // Trạng thái Controller
    output reg SKZ,
    output reg wr_en,
    output reg load_register,
    output reg JUMP
    );
        // Định nghĩa trạng thái
        reg [3:0] state;
        reg signal;
        reg [3:0] next_state;
    localparam IDLE        = 4'b0000,
               FETCH       = 4'b0001,
               DECODE      = 4'b0010,
               EXECUTE     = 4'b0011,
               MEM_ACCESS  = 4'b0100,
               WRITE_BACK  = 4'b0101,
               BRANCH      = 4'b0110,  // Thêm trạng thái BRANCH
               HALT        = 4'b0111;
//       reg signal;
//        reg [3:0] next_state;

    // Chuyển trạng thái
    always @(posedge clk ) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Logic điều khiển
    always @(posedge clk) begin
        // Giá trị mặc định
        pc_enable <= 0;
        mux_select <= 0;
        wr_en <= 0;
        load_ir <= 0;
        load_register <= 0;
        SKZ <= 0;
        JUMP <= 0;
        next_state <= IDLE;
    
        case (state)
            IDLE: begin
                $display("IDLE");
                pc_enable <= 0;
                next_state <= FETCH;
                mux_select <= 1;
            end
            FETCH: begin
                $display("FETCH");
                $display("Controller.v : %b", pc_enable);
                mux_select <= 1;
                load_ir <= 1;
                next_state <= DECODE;
                pc_enable <= 0;
            end
            DECODE: begin
                $display("DECODE");
                case (opcode)
                    3'b000: next_state <= HALT;
                    3'b111: next_state <= BRANCH;
                    3'b101, 3'b110: next_state <= MEM_ACCESS;
                    3'b001, 3'b010, 3'b011, 3'b100: next_state <= EXECUTE;
                    default: next_state <= IDLE;
                endcase
            end
            EXECUTE: begin
                $display("EXCUTE");
                mux_select <= 0;
                if (opcode == 3'b001) begin
                    SKZ <= 1;
                    next_state <= BRANCH;
                end else begin
                    next_state <= WRITE_BACK;
                end
            end
            MEM_ACCESS: begin
                $display("MEM_ACCESS");
                if (opcode == 3'b101)
                    wr_en <= 0;
                else
                    wr_en <= 1;
                next_state <= WRITE_BACK;
            end
            WRITE_BACK: begin
                $display("WRITE_BACK");
                if (opcode == 3'b101) begin
                    load_register <= 1;
                end else if (opcode == 3'b110) begin
                    wr_en <= 1;
                end else begin
                    load_register <= 1;
                end
                pc_enable <= 1;
                next_state <= FETCH;
            end
            BRANCH: begin
                $display("BRANCH");
                JUMP <= 1;
                next_state <= FETCH;
            end
            HALT: begin
                $display("HALT");
                next_state <= HALT;
            end
            default: next_state <= IDLE;
        endcase
    end
endmodule

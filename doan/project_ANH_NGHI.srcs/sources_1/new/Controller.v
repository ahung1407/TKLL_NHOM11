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
    output reg pc_select,
    output reg signal,
    output reg mux_select,          // Điều khiển Address Mux
    output reg data_mem_read,            // Điều khiển đọc Memory
    output reg data_mem_write,           // Điều khiển ghi Memory
    output reg instruction_mem_read,
    output reg load_ir,             // Điều khiển nạp Instruction Register
    output reg alu_enable,          // Kích hoạt ALU
    output reg acc_write,           // Ghi kết quả vào Accumulator
    output reg acc_read,
    output reg [3:0] state,        // Trạng thái Controller
    output reg SKZ
    );
        // Định nghĩa trạng thái
    localparam IDLE        = 4'b0000,
               FETCH       = 4'b0001,
               DECODE      = 4'b0010,
               EXECUTE     = 4'b0011,
               MEM_ACCESS  = 4'b0100,
               WRITE_BACK  = 4'b0101,
               BRANCH      = 4'b0110,  // Thêm trạng thái BRANCH
               HALT        = 4'b0111;

    reg [3:0] next_state;

    // Chuyển trạng thái
    always @(posedge clk ) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Logic điều khiển
    always @(posedge clk) begin
        // Mặc định tắt tất cả tín hiệu điều khiển
        pc_enable = 0;
        pc_select = 0;
        signal = 0;
        mux_select = 0;
        data_mem_read = 0;
        data_mem_write = 0;
        instruction_mem_read = 0;
        load_ir = 0;
        alu_enable = 0;
        acc_write = 0;
        acc_read = 0;
        next_state = IDLE;
        SKZ=0;

        case (state)
            IDLE: begin
                pc_enable = 0;
                next_state = FETCH;
            end
            FETCH: begin
                pc_enable = 1;         // Tăng PC
                mux_select = 1;        // Lấy địa chỉ từ PC
             instruction_mem_read = 1;          // Đọc lệnh từ Memory
                next_state = DECODE;
            end
            DECODE: begin
                load_ir = 1;           // Nạp lệnh vào Instruction Register
                case (opcode)
                    3'b000: next_state = HALT;        // Opcode HLT
                    3'b111: next_state = BRANCH;     // Opcode ALU
                    3'b101: next_state = MEM_ACCESS;  // Opcode Memory Access
                    3'b110: next_state = MEM_ACCESS; 
                    3'b001,3'b010, 3'b011, 3'b100: next_state = EXECUTE; // Các opcode thực thi
                    default: next_state = IDLE;       // Lỗi
                endcase
            end
            EXECUTE: begin
                mux_select = 0;
                acc_read = 1;
                data_mem_read = 1;
                alu_enable = 1;        // Kích hoạt ALU
                if(opcode == 3'b001) begin
                next_state = BRANCH;
                SKZ=1;
                end
               else next_state = WRITE_BACK;
            end
            MEM_ACCESS: begin
                if (opcode == 3'b101) data_mem_read =1;
                else   data_mem_write = 1;
                next_state = WRITE_BACK;
            end
            WRITE_BACK: begin
               if (opcode == 3'b101) begin
                   signal=0;
                   acc_write=1;
               end
               else if(opcode == 3'b110) acc_read=1;
               else begin
                   signal=1;
                   acc_write=1;
               end
               next_state = FETCH;
            end
            BRANCH: begin
            if(opcode == 001)begin
                if (is_zero) pc_select = 1;    
            end
            else pc_select = 1;
                next_state = FETCH;    // Quay lại vòng lặp
            end
            HALT: begin
                pc_enable = 0;         // Dừng PC
                next_state = HALT;     // Giữ trạng thái HALT
            end
            default: next_state = IDLE;
        endcase
    end
endmodule

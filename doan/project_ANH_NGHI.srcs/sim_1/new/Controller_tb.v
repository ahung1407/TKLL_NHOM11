`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 01:47:46 PM
// Design Name: 
// Module Name: Controller_tb
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






module Controller_tb;

    // Inputs
    reg clk;
    reg rst;
    reg [2:0] opcode;
    reg is_zero;

    // Outputs
    wire pc_enable;
    wire pc_select;
    wire signal;
    wire mux_select;
    wire data_mem_read;
    wire data_mem_write;
    wire instruction_mem_read;
    wire load_ir;
    wire alu_enable;
    wire acc_write;
    wire acc_read;
    wire [3:0] state;

    // Instantiate the Controller module
    Controller uut (
        .clk(clk),
        .rst(rst),
        .opcode(opcode),
        .is_zero(is_zero),
        .pc_enable(pc_enable),
        .pc_select(pc_select),
        .signal(signal),
        .mux_select(mux_select),
        .data_mem_read(data_mem_read),
        .data_mem_write(data_mem_write),
        .instruction_mem_read(instruction_mem_read),
        .load_ir(load_ir),
        .alu_enable(alu_enable),
        .acc_write(acc_write),
        .acc_read(acc_read),
        .state(state)
    );

    // Clock generation
    always #5 clk = ~clk; // Tạo xung nhịp với chu kỳ 10ns

    // Monitor signals
    initial begin
        $monitor(
            "Time: %0t | State: %b | Opcode: %b | is_zero: %b | pc_enable: %b | pc_select: %b | signal: %b | mux_select: %b | data_mem_read: %b | data_mem_write: %b | instruction_mem_read: %b | load_ir: %b | alu_enable: %b | acc_write: %b | acc_read: %b",
            $time, state, opcode, is_zero, pc_enable, pc_select, signal, mux_select, data_mem_read, data_mem_write, instruction_mem_read, load_ir, alu_enable, acc_write, acc_read
        );
    end

    // Testbench
    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;
        opcode = 3'b000;
        is_zero = 0;

        // Reset the Controller
        #50 
        rst = 0;

        // Test IDLE -> FETCH
        #5; // Chờ đến trạng thái FETCH

        // Test FETCH -> DECODE
        opcode = 3'b010; // Đặt opcode để kiểm tra DECODE và EXECUTE
        #10;

        // Test DECODE -> EXECUTE
        #10;

        // Test EXECUTE -> WRITE_BACK
        #10;
        
        #10;
        // Test WRITE_BACK -> FETCH
        opcode = 3'b101; // Đặt opcode để kiểm tra MEM_ACCESS
        #10;
        
        #10;
        
        #10;
        #10;
        // Test BRANCH với is_zero = 1
        opcode = 3'b110;
        #10;
        
        #10;
        
        #10;
        
        #10;
        opcode = 3'b001;
        is_zero = 0;
        #10;
        
        #10;
        
        #10;
        
        #10;
        // Test HALT
        opcode = 3'b111; // HALT opcode
        #10;
        #10;
        #10;
        
        opcode = 3'b000;
        #10;
        #10;
        #10;
        

        // Kết thúc mô phỏng
        $stop;
    end

endmodule



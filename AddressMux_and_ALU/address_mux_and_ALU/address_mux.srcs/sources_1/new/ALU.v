`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024
// Design Name: ALU
// Module Name: ALU
// Description: ALU thực hiện các phép toán số học và logic:
//              ADD, AND, XOR. Các phép toán này sử dụng accumulator và data memory.
// 
//////////////////////////////////////////////////////////////////////////////////

module ALU(
    input wire clk,                        // Clock signal for synchronization
    input wire [2:0] opcode,               // 3-bit opcode to select operation (ADD, AND, XOR)
    input wire [7:0] inB,                  // 8-bit input from memory (data memory)
    input wire [7:0] accumulator,          // 8-bit accumulator value
    output reg [7:0] ALU_result,           // ALU result (8-bit)
    output reg is_zero                     // Flag to check if ALU_result is zero
    );

    // Always block to handle ALU operation and check for zero result
    always @(posedge clk) begin
        // Default reset values
        ALU_result = 8'b0;
        is_zero = 1'b0;

        // Execute operation based on opcode
        case (opcode)
            3'b010: ALU_result = accumulator + inB;  // ADD
            3'b011: ALU_result = accumulator & inB;  // AND
            3'b100: ALU_result = accumulator ^ inB;  // XOR
            default: ALU_result = 8'b0;              // Default case (no operation)
        endcase

        // Check if result is zero for SKZ (Skip if Zero)
        if (ALU_result == 8'b0)
            is_zero = 1'b1;
    end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024
// Design Name: ALU Testbench
// Module Name: ALU_tb
// Description: Testbench để kiểm tra chức năng của ALU module
// 
//////////////////////////////////////////////////////////////////////////////////

//module ALU_tb;

//    // Inputs
//    reg clk;                             // Clock signal
//    reg [2:0] opcode;                    // 3-bit opcode to select operation (ADD, AND, XOR)
//    reg [7:0] inB;                       // 8-bit input from memory (data memory)
//    reg [7:0] accumulator;               // 8-bit accumulator value

//    // Outputs
//    wire [7:0] ALU_result;               // ALU result (8-bit)
//    wire is_zero;                        // Flag to check if ALU_result is zero

//    // Instantiate the ALU module
//    ALU uut (
//        .clk(clk),
//        .opcode(opcode),
//        .inB(inB),
//        .accumulator(accumulator),
//        .ALU_result(ALU_result),
//        .is_zero(is_zero)
//    );

//    // Clock signal for controlling the signals
//    always #5 clk = ~clk; // Clock period 10ns

//    // Task to display results
//    task display_state;
//        begin
//            $display("Time: %0t | opcode: %b | Accumulator: %d | inB: %d | ALU_result: %d | is_zero: %b",
//                     $time, opcode, accumulator, inB, ALU_result, is_zero);
//        end
//    endtask

//    // Test sequence
//    initial begin
//        // Initialize inputs
//        clk = 0;
//        opcode = 3'b000;            // Default opcode (no operation)
//        accumulator = 8'b00000001;  // Set initial value of Accumulator
//        inB = 8'b00000001;          // Set initial value of inB (data from memory)

//        // Global reset
//        #10;

//        // Test ADD: Accumulator = 1, inB = 1, so result = 2
//        opcode = 3'b010;            // ADD opcode
//        #10;
//        display_state();

//        // Test AND: Accumulator = 2, inB = 1, so result = 0 (binary: 0010 & 0001 = 0000)
//        opcode = 3'b011;            // AND opcode
//        inB = 8'b00000001;          // Set inB to 1
//        #10;
//        display_state();

//        // Test XOR: Accumulator = 2, inB = 1, so result = 3 (binary: 0010 ^ 0001 = 0011)
//        opcode = 3'b100;            // XOR opcode
//        inB = 8'b00000001;          // Set inB to 1
//        #10;
//        display_state();

//        // Test Zero result: Accumulator = 2, inB = 2, result should be 0 (binary: 0010 & 0010 = 0000)
//        opcode = 3'b011;            // AND opcode
//        inB = 8'b00000010;          // Set inB to 2
//        #10;
//        display_state();

//        // Test is_zero flag: Accumulator = 0, inB = 0, should result in 0
//        accumulator = 8'b00000000;
//        opcode = 3'b010;            // ADD opcode
//        inB = 8'b00000000;          // Set inB to 0
//        #10;
//        display_state();

//        // End of test
//        $stop;
//    end
//endmodule

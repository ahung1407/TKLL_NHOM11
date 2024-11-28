`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024
// Design Name: Address Mux
// Module Name: addr_mux
// Description: Multiplexer to select between Program Counter and Operand Address
// 
//////////////////////////////////////////////////////////////////////////////////

// Module Definition: Address Mux
module addr_mux(
    input [4:0] program_counter,       // 5-bit input from Program Counter
    input [4:0] operand_address_in,   // 5-bit input for Operand Address
    input mux_select,                 // Control signal to select input
    output reg [4:0] instruction_address, // Output to Instruction Memory
    output reg [4:0] operand_address_out, // Output to Data Memory
    input clk                         // Clock signal for synchronization
    );

    // Sử dụng xung clock để điều khiển sự thay đổi của các tín hiệu đầu ra
    always @(posedge clk) begin
        if (mux_select) begin
            instruction_address <= 5'b00000;       // No active output to instruction memory
            operand_address_out <= operand_address_in; // Select operand address
        end else begin
            instruction_address <= program_counter;    // Select program counter
            operand_address_out <= 5'b00000;       // No active output to operand memory
        end
    end

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Testbench for Address Mux with clocked logic
//////////////////////////////////////////////////////////////////////////////////

module addr_mux_tb;

    // Inputs to the module (declared as reg in testbench)
    reg [4:0] program_counter;        // 5-bit input for Program Counter
    reg [4:0] operand_address_in;    // 5-bit input for Operand Address
    reg mux_select;                  // 1-bit control signal
    reg clk;                         // Clock signal

    // Outputs from the module (declared as wire in testbench)
    wire [4:0] instruction_address;  // 5-bit output to Instruction Memory
    wire [4:0] operand_address_out;  // 5-bit output to Data Memory

    // Instantiate the addr_mux module
    addr_mux uut (
        .program_counter(program_counter),
        .operand_address_in(operand_address_in),
        .mux_select(mux_select),
        .instruction_address(instruction_address),
        .operand_address_out(operand_address_out),
        .clk(clk)
    );

    // Clock generation
    always #5 clk = ~clk;  // Generate a clock signal with 10 ns period

    // Testbench logic
    initial begin
        // Initialize inputs
        clk = 0;
        program_counter = 5'b00000;
        operand_address_in = 5'b00000;
        mux_select = 0;

        // Apply test cases
        #10;
        program_counter = 5'b10101;  // Test Case 1: Program Counter = 21
        operand_address_in = 5'b01010; // Operand Address = 10
        mux_select = 0;              // Select Program Counter
        #10;
        if (instruction_address !== 5'b10101 || operand_address_out !== 5'b00000)
            $display("Test Case 1 Failed!");

        #10;
        mux_select = 1;              // Test Case 2: Select Operand Address
        #10;
        if (instruction_address !== 5'b00000 || operand_address_out !== 5'b01010)
            $display("Test Case 2 Failed!");

        #10;
        program_counter = 5'b11111;  // Test Case 3: Change Program Counter and Operand Address
        operand_address_in = 5'b00111; 
        mux_select = 0;              // Select Program Counter
        #10;
        if (instruction_address !== 5'b11111 || operand_address_out !== 5'b00000)
            $display("Test Case 3 Failed!");

        #10;
        mux_select = 1;              // Select Operand Address
        #10;
        if (instruction_address !== 5'b00000 || operand_address_out !== 5'b00111)
            $display("Test Case 4 Failed!");

        // Finish simulation
        #10;
        $display("All test cases completed.");
        $stop;
    end

endmodule

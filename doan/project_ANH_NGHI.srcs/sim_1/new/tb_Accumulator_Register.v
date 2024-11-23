`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 08:05:24 PM
// Design Name: 
// Module Name: tb_Accumulator_Register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for Accumulator_Register module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_Accumulator_Register;

    // Testbench signals
    reg clk;
    reg reset;
    reg load_register;
    reg [7:0] data_in;
    wire [7:0] data_out;

    // Instantiate the Accumulator_Register module
    Accumulator_Register uut (
        .clk(clk),
        .reset(reset),
        .load_register(load_register),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Generate clock signal with a 10 time unit period
    always begin
        #5 clk = ~clk;  // Toggle clock every 5 units, 10 unit clock period
    end

    // Stimulus
    initial begin
        // Initialize signals
        clk = 0;
        reset = 0;
        load_register = 0;
        data_in = 8'b0000_0000;

        // Test 1: Reset the register
        $display("Test 1: Resetting Accumulator Register");
        reset = 1; #10;  // Assert reset
        reset = 0; #10;  // Deassert reset

        // Test 2: Load data into the register
        $display("Test 2: Loading data into Accumulator Register");
        data_in = 8'b1010_1010;  // Set data to 0xAA
        load_register = 1; #10;  // Load data into the register
        load_register = 0; #10;  // Deassert load_register

        // Test 3: Hold value without load
        $display("Test 3: Holding value without loading new data");
        data_in = 8'b0101_0101;  // Change data_in, but do not load
        #20;  // Wait to ensure data_out does not change

        // Test 4: Load new data
        $display("Test 4: Loading new data into Accumulator Register");
        data_in = 8'b1111_0000;  // Set data to 0xF0
        load_register = 1; #10;  // Load new data into the register
        load_register = 0; #10;  // Deassert load_register

        // Test 5: Reset the register again
        $display("Test 5: Resetting Accumulator Register again");
        reset = 1; #10;  // Assert reset
        reset = 0; #10;  // Deassert reset

        // Finish the simulation
        $finish;
    end

    // Monitor the outputs
    initial begin
        $monitor("At time %t, reset = %b, load_register = %b, data_in = %b, data_out = %b", 
                 $time, reset, load_register, data_in, data_out);
    end

endmodule

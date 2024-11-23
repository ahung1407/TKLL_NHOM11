`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 04:30:50 PM
// Design Name: 
// Module Name: tb_Program_Counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for the Program_Counter module with integrated PC_out
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_Program_Counter;

    // Testbench signals
    reg clk;
    reg reset;
    reg load;
    reg [4:0] PC_LOAD;
    wire [4:0] PC_out;

    // Instantiate the Program_Counter module
    Program_Counter uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .PC_LOAD(PC_LOAD),
        .PC_out(PC_out)
    );

    // Generate clock signal
    always begin
        #5 clk = ~clk;  // 10 time unit clock period
    end

    // Stimulus
    initial begin
        // Initialize signals
        clk = 0;
        reset = 0;
        load = 0;
        PC_LOAD = 5'b00000;

        // Test 1: Reset the PC
        $display("Test 1: Resetting PC");
        reset = 1; #10;
        reset = 0; #10;

        // Test 2: Increment by 1 (default behavior without load)
        $display("Test 2: Incrementing PC by 1");
        #10;  // Allow the PC to increment
        #10;  // Increment again
        #10;  // Increment once more

        // Test 3: Load a new PC value
        $display("Test 3: Loading new PC value");
        load = 1;
        PC_LOAD = 5'b10101; #10;  // Load value 21 into PC
        load = 0; #10;

        // Test 4: Continue incrementing after load
        $display("Test 4: Continue incrementing after load");
        #10;  // Increment by 1 after load
        #10;  // Increment again

        // Test 5: Reset and check PC
        $display("Test 5: Resetting PC again");
        reset = 1; #10;
        reset = 0; #10;

        // Finish the simulation
        $finish;
    end

    // Monitor the outputs
    initial begin
        $monitor("At time %t, reset = %b, load = %b, PC_LOAD = %b, PC_out = %b", 
                 $time, reset, load, PC_LOAD, PC_out);
    end

endmodule

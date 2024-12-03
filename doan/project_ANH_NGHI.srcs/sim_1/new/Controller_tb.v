`timescale 1ns / 1ps

module Controller_tb;

// Inputs
reg clk;
reg rst;
reg [2:0] opcode;
reg is_zero;

// Outputs
wire pc_enable;
wire mux_select;
wire load_ir;
wire SKZ;
wire wr_en;
wire load_register;
wire JUMP;

// Internal state observation
wire [3:0] state;

// Instantiate the Controller module
Controller uut (
    .clk(clk),
    .rst(rst),
    .opcode(opcode),
    .is_zero(is_zero),
    .pc_enable(pc_enable),
    .mux_select(mux_select),
    .load_ir(load_ir),
    .SKZ(SKZ),
    .wr_en(wr_en),
    .load_register(load_register),
    .JUMP(JUMP)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock period
end

// Test procedure
initial begin
    // Initialize inputs
    rst = 1; 
    opcode = 3'b000;
    is_zero = 0;

    // Wait for reset propagation
    #10;
    rst = 0;

    // Test IDLE -> FETCH transition
    #10; 
    $display("Testing IDLE -> FETCH");
    
    // Test FETCH -> DECODE transition
    opcode = 3'b100; // Set opcode for EXECUTE
    #10;
    $display("Testing FETCH -> DECODE");
    
    // Test DECODE -> EXECUTE transition
    #10;
    $display("Testing DECODE -> EXECUTE");

    // Test EXECUTE -> WRITE_BACK transition
    opcode = 3'b011; // Set opcode for memory write
    #10;
    $display("Testing EXECUTE -> WRITE_BACK");

    // Test WRITE_BACK -> FETCH transition
    #10;
    $display("Testing WRITE_BACK -> FETCH");

    // Test HALT state
    opcode = 3'b000; // HALT opcode
    #10;
    $display("Testing HALT state");

    // Test BRANCH transition
    opcode = 3'b111; // BRANCH opcode
    is_zero = 1; // Simulate a zero condition
    #10;
    $display("Testing BRANCH transition");

    // Finish simulation
    $stop;
end

endmodule

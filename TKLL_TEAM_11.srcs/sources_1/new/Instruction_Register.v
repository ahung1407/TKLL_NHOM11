//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 08:14:01 PM
// Design Name: 
// Module Name: Instruction_Register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: A register to hold an 8-bit instruction with separate outputs for
//              opcode and operand address.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Instruction_Register (
    input clk,                      // Clock signal
    input rst,                      // Synchronous reset signal, active-high
    input load_instruct,            // Load signal: when high, instruct_in is loaded into the register
    input [7:0] instruct_in,        // 8-bit input data containing opcode and operand address
    output reg [7:5] opcode,        // 3-bit opcode output (upper 3 bits of instruct_in)
    output reg [4:0] operand_address // 5-bit operand address output (lower 5 bits of instruct_in)
);

    // Process triggered by clock or reset
    always @(posedge clk or posedge rst) begin
     $display("IR");
        if (rst) begin
            // Reset all outputs to 0 if reset is high
            opcode <= 3'bzzz;
            operand_address <= 5'bzzzz;
        end else if (load_instruct) begin
            // Load data from instruct_in to outputs
            opcode <= instruct_in[7:5];          // Upper 3 bits are the opcode
            operand_address <= instruct_in[4:0]; // Lower 5 bits are the operand address
        end
        // If load_instruct is low, retain previous values
    end

endmodule
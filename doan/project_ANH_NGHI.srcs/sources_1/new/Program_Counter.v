//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 04:26:11 PM
// Design Name: 
// Module Name: Program_Counter
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

module Program_Counter (
    input clk,                  // Clock signal to synchronize the counter
    input reset,                // Synchronous reset signal, active-high
    input load,                 // Load signal: when high, the counter loads PC_LOAD
    input [4:0] PC_LOAD,        // Value to load into the counter if load is high
    output reg [4:0] PC_out     // Program counter input/output value
);

    wire [4:0] PC_plus_1;       // Output of the adder
    wire [4:0] mux_out;         // Output of the MUX

    // Adder to calculate PC + 1
    assign PC_plus_1 = PC_out + 5'b00001;  // Increment PC_out by 1

    // 2:1 MUX to select between load value or incremented value
    assign mux_out = (load) ? PC_LOAD : PC_plus_1;

    // Update PC_out based on reset, clk, and mux_out
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // When reset is activated, set PC_out to 0
            PC_out <= 5'b00000;
        end else begin
            // Otherwise, assign mux_out value to PC_out
            PC_out <= mux_out;
        end
    end

endmodule

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
    input pc_enable,
    input iszero,
    input SKZ,                 // Load signal: when high, the counter loads PC_LOAD
    input JUMP,
    input [4:0] PC_jump_addr,        // Value to load into the counter if load is high
    output reg [4:0] PC_out     // Program counter input/output value
);

  //  wire [4:0] PC_new;       // Output of the adder

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // When reset is activated, set PC_out to 0
            PC_out <= 5'b00000;
        end 
        else begin
            if (pc_enable) begin
                $display("PC.v: %b",pc_enable);
                if (SKZ && iszero) begin
                    PC_out <= PC_out + 5'b00010;
                end
                else if (JUMP) begin
                    PC_out <= PC_jump_addr;
                end
                else 
                    PC_out <= PC_out + 5'b00001;
            end
            else 
                PC_out <= PC_out;
        end
    end

endmodule

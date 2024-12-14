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
        // Execute operation based on opcode
          $display("run_ALU");
        case (opcode)
            3'b010: ALU_result <= accumulator + inB;  // ADD
            3'b011: ALU_result <= accumulator & inB;  // AND
            3'b100: ALU_result <= accumulator ^ inB;
            3'b101: ALU_result <= inB;  // XOR
            default: ALU_result <= 8'bz;              // Default case (no operation)
        endcase
    end
    // Always block to check if ALU_result is zero
    always @(ALU_result) begin
        if (ALU_result == 8'b0) 
            is_zero <= 1'b1;  // Set is_zero to 1 if result is zero
        else 
            is_zero <= 1'b0;  // Otherwise, set is_zero to 0
    end

endmodule
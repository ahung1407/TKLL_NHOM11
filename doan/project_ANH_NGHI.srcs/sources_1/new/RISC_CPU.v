module RISC_CPU (
    input wire clk,               // Clock signal
    input wire rst,               // Reset signal

    // Outputs for observation
    output wire [4:0] program_counter_out,  // Program Counter output
    output wire [4:0] operand_address_out,  // Operand Address output from addr_mux
    output wire [7:0] instruction,          // Instruction from Instruction Memory
    output wire [2:0] opcode,               // Opcode from Instruction Register
    output wire [4:0] operand_address,      // Operand address from Instruction Register
    output wire [7:0] memory_data,          // Data read from Data Memory
    output wire [7:0] alu_result,           // Result from ALU
    output wire is_zero,                    // Zero flag from ALU
    output wire [7:0] accumulator_out,      // Output from Accumulator Register

    // Control signals for observation
    output wire pc_enable,
    output wire mux_select,
    output wire load_register,
    output wire wr_en,
    output wire load_ir,
    output wire SKZ,
    output wire JUMP
);

    // Internal wires and registers
    wire [4:0] program_counter_out;    // Program Counter output
    wire [4:0] operand_address_out;    // Operand Address output from addr_mux
    wire [7:0] instruction;            // Instruction from Instruction Memory
    wire [2:0] opcode;                 // Opcode from Instruction Register
    wire [4:0] operand_address;        // Operand address from Instruction Register
    wire [7:0] memory_data;            // Data read from Data Memory
    wire [7:0] alu_result;             // Result from ALU
    wire is_zero;                      // Zero flag from ALU
    wire [7:0] accumulator_out;        // Output from Accumulator Register
    wire [4:0] instruction_address;    // Address for Instruction Memory

    // Control signals from Controller
    wire pc_enable;
    wire mux_select;
    wire load_register;
    wire wr_en;
    wire load_ir;
    wire SKZ;
    wire JUMP;

    // Instantiate Program Counter

    // Instantiate Address MUX
    addr_mux AMUX (
        .program_counter(program_counter_out),
        .operand_address_in(operand_address),
        .mux_select(mux_select),
        .instruction_address(instruction_address),
        .operand_address_out(operand_address_out),
        .clk(clk)
    );

    // Instantiate Instruction Memory
    instructionMemory IMEM (
        .clk(clk),
        .addr(instruction_address),
        .instruct(instruction)
    );

    // Instantiate Instruction Register
    Instruction_Register IR (
        .clk(clk),
        .rst(rst),
        .load_instruct(load_ir),
        .instruct_in(instruction),
        .opcode(opcode),
        .operand_address(operand_address)
    );

    // Instantiate Data Memory
    dataMemory DMEM (
        .clk(clk),
        .addr(operand_address_out),
        .data(memory_data),
        .wr_en(wr_en)
    );

    // Instantiate Accumulator Register
    Accumulator_Register ACC (
        .clk(clk),
        .reset(rst),
        .load_register(load_register),
        .data_in(alu_result),
        .data_out(accumulator_out)
    );

    // Instantiate ALU
    ALU ALU (
        .clk(clk),
        .opcode(opcode),
        .inB(memory_data),
        .accumulator(accumulator_out),
        .ALU_result(alu_result),
        .is_zero(is_zero)
    );

    // Instantiate Controller
    Controller CTRL (
        .clk(clk),
        .rst(rst),
        .opcode(opcode),
        .is_zero(is_zero),
        .pc_enable(pc_enable),
        .mux_select(mux_select),
        .wr_en(wr_en),
        .load_ir(load_ir),
        .load_register(load_register),
        .SKZ(SKZ),
        .JUMP(JUMP)
    );
     Program_Counter PC (
        .clk(clk),
        .reset(rst),
        .pc_enable(pc_enable),
        .PC_jump_addr(operand_address_out),
        .PC_out(program_counter_out),
        .iszero(is_zero),
        .SKZ(SKZ),
        .JUMP(JUMP)
    );

endmodule

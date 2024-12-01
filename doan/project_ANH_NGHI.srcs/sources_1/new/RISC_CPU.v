module RISC_CPU (
    input wire clk,               // Clock signal
    input wire rst                // Reset signal
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
    wire [7:0] alu_operand;            // Operand input for ALU

    // Control signals from Controller
    wire pc_enable, pc_select;
    wire mux_select, alu_enable;
    wire acc_write, acc_read;
    wire data_mem_read, data_mem_write;
    wire instruction_mem_read;
    wire load_ir;
    wire SKZ;

    // Instantiate Program Counter
    Program_Counter PC (
        .clk(clk),
        .reset(rst),
        .load(pc_select),
        .PC_LOAD(operand_address),
        .PC_out(program_counter_out),
        .iszero(is_zero),
        .SKZ(SKZ)
    );

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
        .wr_en(data_mem_write)
    );

    // Instantiate Accumulator Register
    Accumulator_Register ACC (
        .clk(clk),
        .reset(rst),
        .load_register(acc_write),
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
        .pc_select(pc_select),
        .mux_select(mux_select),
        .data_mem_read(data_mem_read),
        .data_mem_write(data_mem_write),
        .instruction_mem_read(instruction_mem_read),
        .load_ir(load_ir),
        .alu_enable(alu_enable),
        .acc_write(acc_write),
        .acc_read(acc_read),
        .state(),
        .SKZ(SKZ)
    );

    // Additional connections
    assign alu_operand = (data_mem_read) ? memory_data : 8'b0;

endmodule

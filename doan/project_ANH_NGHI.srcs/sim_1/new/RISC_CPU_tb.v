`timescale 1ns / 1ps

module RISC_CPU_tb;

    // Testbench signals
    reg clk;
    reg rst;

    // Outputs for observation
    wire [4:0] program_counter_out;
    wire [4:0] operand_address_out;
    wire [7:0] instruction;
    wire [2:0] opcode;
    wire [4:0] operand_address;
    wire [7:0] memory_data;
    wire [7:0] alu_result;
    wire is_zero;
    wire [7:0] accumulator_out;

    wire pc_enable;
    wire mux_select;
    wire load_register;
    wire wr_en;
    wire load_ir;
    wire SKZ;
    wire JUMP;

    // Instantiate the RISC_CPU module
    RISC_CPU uut (
        .clk(clk),
        .rst(rst),
        .program_counter_out(program_counter_out),
        .operand_address_out(operand_address_out),
        .instruction(instruction),
        .opcode(opcode),
        .operand_address(operand_address),
        .memory_data(memory_data),
        .alu_result(alu_result),
        .is_zero(is_zero),
        .accumulator_out(accumulator_out),
        .pc_enable(pc_enable),
        .mux_select(mux_select),
        .load_register(load_register),
        .wr_en(wr_en),
        .load_ir(load_ir),
        .SKZ(SKZ),
        .JUMP(JUMP)
    );

    // Clock generation (10ns clock period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize reset
        rst = 1;      // Assert reset
        #15 rst = 0;  // Release reset after 15ns

        // Wait for a few clock cycles to observe CPU operation
        #1000;

        // Finish simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0t | PC_out: %0d | Opcode: %b | Operand: %b | Accumulator: %0d | ALU_Result: %0d | Instr: %h | Data_Mem: %h | Wr_En: %b | Mux_Sel: %b | PC_En: %b | SKZ: %b | JUMP: %b",
                 $time, program_counter_out, opcode, operand_address, accumulator_out, alu_result, instruction,
                 memory_data, wr_en, mux_select, pc_enable, SKZ, JUMP);
    end

    // Initialize memory with test data
    initial begin
        // Example: Load instructions into instruction memory
        // This requires a pre-generated instruction memory file
//        $readmemb("instruction_file.mem", uut.IMEM.memory);

//        // Example: Load data into data memory
//        $readmemb("data_file.mem", uut.DMEM.memory);

        $display("Memory initialized.");
    end

endmodule

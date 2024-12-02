`timescale 1ns / 1ps

module RISC_CPU_tb;

    // Testbench signals
    reg clk;
    reg rst;

    // Instantiate the RISC_CPU module
    RISC_CPU uut (
        .clk(clk),
        .rst(rst)
    );

    // Clock generation: 10ns clock period (100MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5ns
    end

    // Reset and test sequence
    initial begin
        // Initialize reset
        rst = 1;
        #15; // Wait 15ns to observe reset behavior

        // Release reset
        rst = 0;
        
        // Wait for the CPU to execute a few cycles
        #1000;

        // Finish simulation
    end

    // Monitor outputs and states
    initial begin
        // Dump waveform for debugging
//        $dumpfile("RISC_CPU_tb.vcd");
//        $dumpvars(0, RISC_CPU_tb);
        
        // Monitor important signals
        $monitor("Time: %0t | PC_out: %0d | Opcode: %b | Operand: %b | Accumulator: %0d | ALU_Result: %0d | instruc: %h | data: %h | wr_en: %b |operand_address: %d | operand_address_out: %d | mux_select: %b | pc_enable: %b ",
                 $time, uut.program_counter_out, uut.opcode, uut.operand_address, uut.accumulator_out, uut.alu_result, uut.instruction,
                 uut.memory_data, uut.wr_en, uut.operand_address, uut.operand_address_out, uut.mux_select, uut.pc_enable);
    end

    // Load memory files
    initial begin
        // Load instructions into instruction memory
         $display("Đọc file thành công!");
        //$readmemb("instruction_file.mem", uut.IMEM.Imem);
        
        // Load initial data into data memory
        //$readmemb("data_init.mem", uut.DMEM.mem);
    end

endmodule

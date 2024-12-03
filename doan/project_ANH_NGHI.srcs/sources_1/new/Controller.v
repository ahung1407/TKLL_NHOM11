module Controller(
    input wire clk,                 // Clock
    input wire rst,                 // Reset đồng bộ
    input wire [2:0] opcode,        // Opcode từ Instruction Register
    input wire is_zero,             // Tín hiệu Zero từ ALU
    output reg pc_enable,           // Điều khiển Program Counter
    output reg mux_select,          // Điều khiển Address Mux
    output reg load_ir,             // Điều khiển nạp Instruction Register
    output reg SKZ,
    output reg wr_en,
    output reg load_register,
    output reg signal,
    output reg JUMP,
    output reg imem_enable,         // Enable tín hiệu cho Instruction Memory
    output reg dmem_enable,         // Enable tín hiệu cho Data Memory
    output reg alu_enable,          // Enable tín hiệu cho ALU
    output reg acc_enable           // Enable tín hiệu cho Accumulator
);

    // Định nghĩa trạng thái
    reg [3:0] state;
    localparam INIT        = 4'b0000,
               FETCH       = 4'b0001,
               DECODE      = 4'b0010,
               EXECUTE     = 4'b0011,
               WRITE_BACK  = 4'b0100,
               MEM_READ    = 4'b0101,
               LOAD_IR     = 4'b0110;

    // Chuyển trạng thái và logic điều khiển
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset state và các tín hiệu điều khiển
            state <= INIT;
            pc_enable <= 0;
            mux_select <= 0;
            wr_en <= 0;
            load_ir <= 0;
            load_register <= 0;
            SKZ <= 0;
            JUMP <= 0;
            imem_enable <= 1;
            dmem_enable <= 1;
            alu_enable <= 0;
            acc_enable <= 0;
            $display("State: INIT (Reset)");
        end else begin
            // FSM logic
            case (state)
                INIT: begin
                    // Reset và chuẩn bị chuyển sang FETCH
                    pc_enable <= 0;
                    mux_select <= 1;
                    imem_enable <= 1;
                    dmem_enable <= 1;
                    alu_enable <= 0;
                    acc_enable <= 0;
                    load_ir <= 1;
                    state <= FETCH;
                    $display("State: INIT");
                end

                FETCH: begin
                    // Kích hoạt các module liên quan đến giai đoạn FETCH
                    pc_enable <= 0;
                    mux_select <= 0;
                    imem_enable <= 1;
                    load_ir <= 1;
                    dmem_enable <= 1;
                    alu_enable <= 0;
                    acc_enable <= 0;
                    state <= LOAD_IR;
                    $display("State: FETCH");
                end
                LOAD_IR: begin
                    // Kích hoạt các module liên quan đến giai đoạn FETCH
                    pc_enable <= 0;
                    mux_select <= 0;
                    imem_enable <= 1;
                    load_ir <= 0;
                    dmem_enable <= 1;
                    alu_enable <= 0;
                    acc_enable <= 0;
                    state <= DECODE;
                    $display("State: LOAD_IR");
                end
                 DECODE: begin
                    // Kích hoạt các module liên quan đến giai đoạn FETCH
                    pc_enable <= 0;
                    mux_select <= 0;
                    imem_enable <= 1;
                    load_ir <= 0;
                    dmem_enable <= 1;
                    alu_enable <= 1;
                    acc_enable <= 0;
                    $display("MEM_READ");
                    case (opcode)
                        3'b001: begin
                            SKZ <= 1; // Skip if zero
                            $display("Opcode: SKZ (Skip if zero)");
                        end
                        3'b111: begin
                            state <= WRITE_BACK; // Branching operation
                            $display("Opcode: Branching");
                        end
                        default: begin
                        load_register<=0;
                        state <= EXECUTE; // Other operations
                        end
                    endcase
                end
                
                EXECUTE: begin
                    // Kích hoạt ALU và Accumulator cho giai đoạn EXECUTE
                    pc_enable <= 0;
                    mux_select <= 0;
                    imem_enable <= 0;
                    dmem_enable <= 1;
                    alu_enable <= 0;
                    acc_enable <= 1;
                    state <= WRITE_BACK;
                    load_register <= 1;
                    $display("State: EXECUTE");
                end

                WRITE_BACK: begin
                    // Kích hoạt ghi dữ liệu hoặc cập nhật trạng thái cuối cùng
                    pc_enable <= 1;
                    mux_select <= 1;
                    imem_enable <= 0;
                    dmem_enable <= 1;
                    alu_enable <= 0;
                    acc_enable <= 0;
                    load_register <= 0;
                    case (opcode)
                        3'b110: begin
                            wr_en<=1;
                            $display("Opcode: STO");
                        end
                        default: wr_en<=0; // Other operations
                    endcase
                    state <= FETCH; // Quay lại FETCH
                    $display("State: WRITE_BACK");
                end

                default: begin
                    state <= INIT; // Trạng thái an toàn
                    $display("State: DEFAULT (Unknown State)");
                end
            endcase
        end
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 10:20:18 PM
// Design Name: 
// Module Name: dataMemory
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


module dataMemory(
    input wire clk,                // Clock signal
    input wire [4:0] addr,         // 5-bit address bus
    inout wire [7:0] data,         // 8-bit bidirectional data bus
    input wire wr_en            // Write enable signal
);
    reg [7:0] mem [0:31];          // Define 32x8 memory
    reg [7:0] data_out;            // Register to hold read data
    
     // Initialize memory from external file
    initial begin
        $readmemb("data_init.mem", mem); // Load values from file
    end
    // Assign data bus for read/write operation
    assign data = (wr_en == 0) ? data_out : 8'bz; //set high impedance when not reading
    always @(posedge clk) begin
          $display("run_DATA");
        if (wr_en) begin
            // Write operation
            mem[addr] <= data;
        end else begin
            // Read operation
            data_out <= mem[addr];
        end
    end
endmodule
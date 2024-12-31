`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 07:56:24 PM
// Design Name: 
// Module Name: Accumulator_Register
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

module Accumulator_Register (
    input clk,
    input reset,
    input LDA,
    input load_register,          // Tín hiệu load, khi load = 1 thì giá trị đầu vào sẽ ghi vào thanh ghi
    input [7:0] data_in,          // Dữ liệu đầu vào 8-bit
    input [7:0] data_in2,          // Dữ liệu đầu vào 8-bit
    output reg [7:0] data_out     // Dữ liệu đầu ra 8-bit
);

    // Hoạt động khi có cạnh dương của clk hoặc tín hiệu reset
    always @(posedge clk or posedge reset) begin
      $display("ACCRES_PC");
        if (reset) begin
            data_out <= 8'b0000_0000;  // Đặt thanh ghi về 0 khi reset
        end else if (load_register) begin
            data_out <= data_in;       // Ghi giá trị data_in vào data_out khi load_register được bật
        end else if(LDA) begin
            data_out <= data_in2;
        end

        // Nếu load_register = 0, giữ nguyên giá trị hiện tại của data_out
    end

endmodule
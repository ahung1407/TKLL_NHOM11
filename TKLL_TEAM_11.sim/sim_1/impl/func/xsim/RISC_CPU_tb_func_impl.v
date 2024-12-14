// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Dec 13 21:28:04 2024
// Host        : DESKTOP-KJ2GVQA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Minh_Hung/good_test_bench/TKLL_TEAM_11.sim/sim_1/impl/func/xsim/RISC_CPU_tb_func_impl.v
// Design      : RISC_CPU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (data0,
    D,
    \PC_out_reg[0] ,
    JMP_reg,
    alu_result,
    SKZ_reg,
    Q,
    \ALU_result_tristate_oe_reg[3]_0 ,
    S,
    \PC_out_reg[3] ,
    \PC_out_reg[3]_0 ,
    JUMP,
    pc_enable_OBUF,
    SKZ,
    \data_out_reg[0] ,
    \ALU_result_tristate_oe_reg[7]_0 ,
    clk01_out);
  output [7:0]data0;
  output [1:0]D;
  output \PC_out_reg[0] ;
  output JMP_reg;
  output [7:0]alu_result;
  output SKZ_reg;
  input [6:0]Q;
  input [3:0]\ALU_result_tristate_oe_reg[3]_0 ;
  input [3:0]S;
  input [1:0]\PC_out_reg[3] ;
  input [3:0]\PC_out_reg[3]_0 ;
  input JUMP;
  input pc_enable_OBUF;
  input SKZ;
  input \data_out_reg[0] ;
  input [7:0]\ALU_result_tristate_oe_reg[7]_0 ;
  input clk01_out;

  wire ALU_result0_carry_n_0;
  wire [3:0]\ALU_result_tristate_oe_reg[3]_0 ;
  wire [7:0]\ALU_result_tristate_oe_reg[7]_0 ;
  wire \ALU_result_tristate_oe_reg_n_0_[0] ;
  wire \ALU_result_tristate_oe_reg_n_0_[1] ;
  wire \ALU_result_tristate_oe_reg_n_0_[2] ;
  wire \ALU_result_tristate_oe_reg_n_0_[3] ;
  wire \ALU_result_tristate_oe_reg_n_0_[4] ;
  wire \ALU_result_tristate_oe_reg_n_0_[5] ;
  wire \ALU_result_tristate_oe_reg_n_0_[6] ;
  wire \ALU_result_tristate_oe_reg_n_0_[7] ;
  wire [1:0]D;
  wire JMP_reg;
  wire JUMP;
  wire \PC_out[4]_i_5_n_0 ;
  wire \PC_out_reg[0] ;
  wire [1:0]\PC_out_reg[3] ;
  wire [3:0]\PC_out_reg[3]_0 ;
  wire [6:0]Q;
  wire [3:0]S;
  wire SKZ;
  wire SKZ_reg;
  wire [7:0]alu_result;
  wire clk01_out;
  wire [7:0]data0;
  wire \data_out_reg[0] ;
  wire pc_enable_OBUF;
  wire [2:0]NLW_ALU_result0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ALU_result0_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ALU_result0_carry
       (.CI(1'b0),
        .CO({ALU_result0_carry_n_0,NLW_ALU_result0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(data0[3:0]),
        .S(\ALU_result_tristate_oe_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ALU_result0_carry__0
       (.CI(ALU_result0_carry_n_0),
        .CO(NLW_ALU_result0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S(S));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_tristate_oe_reg[0] 
       (.C(clk01_out),
        .CE(1'b1),
        .D(\ALU_result_tristate_oe_reg[7]_0 [0]),
        .Q(\ALU_result_tristate_oe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_tristate_oe_reg[1] 
       (.C(clk01_out),
        .CE(1'b1),
        .D(\ALU_result_tristate_oe_reg[7]_0 [1]),
        .Q(\ALU_result_tristate_oe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_tristate_oe_reg[2] 
       (.C(clk01_out),
        .CE(1'b1),
        .D(\ALU_result_tristate_oe_reg[7]_0 [2]),
        .Q(\ALU_result_tristate_oe_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_tristate_oe_reg[3] 
       (.C(clk01_out),
        .CE(1'b1),
        .D(\ALU_result_tristate_oe_reg[7]_0 [3]),
        .Q(\ALU_result_tristate_oe_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_tristate_oe_reg[4] 
       (.C(clk01_out),
        .CE(1'b1),
        .D(\ALU_result_tristate_oe_reg[7]_0 [4]),
        .Q(\ALU_result_tristate_oe_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_tristate_oe_reg[5] 
       (.C(clk01_out),
        .CE(1'b1),
        .D(\ALU_result_tristate_oe_reg[7]_0 [5]),
        .Q(\ALU_result_tristate_oe_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_tristate_oe_reg[6] 
       (.C(clk01_out),
        .CE(1'b1),
        .D(\ALU_result_tristate_oe_reg[7]_0 [6]),
        .Q(\ALU_result_tristate_oe_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_tristate_oe_reg[7] 
       (.C(clk01_out),
        .CE(1'b1),
        .D(\ALU_result_tristate_oe_reg[7]_0 [7]),
        .Q(\ALU_result_tristate_oe_reg_n_0_[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \PC_out[1]_i_2 
       (.I0(\PC_out[4]_i_5_n_0 ),
        .I1(alu_result[0]),
        .I2(alu_result[1]),
        .I3(alu_result[2]),
        .O(SKZ_reg));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \PC_out[2]_i_1 
       (.I0(\PC_out_reg[3] [0]),
        .I1(\PC_out_reg[0] ),
        .I2(JMP_reg),
        .I3(\PC_out_reg[3]_0 [2]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \PC_out[3]_i_1 
       (.I0(\PC_out_reg[0] ),
        .I1(\PC_out_reg[3]_0 [2]),
        .I2(\PC_out_reg[3]_0 [3]),
        .I3(JMP_reg),
        .I4(\PC_out_reg[3] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h7777777F77777777)) 
    \PC_out[4]_i_3 
       (.I0(JUMP),
        .I1(pc_enable_OBUF),
        .I2(alu_result[2]),
        .I3(alu_result[1]),
        .I4(alu_result[0]),
        .I5(\PC_out[4]_i_5_n_0 ),
        .O(JMP_reg));
  LUT6 #(
    .INIT(64'hFFFF000200000000)) 
    \PC_out[4]_i_4 
       (.I0(\PC_out[4]_i_5_n_0 ),
        .I1(alu_result[0]),
        .I2(alu_result[1]),
        .I3(alu_result[2]),
        .I4(\PC_out_reg[3]_0 [0]),
        .I5(\PC_out_reg[3]_0 [1]),
        .O(\PC_out_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \PC_out[4]_i_5 
       (.I0(alu_result[3]),
        .I1(alu_result[4]),
        .I2(alu_result[5]),
        .I3(alu_result[6]),
        .I4(alu_result[7]),
        .I5(SKZ),
        .O(\PC_out[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[0]_i_2 
       (.I0(\ALU_result_tristate_oe_reg_n_0_[0] ),
        .I1(\data_out_reg[0] ),
        .O(alu_result[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[1]_i_2 
       (.I0(\ALU_result_tristate_oe_reg_n_0_[1] ),
        .I1(\data_out_reg[0] ),
        .O(alu_result[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[2]_i_2 
       (.I0(\ALU_result_tristate_oe_reg_n_0_[2] ),
        .I1(\data_out_reg[0] ),
        .O(alu_result[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[3]_i_2 
       (.I0(\ALU_result_tristate_oe_reg_n_0_[3] ),
        .I1(\data_out_reg[0] ),
        .O(alu_result[3]));
  (* \PinAttr:I0:HOLD_DETOUR  = "167" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[4]_i_2 
       (.I0(\ALU_result_tristate_oe_reg_n_0_[4] ),
        .I1(\data_out_reg[0] ),
        .O(alu_result[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[5]_i_2 
       (.I0(\ALU_result_tristate_oe_reg_n_0_[5] ),
        .I1(\data_out_reg[0] ),
        .O(alu_result[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[6]_i_2 
       (.I0(\ALU_result_tristate_oe_reg_n_0_[6] ),
        .I1(\data_out_reg[0] ),
        .O(alu_result[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[7]_i_4 
       (.I0(\ALU_result_tristate_oe_reg_n_0_[7] ),
        .I1(\data_out_reg[0] ),
        .O(alu_result[7]));
endmodule

module Accumulator_Register
   (D,
    Q,
    S,
    \data_out_reg[3]_0 ,
    O,
    dmem_data,
    \ALU_result_tristate_oe_reg[4] ,
    \ALU_result_tristate_oe_reg[4]_0 ,
    E,
    \data_out_reg[7]_0 ,
    CLK,
    AR);
  output [3:0]D;
  output [7:0]Q;
  output [3:0]S;
  output [3:0]\data_out_reg[3]_0 ;
  input [3:0]O;
  input [7:0]dmem_data;
  input \ALU_result_tristate_oe_reg[4] ;
  input \ALU_result_tristate_oe_reg[4]_0 ;
  input [0:0]E;
  input [7:0]\data_out_reg[7]_0 ;
  input CLK;
  input [0:0]AR;

  wire \ALU_result_tristate_oe_reg[4] ;
  wire \ALU_result_tristate_oe_reg[4]_0 ;
  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire [3:0]\data_out_reg[3]_0 ;
  wire [7:0]\data_out_reg[7]_0 ;
  wire [7:0]dmem_data;

  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry__0_i_1
       (.I0(Q[7]),
        .I1(dmem_data[7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry__0_i_2
       (.I0(Q[6]),
        .I1(dmem_data[6]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry__0_i_3
       (.I0(Q[5]),
        .I1(dmem_data[5]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry__0_i_4
       (.I0(Q[4]),
        .I1(dmem_data[4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry_i_1
       (.I0(Q[3]),
        .I1(dmem_data[3]),
        .O(\data_out_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry_i_2
       (.I0(Q[2]),
        .I1(dmem_data[2]),
        .O(\data_out_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry_i_3
       (.I0(Q[1]),
        .I1(dmem_data[1]),
        .O(\data_out_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry_i_4
       (.I0(Q[0]),
        .I1(dmem_data[0]),
        .O(\data_out_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'hCC3CC0AA)) 
    \ALU_result_tristate_oe[4]_i_1 
       (.I0(O[0]),
        .I1(dmem_data[4]),
        .I2(Q[4]),
        .I3(\ALU_result_tristate_oe_reg[4] ),
        .I4(\ALU_result_tristate_oe_reg[4]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hCC3CC0AA)) 
    \ALU_result_tristate_oe[5]_i_1 
       (.I0(O[1]),
        .I1(dmem_data[5]),
        .I2(Q[5]),
        .I3(\ALU_result_tristate_oe_reg[4] ),
        .I4(\ALU_result_tristate_oe_reg[4]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hCC3CC0AA)) 
    \ALU_result_tristate_oe[6]_i_1 
       (.I0(O[2]),
        .I1(dmem_data[6]),
        .I2(Q[6]),
        .I3(\ALU_result_tristate_oe_reg[4] ),
        .I4(\ALU_result_tristate_oe_reg[4]_0 ),
        .O(D[2]));
  (* \PinAttr:I2:HOLD_DETOUR  = "197" *) 
  LUT5 #(
    .INIT(32'hCC3CC0AA)) 
    \ALU_result_tristate_oe[7]_i_1 
       (.I0(O[3]),
        .I1(dmem_data[7]),
        .I2(Q[7]),
        .I3(\ALU_result_tristate_oe_reg[4] ),
        .I4(\ALU_result_tristate_oe_reg[4]_0 ),
        .O(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [7]),
        .Q(Q[7]));
endmodule

module Controller
   (pc_enable_OBUF,
    mux_select_reg_0,
    E,
    SKZ,
    wr_en,
    JUMP,
    load_register_reg_0,
    \FSM_onehot_state_reg[1]_0 ,
    Q,
    JMP_reg_0,
    pc_enable_reg_0,
    load_register_reg_1,
    data_in2,
    mux_select_reg_1,
    wr_en_reg_0,
    \opcode_OBUFT[2]_inst_i_1 ,
    clk01_out,
    imem_enable_reg_0,
    clk00_out,
    acc_enable_reg_0,
    CLK,
    AR,
    acc_enable_reg_1,
    SKZ_reg_0,
    wr_en_reg_1,
    JMP_reg_1,
    D,
    dmem_enable_reg_0,
    dmem_enable_reg_1,
    load_ir_reg_0,
    LDA_reg_0,
    pc_enable_reg_1,
    \PC_out_reg[0] ,
    \PC_out_reg[0]_0 ,
    \PC_out_reg[0]_1 ,
    \PC_out_reg[4] ,
    alu_result,
    LDA_reg_1,
    load_register_reg_2,
    \opcode_TRI[0] ,
    \data_out_reg[7] ,
    \data_out_reg[7]_0 ,
    clk_IBUF,
    lopt,
    lopt_1,
    lopt_2);
  output pc_enable_OBUF;
  output [0:0]mux_select_reg_0;
  output [0:0]E;
  output SKZ;
  output wr_en;
  output JUMP;
  output [0:0]load_register_reg_0;
  output \FSM_onehot_state_reg[1]_0 ;
  output [3:0]Q;
  output [0:0]JMP_reg_0;
  output [0:0]pc_enable_reg_0;
  output [7:0]load_register_reg_1;
  output [7:0]data_in2;
  output [0:0]mux_select_reg_1;
  output wr_en_reg_0;
  output \opcode_OBUFT[2]_inst_i_1 ;
  output clk01_out;
  output imem_enable_reg_0;
  output clk00_out;
  output acc_enable_reg_0;
  input CLK;
  input [0:0]AR;
  input acc_enable_reg_1;
  input SKZ_reg_0;
  input wr_en_reg_1;
  input JMP_reg_1;
  input [3:0]D;
  input dmem_enable_reg_0;
  input dmem_enable_reg_1;
  input load_ir_reg_0;
  input LDA_reg_0;
  input pc_enable_reg_1;
  input [0:0]\PC_out_reg[0] ;
  input \PC_out_reg[0]_0 ;
  input [0:0]\PC_out_reg[0]_1 ;
  input \PC_out_reg[4] ;
  input [7:0]alu_result;
  input LDA_reg_1;
  input load_register_reg_2;
  input \opcode_TRI[0] ;
  input [7:0]\data_out_reg[7] ;
  input [7:0]\data_out_reg[7]_0 ;
  input clk_IBUF;
  output lopt;
  output lopt_1;
  output lopt_2;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_5_n_0 ;
  wire \FSM_onehot_state[8]_i_6_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire [0:0]JMP_reg_0;
  wire JMP_reg_1;
  wire JUMP;
  wire LDA;
  wire LDA_i_1_n_0;
  wire LDA_reg_0;
  wire LDA_reg_1;
  wire [0:0]\PC_out_reg[0] ;
  wire \PC_out_reg[0]_0 ;
  wire [0:0]\PC_out_reg[0]_1 ;
  wire \PC_out_reg[4] ;
  wire [3:0]Q;
  wire SKZ;
  wire SKZ_reg_0;
  wire acc_enable;
  wire acc_enable_reg_0;
  wire acc_enable_reg_1;
  wire alu_enable;
  wire [7:0]alu_result;
  wire clk00_out;
  wire clk01_out;
  wire clk_IBUF;
  wire [7:0]data_in2;
  wire [7:0]\data_out_reg[7] ;
  wire [7:0]\data_out_reg[7]_0 ;
  wire dmem_enable;
  wire dmem_enable_i_1_n_0;
  wire dmem_enable_i_3_n_0;
  wire dmem_enable_reg_0;
  wire dmem_enable_reg_1;
  wire imem_enable;
  wire imem_enable_i_1_n_0;
  wire imem_enable_reg_0;
  wire load_ir_i_1_n_0;
  wire load_ir_reg_0;
  wire load_register;
  wire load_register_i_1_n_0;
  wire load_register_i_2_n_0;
  wire [0:0]load_register_reg_0;
  wire [7:0]load_register_reg_1;
  wire load_register_reg_2;
  wire mux_select_i_1_n_0;
  wire [0:0]mux_select_reg_0;
  wire [0:0]mux_select_reg_1;
  wire mux_select_reg_lopt_replica_1;
  wire \opcode_OBUFT[2]_inst_i_1 ;
  wire \opcode_TRI[0] ;
  wire pc_enable_OBUF;
  wire pc_enable_i_1_n_0;
  wire [0:0]pc_enable_reg_0;
  wire pc_enable_reg_1;
  wire pc_enable_reg_lopt_replica_1;
  wire wr_en;
  wire \^wr_en_reg_0 ;
  wire wr_en_reg_1;

  assign lopt = \^wr_en_reg_0 ;
  assign lopt_1 = mux_select_reg_lopt_replica_1;
  assign lopt_2 = pc_enable_reg_lopt_replica_1;
  LUT2 #(
    .INIT(4'h8)) 
    \ALU_result_tristate_oe[7]_i_2 
       (.I0(clk_IBUF),
        .I1(alu_enable),
        .O(clk01_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(load_ir_reg_0),
        .I2(LDA_reg_0),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[8]_i_5_n_0 ),
        .I5(\FSM_onehot_state[8]_i_6_n_0 ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[8]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(Q[2]),
        .O(\FSM_onehot_state[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[8]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\FSM_onehot_state[8]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .D(1'b0),
        .PRE(AR),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "WRITE_BACK:010000000,LOAD_ACC:001000000,ALU:000100000,FETCH:000000010,INIT:000000001,SKIZ:000010000,JUMP:100000000,LOAD_IR_DECODE:000000100,MEM_READ:000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    JMP_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(JMP_reg_1),
        .Q(JUMP));
  LUT6 #(
    .INIT(64'hFFFF5551AAAF0000)) 
    LDA_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(LDA_reg_1),
        .I3(LDA_reg_0),
        .I4(Q[2]),
        .I5(LDA),
        .O(LDA_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    LDA_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LDA_i_1_n_0),
        .Q(LDA));
  LUT5 #(
    .INIT(32'hFF8000F7)) 
    \PC_out[0]_i_1 
       (.I0(JUMP),
        .I1(pc_enable_OBUF),
        .I2(\PC_out_reg[0] ),
        .I3(\PC_out_reg[0]_0 ),
        .I4(\PC_out_reg[0]_1 ),
        .O(JMP_reg_0));
  LUT3 #(
    .INIT(8'h4F)) 
    \PC_out[4]_i_1 
       (.I0(AR),
        .I1(pc_enable_OBUF),
        .I2(\PC_out_reg[4] ),
        .O(pc_enable_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    SKZ_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(SKZ_reg_0),
        .Q(SKZ));
  FDCE #(
    .INIT(1'b0)) 
    acc_enable_reg
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(acc_enable_reg_1),
        .Q(acc_enable));
  FDCE #(
    .INIT(1'b0)) 
    alu_enable_reg
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(alu_enable));
  (* \PinAttr:I2:HOLD_DETOUR  = "846" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[0]_i_1 
       (.I0(alu_result[0]),
        .I1(load_register),
        .I2(data_in2[0]),
        .O(load_register_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[1]_i_1 
       (.I0(alu_result[1]),
        .I1(load_register),
        .I2(data_in2[1]),
        .O(load_register_reg_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[2]_i_1 
       (.I0(alu_result[2]),
        .I1(load_register),
        .I2(data_in2[2]),
        .O(load_register_reg_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[3]_i_1 
       (.I0(alu_result[3]),
        .I1(load_register),
        .I2(data_in2[3]),
        .O(load_register_reg_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_1 
       (.I0(alu_result[4]),
        .I1(load_register),
        .I2(data_in2[4]),
        .O(load_register_reg_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[5]_i_1 
       (.I0(alu_result[5]),
        .I1(load_register),
        .I2(data_in2[5]),
        .O(load_register_reg_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[6]_i_1 
       (.I0(alu_result[6]),
        .I1(load_register),
        .I2(data_in2[6]),
        .O(load_register_reg_1[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[7]_i_1 
       (.I0(load_register),
        .I1(LDA),
        .O(load_register_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[7]_i_1__0 
       (.I0(wr_en),
        .O(\^wr_en_reg_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "826" *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[7]_i_2 
       (.I0(alu_result[7]),
        .I1(load_register),
        .I2(data_in2[7]),
        .O(load_register_reg_1[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[7]_i_2__0 
       (.I0(clk_IBUF),
        .I1(dmem_enable),
        .O(clk00_out));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[7]_i_3 
       (.I0(clk_IBUF),
        .I1(acc_enable),
        .O(acc_enable_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    dmem_enable_i_1
       (.I0(dmem_enable_reg_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state[8]_i_5_n_0 ),
        .I3(\FSM_onehot_state[8]_i_6_n_0 ),
        .I4(dmem_enable_i_3_n_0),
        .I5(dmem_enable_reg_1),
        .O(dmem_enable_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    dmem_enable_i_3
       (.I0(Q[0]),
        .I1(LDA_reg_0),
        .O(dmem_enable_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    dmem_enable_reg
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .D(dmem_enable_i_1_n_0),
        .PRE(AR),
        .Q(dmem_enable));
  LUT3 #(
    .INIT(8'hFE)) 
    imem_enable_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state[8]_i_6_n_0 ),
        .O(imem_enable_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    imem_enable_reg
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .D(imem_enable_i_1_n_0),
        .PRE(AR),
        .Q(imem_enable));
  LUT2 #(
    .INIT(4'h8)) 
    \instruct[7]_i_1 
       (.I0(clk_IBUF),
        .I1(imem_enable),
        .O(imem_enable_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    load_ir_i_1
       (.I0(\FSM_onehot_state[8]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(load_ir_reg_0),
        .I3(LDA_reg_0),
        .I4(Q[0]),
        .I5(E),
        .O(load_ir_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    load_ir_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(load_ir_i_1_n_0),
        .Q(E));
  LUT6 #(
    .INIT(64'hFF01FF01FF00FE00)) 
    load_register_i_1
       (.I0(D[0]),
        .I1(load_register_i_2_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(Q[2]),
        .I4(load_register_reg_2),
        .I5(load_register),
        .O(load_register_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    load_register_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(load_register_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    load_register_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(load_register_i_1_n_0),
        .Q(load_register));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    mem_reg_0_31_0_0_i_1
       (.I0(wr_en),
        .I1(\data_out_reg[7] [0]),
        .I2(\data_out_reg[7]_0 [0]),
        .O(data_in2[0]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    mem_reg_0_31_1_1_i_1
       (.I0(wr_en),
        .I1(\data_out_reg[7] [1]),
        .I2(\data_out_reg[7]_0 [1]),
        .O(data_in2[1]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    mem_reg_0_31_2_2_i_1
       (.I0(wr_en),
        .I1(\data_out_reg[7] [2]),
        .I2(\data_out_reg[7]_0 [2]),
        .O(data_in2[2]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    mem_reg_0_31_3_3_i_1
       (.I0(wr_en),
        .I1(\data_out_reg[7] [3]),
        .I2(\data_out_reg[7]_0 [3]),
        .O(data_in2[3]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    mem_reg_0_31_4_4_i_1
       (.I0(wr_en),
        .I1(\data_out_reg[7] [4]),
        .I2(\data_out_reg[7]_0 [4]),
        .O(data_in2[4]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    mem_reg_0_31_5_5_i_1
       (.I0(wr_en),
        .I1(\data_out_reg[7] [5]),
        .I2(\data_out_reg[7]_0 [5]),
        .O(data_in2[5]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    mem_reg_0_31_6_6_i_1
       (.I0(wr_en),
        .I1(\data_out_reg[7] [6]),
        .I2(\data_out_reg[7]_0 [6]),
        .O(data_in2[6]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    mem_reg_0_31_7_7_i_1
       (.I0(wr_en),
        .I1(\data_out_reg[7] [7]),
        .I2(\data_out_reg[7]_0 [7]),
        .O(data_in2[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mux_select_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(D[0]),
        .O(mux_select_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mux_select_reg
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(mux_select_i_1_n_0),
        .Q(mux_select_reg_0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    mux_select_reg_lopt_replica
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(mux_select_i_1_n_0),
        .Q(mux_select_reg_lopt_replica_1));
  LUT2 #(
    .INIT(4'h2)) 
    \opcode_OBUFT[2]_inst_i_2 
       (.I0(\opcode_TRI[0] ),
        .I1(E),
        .O(\opcode_OBUFT[2]_inst_i_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \operand_address_out[4]_i_1 
       (.I0(mux_select_reg_0),
        .O(mux_select_reg_1));
  LUT6 #(
    .INIT(64'hFEEEEFEEEEEEEEEE)) 
    pc_enable_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(Q[2]),
        .I2(pc_enable_reg_1),
        .I3(dmem_enable_reg_1),
        .I4(LDA_reg_0),
        .I5(Q[0]),
        .O(pc_enable_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pc_enable_reg
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(pc_enable_i_1_n_0),
        .Q(pc_enable_OBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    pc_enable_reg_lopt_replica
       (.C(CLK),
        .CE(\FSM_onehot_state[8]_i_1_n_0 ),
        .CLR(AR),
        .D(pc_enable_i_1_n_0),
        .Q(pc_enable_reg_lopt_replica_1));
  LUT3 #(
    .INIT(8'hFE)) 
    wr_en_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(Q[3]),
        .I2(Q[1]),
        .O(\FSM_onehot_state_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(wr_en_reg_1),
        .Q(wr_en));
endmodule

module Instruction_Register
   (\data_out_reg[3] ,
    \opcode_OBUFT[2]_inst_i_1 ,
    \opcode_OBUFT[2]_inst_i_1_0 ,
    \opcode_OBUFT[2]_inst_i_1_1 ,
    \opcode_OBUFT[2]_inst_i_1_2 ,
    \opcode_OBUFT[2]_inst_i_1_3 ,
    \opcode_OBUFT[2]_inst_i_1_4 ,
    D,
    \opcode_OBUFT[2]_inst_i_1_5 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \opcode_OBUFT[2]_inst_i_1_6 ,
    \opcode_tristate_oe_reg[7]_0 ,
    data0,
    data_in2,
    Q,
    JMP_reg,
    SKZ,
    wr_en_reg,
    wr_en,
    JUMP,
    \opcode_TRI[0] ,
    E,
    \opcode_tristate_oe_reg[7]_1 ,
    CLK);
  output [3:0]\data_out_reg[3] ;
  output \opcode_OBUFT[2]_inst_i_1 ;
  output \opcode_OBUFT[2]_inst_i_1_0 ;
  output \opcode_OBUFT[2]_inst_i_1_1 ;
  output \opcode_OBUFT[2]_inst_i_1_2 ;
  output \opcode_OBUFT[2]_inst_i_1_3 ;
  output \opcode_OBUFT[2]_inst_i_1_4 ;
  output [3:0]D;
  output \opcode_OBUFT[2]_inst_i_1_5 ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output [4:0]\opcode_OBUFT[2]_inst_i_1_6 ;
  output [2:0]\opcode_tristate_oe_reg[7]_0 ;
  input [3:0]data0;
  input [3:0]data_in2;
  input [3:0]Q;
  input [3:0]JMP_reg;
  input SKZ;
  input wr_en_reg;
  input wr_en;
  input JUMP;
  input \opcode_TRI[0] ;
  input [0:0]E;
  input [7:0]\opcode_tristate_oe_reg[7]_1 ;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire [3:0]JMP_reg;
  wire JUMP;
  wire [3:0]Q;
  wire SKZ;
  wire [3:0]data0;
  wire [3:0]data_in2;
  wire [3:0]\data_out_reg[3] ;
  wire \opcode_OBUFT[2]_inst_i_1 ;
  wire \opcode_OBUFT[2]_inst_i_1_0 ;
  wire \opcode_OBUFT[2]_inst_i_1_1 ;
  wire \opcode_OBUFT[2]_inst_i_1_2 ;
  wire \opcode_OBUFT[2]_inst_i_1_3 ;
  wire \opcode_OBUFT[2]_inst_i_1_4 ;
  wire \opcode_OBUFT[2]_inst_i_1_5 ;
  wire [4:0]\opcode_OBUFT[2]_inst_i_1_6 ;
  wire \opcode_TRI[0] ;
  wire [2:0]\opcode_tristate_oe_reg[7]_0 ;
  wire [7:0]\opcode_tristate_oe_reg[7]_1 ;
  wire \operand_address_tristate_oe_reg_n_0_[0] ;
  wire \operand_address_tristate_oe_reg_n_0_[1] ;
  wire \operand_address_tristate_oe_reg_n_0_[2] ;
  wire \operand_address_tristate_oe_reg_n_0_[3] ;
  wire \operand_address_tristate_oe_reg_n_0_[4] ;
  wire wr_en;
  wire wr_en_reg;

  LUT5 #(
    .INIT(32'hCC3CC0AA)) 
    \ALU_result_tristate_oe[0]_i_1 
       (.I0(data0[0]),
        .I1(data_in2[0]),
        .I2(Q[0]),
        .I3(\opcode_OBUFT[2]_inst_i_1 ),
        .I4(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\data_out_reg[3] [0]));
  LUT5 #(
    .INIT(32'hCC3CC0AA)) 
    \ALU_result_tristate_oe[1]_i_1 
       (.I0(data0[1]),
        .I1(data_in2[1]),
        .I2(Q[1]),
        .I3(\opcode_OBUFT[2]_inst_i_1 ),
        .I4(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\data_out_reg[3] [1]));
  LUT5 #(
    .INIT(32'hCC3CC0AA)) 
    \ALU_result_tristate_oe[2]_i_1 
       (.I0(data0[2]),
        .I1(data_in2[2]),
        .I2(Q[2]),
        .I3(\opcode_OBUFT[2]_inst_i_1 ),
        .I4(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\data_out_reg[3] [2]));
  LUT5 #(
    .INIT(32'hCC3CC0AA)) 
    \ALU_result_tristate_oe[3]_i_1 
       (.I0(data0[3]),
        .I1(data_in2[3]),
        .I2(Q[3]),
        .I3(\opcode_OBUFT[2]_inst_i_1 ),
        .I4(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\data_out_reg[3] [3]));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I1(JMP_reg[0]),
        .I2(\opcode_OBUFT[2]_inst_i_1 ),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h282A)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(JMP_reg[0]),
        .I1(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I3(\opcode_OBUFT[2]_inst_i_1 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(JMP_reg[0]),
        .I1(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I2(\opcode_OBUFT[2]_inst_i_1 ),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(JMP_reg[0]),
        .I1(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I2(\opcode_OBUFT[2]_inst_i_1 ),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1 ),
        .O(\opcode_OBUFT[2]_inst_i_1_1 ));
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_state[8]_i_4 
       (.I0(\opcode_TRI[0] ),
        .I1(\opcode_tristate_oe_reg[7]_0 [1]),
        .O(\opcode_OBUFT[2]_inst_i_1_3 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "638" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_state[8]_i_7 
       (.I0(\opcode_TRI[0] ),
        .I1(\opcode_tristate_oe_reg[7]_0 [0]),
        .O(\opcode_OBUFT[2]_inst_i_1 ));
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_state[8]_i_8 
       (.I0(\opcode_TRI[0] ),
        .I1(\opcode_tristate_oe_reg[7]_0 [2]),
        .O(\opcode_OBUFT[2]_inst_i_1_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF008000)) 
    JMP_i_1
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I3(JMP_reg[0]),
        .I4(JMP_reg[3]),
        .I5(JUMP),
        .O(\FSM_onehot_state_reg[3]_3 ));
  LUT2 #(
    .INIT(4'h7)) 
    LDA_i_2
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1 ),
        .O(\opcode_OBUFT[2]_inst_i_1_5 ));
  LUT6 #(
    .INIT(64'hF0F0FFFFF0F00040)) 
    SKZ_i_1
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1 ),
        .I2(JMP_reg[0]),
        .I3(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I4(JMP_reg[1]),
        .I5(SKZ),
        .O(\FSM_onehot_state_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    acc_enable_i_1
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I3(JMP_reg[0]),
        .I4(JMP_reg[2]),
        .O(\FSM_onehot_state_reg[3] ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[7]_i_6 
       (.I0(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\opcode_OBUFT[2]_inst_i_1_2 ));
  LUT3 #(
    .INIT(8'h80)) 
    dmem_enable_i_2
       (.I0(JMP_reg[0]),
        .I1(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    load_register_i_3
       (.I0(\opcode_OBUFT[2]_inst_i_1 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_3 ),
        .O(\opcode_OBUFT[2]_inst_i_1_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_tristate_oe_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\opcode_tristate_oe_reg[7]_1 [5]),
        .Q(\opcode_tristate_oe_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_tristate_oe_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\opcode_tristate_oe_reg[7]_1 [6]),
        .Q(\opcode_tristate_oe_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_tristate_oe_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\opcode_tristate_oe_reg[7]_1 [7]),
        .Q(\opcode_tristate_oe_reg[7]_0 [2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[0]_i_1 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[0] ),
        .O(\opcode_OBUFT[2]_inst_i_1_6 [0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[1]_i_1 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[1] ),
        .O(\opcode_OBUFT[2]_inst_i_1_6 [1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[2]_i_1 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[2] ),
        .O(\opcode_OBUFT[2]_inst_i_1_6 [2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[3]_i_1 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[3] ),
        .O(\opcode_OBUFT[2]_inst_i_1_6 [3]));
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[4]_i_2 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[4] ),
        .O(\opcode_OBUFT[2]_inst_i_1_6 [4]));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_tristate_oe_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\opcode_tristate_oe_reg[7]_1 [0]),
        .Q(\operand_address_tristate_oe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_tristate_oe_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\opcode_tristate_oe_reg[7]_1 [1]),
        .Q(\operand_address_tristate_oe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_tristate_oe_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\opcode_tristate_oe_reg[7]_1 [2]),
        .Q(\operand_address_tristate_oe_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_tristate_oe_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\opcode_tristate_oe_reg[7]_1 [3]),
        .Q(\operand_address_tristate_oe_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_tristate_oe_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\opcode_tristate_oe_reg[7]_1 [4]),
        .Q(\operand_address_tristate_oe_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C0C7FBF0C0C0800)) 
    wr_en_i_1
       (.I0(\opcode_OBUFT[2]_inst_i_1_3 ),
        .I1(JMP_reg[0]),
        .I2(\opcode_OBUFT[2]_inst_i_1 ),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(wr_en_reg),
        .I5(wr_en),
        .O(\FSM_onehot_state_reg[3]_2 ));
endmodule

module Program_Counter
   (Q,
    JUMP,
    pc_enable_OBUF,
    \PC_out_reg[1]_0 ,
    \PC_out_reg[4]_0 ,
    \PC_out_reg[4]_1 ,
    \PC_out_reg[4]_2 ,
    E,
    CLK,
    AR,
    D);
  output [4:0]Q;
  input JUMP;
  input pc_enable_OBUF;
  input \PC_out_reg[1]_0 ;
  input [1:0]\PC_out_reg[4]_0 ;
  input \PC_out_reg[4]_1 ;
  input \PC_out_reg[4]_2 ;
  input [0:0]E;
  input CLK;
  input [0:0]AR;
  input [2:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire JUMP;
  wire \PC_out[1]_i_1_n_0 ;
  wire \PC_out[4]_i_2_n_0 ;
  wire \PC_out_reg[1]_0 ;
  wire [1:0]\PC_out_reg[4]_0 ;
  wire \PC_out_reg[4]_1 ;
  wire \PC_out_reg[4]_2 ;
  wire [4:0]Q;
  wire pc_enable_OBUF;

  LUT6 #(
    .INIT(64'h3333F66633330666)) 
    \PC_out[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(JUMP),
        .I3(pc_enable_OBUF),
        .I4(\PC_out_reg[1]_0 ),
        .I5(\PC_out_reg[4]_0 [0]),
        .O(\PC_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \PC_out[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\PC_out_reg[4]_1 ),
        .I3(Q[4]),
        .I4(\PC_out_reg[4]_2 ),
        .I5(\PC_out_reg[4]_0 [1]),
        .O(\PC_out[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\PC_out[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\PC_out[4]_i_2_n_0 ),
        .Q(Q[4]));
endmodule

(* ECO_CHECKSUM = "499a853f" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module RISC_CPU
   (clk,
    rst,
    program_counter_out,
    opcode,
    pc_enable,
    mux_select);
  input clk;
  input rst;
  output [4:0]program_counter_out;
  output [2:0]opcode;
  output pc_enable;
  output mux_select;

  wire ACC_n_0;
  wire ACC_n_1;
  wire ACC_n_12;
  wire ACC_n_13;
  wire ACC_n_14;
  wire ACC_n_15;
  wire ACC_n_16;
  wire ACC_n_17;
  wire ACC_n_18;
  wire ACC_n_19;
  wire ACC_n_2;
  wire ACC_n_3;
  wire ALU_n_10;
  wire ALU_n_11;
  wire ALU_n_20;
  wire ALU_n_8;
  wire ALU_n_9;
  wire CTRL_n_10;
  wire CTRL_n_11;
  wire CTRL_n_12;
  wire CTRL_n_13;
  wire CTRL_n_30;
  wire CTRL_n_32;
  wire CTRL_n_6;
  wire CTRL_n_7;
  wire CTRL_n_8;
  wire CTRL_n_9;
  wire IR_n_0;
  wire IR_n_1;
  wire IR_n_10;
  wire IR_n_11;
  wire IR_n_12;
  wire IR_n_13;
  wire IR_n_14;
  wire IR_n_15;
  wire IR_n_16;
  wire IR_n_17;
  wire IR_n_18;
  wire IR_n_19;
  wire IR_n_2;
  wire IR_n_3;
  wire IR_n_4;
  wire IR_n_5;
  wire IR_n_6;
  wire IR_n_7;
  wire IR_n_8;
  wire IR_n_9;
  wire JUMP;
  wire SKZ;
  wire [7:0]accumulator_out;
  wire [7:0]alu_result;
  wire clk;
  wire clk0;
  wire clk00_out;
  wire clk01_out;
  wire clk02_out;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data0;
  wire [7:0]data_out;
  wire \data_out_reg[7]_i_5_n_0 ;
  wire [7:0]dmem_data;
  wire [7:0]instruction;
  wire load_ir;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire mux_select;
  wire mux_select_OBUF;
  wire [2:0]opcode;
  wire [2:0]opcode_OBUF;
  wire \opcode_TRI[0] ;
  wire [4:0]operand_address;
  wire [4:0]operand_address_out;
  wire [7:0]p_0_out;
  wire [7:0]p_1_in;
  wire pc_enable;
  wire pc_enable_OBUF;
  wire [4:0]program_counter_out;
  wire [4:0]program_counter_out_OBUF;
  wire rst;
  wire rst_IBUF;
  wire wr_en;
  wire NLW_CTRL_wr_en_reg_0_UNCONNECTED;
  wire [0:0]NLW_DMEM_E_UNCONNECTED;

  Accumulator_Register ACC
       (.\ALU_result_tristate_oe_reg[4] (IR_n_4),
        .\ALU_result_tristate_oe_reg[4]_0 (IR_n_5),
        .AR(rst_IBUF),
        .CLK(clk0),
        .D({ACC_n_0,ACC_n_1,ACC_n_2,ACC_n_3}),
        .E(CTRL_n_6),
        .O(data0[7:4]),
        .Q(accumulator_out),
        .S({ACC_n_12,ACC_n_13,ACC_n_14,ACC_n_15}),
        .\data_out_reg[3]_0 ({ACC_n_16,ACC_n_17,ACC_n_18,ACC_n_19}),
        .\data_out_reg[7]_0 (p_1_in),
        .dmem_data(dmem_data));
  ALU ALU
       (.\ALU_result_tristate_oe_reg[3]_0 ({ACC_n_16,ACC_n_17,ACC_n_18,ACC_n_19}),
        .\ALU_result_tristate_oe_reg[7]_0 ({ACC_n_0,ACC_n_1,ACC_n_2,ACC_n_3,IR_n_0,IR_n_1,IR_n_2,IR_n_3}),
        .D({ALU_n_8,ALU_n_9}),
        .JMP_reg(ALU_n_11),
        .JUMP(JUMP),
        .\PC_out_reg[0] (ALU_n_10),
        .\PC_out_reg[3] (operand_address_out[3:2]),
        .\PC_out_reg[3]_0 (program_counter_out_OBUF[3:0]),
        .Q(accumulator_out[6:0]),
        .S({ACC_n_12,ACC_n_13,ACC_n_14,ACC_n_15}),
        .SKZ(SKZ),
        .SKZ_reg(ALU_n_20),
        .alu_result(alu_result),
        .clk01_out(clk01_out),
        .data0(data0),
        .\data_out_reg[0] (\data_out_reg[7]_i_5_n_0 ),
        .pc_enable_OBUF(pc_enable_OBUF));
  addr_mux AMUX
       (.CLK(clk_IBUF_BUFG),
        .D(operand_address),
        .E(CTRL_n_30),
        .Q(operand_address_out),
        .\instruction_address_reg[4]_0 (mux_select_OBUF),
        .\instruction_address_reg[4]_1 (program_counter_out_OBUF),
        .out(p_0_out));
  Controller CTRL
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({IR_n_10,IR_n_11,IR_n_12,IR_n_13}),
        .E(load_ir),
        .\FSM_onehot_state_reg[1]_0 (CTRL_n_7),
        .JMP_reg_0(CTRL_n_12),
        .JMP_reg_1(IR_n_19),
        .JUMP(JUMP),
        .LDA_reg_0(IR_n_8),
        .LDA_reg_1(IR_n_14),
        .\PC_out_reg[0] (operand_address_out[0]),
        .\PC_out_reg[0]_0 (ALU_n_20),
        .\PC_out_reg[0]_1 (program_counter_out_OBUF[0]),
        .\PC_out_reg[4] (ALU_n_11),
        .Q({CTRL_n_8,CTRL_n_9,CTRL_n_10,CTRL_n_11}),
        .SKZ(SKZ),
        .SKZ_reg_0(IR_n_17),
        .acc_enable_reg_0(clk0),
        .acc_enable_reg_1(IR_n_15),
        .alu_result(alu_result),
        .clk00_out(clk00_out),
        .clk01_out(clk01_out),
        .clk_IBUF(clk_IBUF),
        .data_in2(dmem_data),
        .\data_out_reg[7] (data_out),
        .\data_out_reg[7]_0 (accumulator_out),
        .dmem_enable_reg_0(IR_n_16),
        .dmem_enable_reg_1(IR_n_4),
        .imem_enable_reg_0(clk02_out),
        .load_ir_reg_0(IR_n_6),
        .load_register_reg_0(CTRL_n_6),
        .load_register_reg_1(p_1_in),
        .load_register_reg_2(IR_n_9),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .mux_select_reg_0(mux_select_OBUF),
        .mux_select_reg_1(CTRL_n_30),
        .\opcode_OBUFT[2]_inst_i_1 (CTRL_n_32),
        .\opcode_TRI[0] (\opcode_TRI[0] ),
        .pc_enable_OBUF(pc_enable_OBUF),
        .pc_enable_reg_0(CTRL_n_13),
        .pc_enable_reg_1(IR_n_5),
        .wr_en(wr_en),
        .wr_en_reg_0(NLW_CTRL_wr_en_reg_0_UNCONNECTED),
        .wr_en_reg_1(IR_n_18));
  dataMemory DMEM
       (.E(NLW_DMEM_E_UNCONNECTED[0]),
        .Q(operand_address_out),
        .clk00_out(clk00_out),
        .data_in2(dmem_data),
        .data_out(data_out),
        .lopt(lopt),
        .wr_en(wr_en));
  instructionMemory IMEM
       (.CLK(clk02_out),
        .D(p_0_out),
        .Q(instruction));
  Instruction_Register IR
       (.CLK(clk_IBUF_BUFG),
        .D({IR_n_10,IR_n_11,IR_n_12,IR_n_13}),
        .E(load_ir),
        .\FSM_onehot_state_reg[3] (IR_n_15),
        .\FSM_onehot_state_reg[3]_0 (IR_n_16),
        .\FSM_onehot_state_reg[3]_1 (IR_n_17),
        .\FSM_onehot_state_reg[3]_2 (IR_n_18),
        .\FSM_onehot_state_reg[3]_3 (IR_n_19),
        .JMP_reg({CTRL_n_8,CTRL_n_9,CTRL_n_10,CTRL_n_11}),
        .JUMP(JUMP),
        .Q(accumulator_out[3:0]),
        .SKZ(SKZ),
        .data0(data0[3:0]),
        .data_in2(dmem_data[3:0]),
        .\data_out_reg[3] ({IR_n_0,IR_n_1,IR_n_2,IR_n_3}),
        .\opcode_OBUFT[2]_inst_i_1 (IR_n_4),
        .\opcode_OBUFT[2]_inst_i_1_0 (IR_n_5),
        .\opcode_OBUFT[2]_inst_i_1_1 (IR_n_6),
        .\opcode_OBUFT[2]_inst_i_1_2 (IR_n_7),
        .\opcode_OBUFT[2]_inst_i_1_3 (IR_n_8),
        .\opcode_OBUFT[2]_inst_i_1_4 (IR_n_9),
        .\opcode_OBUFT[2]_inst_i_1_5 (IR_n_14),
        .\opcode_OBUFT[2]_inst_i_1_6 (operand_address),
        .\opcode_TRI[0] (\opcode_TRI[0] ),
        .\opcode_tristate_oe_reg[7]_0 (opcode_OBUF),
        .\opcode_tristate_oe_reg[7]_1 (instruction),
        .wr_en(wr_en),
        .wr_en_reg(CTRL_n_7));
  Program_Counter PC
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({ALU_n_8,ALU_n_9,CTRL_n_12}),
        .E(CTRL_n_13),
        .JUMP(JUMP),
        .\PC_out_reg[1]_0 (ALU_n_20),
        .\PC_out_reg[4]_0 ({operand_address_out[4],operand_address_out[1]}),
        .\PC_out_reg[4]_1 (ALU_n_10),
        .\PC_out_reg[4]_2 (ALU_n_11),
        .Q(program_counter_out_OBUF),
        .pc_enable_OBUF(pc_enable_OBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b1)) 
    \data_out_reg[7]_i_5 
       (.C(clk01_out),
        .CE(1'b1),
        .D(IR_n_7),
        .Q(\data_out_reg[7]_i_5_n_0 ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF mux_select_OBUF_inst
       (.I(lopt_1),
        .O(mux_select));
  OBUFT \opcode_OBUFT[0]_inst 
       (.I(opcode_OBUF[0]),
        .O(opcode[0]),
        .T(\opcode_TRI[0] ));
  OBUFT \opcode_OBUFT[1]_inst 
       (.I(opcode_OBUF[1]),
        .O(opcode[1]),
        .T(\opcode_TRI[0] ));
  OBUFT \opcode_OBUFT[2]_inst 
       (.I(opcode_OBUF[2]),
        .O(opcode[2]),
        .T(\opcode_TRI[0] ));
  FDPE #(
    .INIT(1'b0)) 
    \opcode_OBUFT[2]_inst_i_1 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CTRL_n_32),
        .PRE(rst_IBUF),
        .Q(\opcode_TRI[0] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF pc_enable_OBUF_inst
       (.I(lopt_2),
        .O(pc_enable));
  OBUF \program_counter_out_OBUF[0]_inst 
       (.I(program_counter_out_OBUF[0]),
        .O(program_counter_out[0]));
  OBUF \program_counter_out_OBUF[1]_inst 
       (.I(program_counter_out_OBUF[1]),
        .O(program_counter_out[1]));
  OBUF \program_counter_out_OBUF[2]_inst 
       (.I(program_counter_out_OBUF[2]),
        .O(program_counter_out[2]));
  OBUF \program_counter_out_OBUF[3]_inst 
       (.I(program_counter_out_OBUF[3]),
        .O(program_counter_out[3]));
  OBUF \program_counter_out_OBUF[4]_inst 
       (.I(program_counter_out_OBUF[4]),
        .O(program_counter_out[4]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module addr_mux
   (Q,
    out,
    E,
    D,
    CLK,
    \instruction_address_reg[4]_0 ,
    \instruction_address_reg[4]_1 );
  output [4:0]Q;
  output [7:0]out;
  input [0:0]E;
  input [4:0]D;
  input CLK;
  input [0:0]\instruction_address_reg[4]_0 ;
  input [4:0]\instruction_address_reg[4]_1 ;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [4:0]instruction_address;
  wire [0:0]\instruction_address_reg[4]_0 ;
  wire [4:0]\instruction_address_reg[4]_1 ;
  wire [7:0]out;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40110040)) 
    g0_b0
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40110949)) 
    g0_b1
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00043401)) 
    g0_b2
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00113D49)) 
    g0_b3
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00153C49)) 
    g0_b4
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h412669D9)) 
    g0_b5
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h41041501)) 
    g0_b6
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h41153D49)) 
    g0_b7
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_address_reg[0] 
       (.C(CLK),
        .CE(\instruction_address_reg[4]_0 ),
        .D(\instruction_address_reg[4]_1 [0]),
        .Q(instruction_address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_address_reg[1] 
       (.C(CLK),
        .CE(\instruction_address_reg[4]_0 ),
        .D(\instruction_address_reg[4]_1 [1]),
        .Q(instruction_address[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_address_reg[2] 
       (.C(CLK),
        .CE(\instruction_address_reg[4]_0 ),
        .D(\instruction_address_reg[4]_1 [2]),
        .Q(instruction_address[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_address_reg[3] 
       (.C(CLK),
        .CE(\instruction_address_reg[4]_0 ),
        .D(\instruction_address_reg[4]_1 [3]),
        .Q(instruction_address[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_address_reg[4] 
       (.C(CLK),
        .CE(\instruction_address_reg[4]_0 ),
        .D(\instruction_address_reg[4]_1 [4]),
        .Q(instruction_address[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \operand_address_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
endmodule

module dataMemory
   (data_out,
    E,
    clk00_out,
    data_in2,
    wr_en,
    Q,
    lopt);
  output [7:0]data_out;
  input [0:0]E;
  input clk00_out;
  input [7:0]data_in2;
  input wr_en;
  input [4:0]Q;
  input lopt;

  wire [4:0]Q;
  wire clk00_out;
  wire [7:0]data_in2;
  wire [7:0]data_out;
  wire [7:0]data_out0;
  wire lopt;
  wire wr_en;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk00_out),
        .CE(lopt),
        .D(data_out0[0]),
        .Q(data_out[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk00_out),
        .CE(lopt),
        .D(data_out0[1]),
        .Q(data_out[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk00_out),
        .CE(lopt),
        .D(data_out0[2]),
        .Q(data_out[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk00_out),
        .CE(lopt),
        .D(data_out0[3]),
        .Q(data_out[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk00_out),
        .CE(lopt),
        .D(data_out0[4]),
        .Q(data_out[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk00_out),
        .CE(lopt),
        .D(data_out0[5]),
        .Q(data_out[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk00_out),
        .CE(lopt),
        .D(data_out0[6]),
        .Q(data_out[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk00_out),
        .CE(lopt),
        .D(data_out0[7]),
        .Q(data_out[7]),
        .R(1'b0));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "DMEM/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h08000000)) 
    mem_reg_0_31_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(data_in2[0]),
        .O(data_out0[0]),
        .WCLK(clk00_out),
        .WE(wr_en));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "DMEM/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h18000000)) 
    mem_reg_0_31_1_1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(data_in2[1]),
        .O(data_out0[1]),
        .WCLK(clk00_out),
        .WE(wr_en));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "DMEM/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h08000000)) 
    mem_reg_0_31_2_2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(data_in2[2]),
        .O(data_out0[2]),
        .WCLK(clk00_out),
        .WE(wr_en));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "DMEM/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h18000000)) 
    mem_reg_0_31_3_3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(data_in2[3]),
        .O(data_out0[3]),
        .WCLK(clk00_out),
        .WE(wr_en));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "DMEM/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h08000000)) 
    mem_reg_0_31_4_4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(data_in2[4]),
        .O(data_out0[4]),
        .WCLK(clk00_out),
        .WE(wr_en));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "DMEM/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h18000000)) 
    mem_reg_0_31_5_5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(data_in2[5]),
        .O(data_out0[5]),
        .WCLK(clk00_out),
        .WE(wr_en));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "DMEM/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h08000000)) 
    mem_reg_0_31_6_6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(data_in2[6]),
        .O(data_out0[6]),
        .WCLK(clk00_out),
        .WE(wr_en));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "DMEM/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h18000000)) 
    mem_reg_0_31_7_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(data_in2[7]),
        .O(data_out0[7]),
        .WCLK(clk00_out),
        .WE(wr_en));
endmodule

module instructionMemory
   (Q,
    D,
    CLK);
  output [7:0]Q;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

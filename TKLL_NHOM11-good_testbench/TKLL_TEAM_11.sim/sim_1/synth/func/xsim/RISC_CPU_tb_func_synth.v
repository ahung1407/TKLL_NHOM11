// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Dec 14 09:21:13 2024
// Host        : DESKTOP-KJ2GVQA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Minh_Hung/Downloads/TKLL_NHOM11-good_testbench/TKLL_TEAM_11.sim/sim_1/synth/func/xsim/RISC_CPU_tb_func_synth.v
// Design      : RISC_CPU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (data0,
    E,
    \ALU_result_reg[0]_0 ,
    D,
    \PC_out_reg[0] ,
    \ALU_result_reg[7]_0 ,
    \ALU_result_reg[4]_0 ,
    Q,
    S,
    \ALU_result_reg[7]_1 ,
    rst_IBUF,
    pc_enable_OBUF,
    \PC_out_reg[3] ,
    \PC_out_reg[3]_0 ,
    JUMP,
    SKZ,
    \ALU_result_reg[7]_2 ,
    \ALU_result_reg[7]_3 ,
    CLK);
  output [7:0]data0;
  output [0:0]E;
  output \ALU_result_reg[0]_0 ;
  output [1:0]D;
  output \PC_out_reg[0] ;
  output [7:0]\ALU_result_reg[7]_0 ;
  output \ALU_result_reg[4]_0 ;
  input [6:0]Q;
  input [3:0]S;
  input [3:0]\ALU_result_reg[7]_1 ;
  input rst_IBUF;
  input pc_enable_OBUF;
  input [1:0]\PC_out_reg[3] ;
  input [3:0]\PC_out_reg[3]_0 ;
  input JUMP;
  input SKZ;
  input [0:0]\ALU_result_reg[7]_2 ;
  input [7:0]\ALU_result_reg[7]_3 ;
  input CLK;

  wire ALU_result0_carry__0_n_1;
  wire ALU_result0_carry__0_n_2;
  wire ALU_result0_carry__0_n_3;
  wire ALU_result0_carry_n_0;
  wire ALU_result0_carry_n_1;
  wire ALU_result0_carry_n_2;
  wire ALU_result0_carry_n_3;
  wire \ALU_result_reg[0]_0 ;
  wire \ALU_result_reg[4]_0 ;
  wire [7:0]\ALU_result_reg[7]_0 ;
  wire [3:0]\ALU_result_reg[7]_1 ;
  wire [0:0]\ALU_result_reg[7]_2 ;
  wire [7:0]\ALU_result_reg[7]_3 ;
  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire JUMP;
  wire \PC_out[4]_i_5_n_0 ;
  wire \PC_out_reg[0] ;
  wire [1:0]\PC_out_reg[3] ;
  wire [3:0]\PC_out_reg[3]_0 ;
  wire [6:0]Q;
  wire [3:0]S;
  wire SKZ;
  wire [7:0]data0;
  wire pc_enable_OBUF;
  wire rst_IBUF;
  wire [3:3]NLW_ALU_result0_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ALU_result0_carry
       (.CI(1'b0),
        .CO({ALU_result0_carry_n_0,ALU_result0_carry_n_1,ALU_result0_carry_n_2,ALU_result0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(data0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ALU_result0_carry__0
       (.CI(ALU_result0_carry_n_0),
        .CO({NLW_ALU_result0_carry__0_CO_UNCONNECTED[3],ALU_result0_carry__0_n_1,ALU_result0_carry__0_n_2,ALU_result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S(\ALU_result_reg[7]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_reg[0] 
       (.C(CLK),
        .CE(\ALU_result_reg[7]_2 ),
        .D(\ALU_result_reg[7]_3 [0]),
        .Q(\ALU_result_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_reg[1] 
       (.C(CLK),
        .CE(\ALU_result_reg[7]_2 ),
        .D(\ALU_result_reg[7]_3 [1]),
        .Q(\ALU_result_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_reg[2] 
       (.C(CLK),
        .CE(\ALU_result_reg[7]_2 ),
        .D(\ALU_result_reg[7]_3 [2]),
        .Q(\ALU_result_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_reg[3] 
       (.C(CLK),
        .CE(\ALU_result_reg[7]_2 ),
        .D(\ALU_result_reg[7]_3 [3]),
        .Q(\ALU_result_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_reg[4] 
       (.C(CLK),
        .CE(\ALU_result_reg[7]_2 ),
        .D(\ALU_result_reg[7]_3 [4]),
        .Q(\ALU_result_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_reg[5] 
       (.C(CLK),
        .CE(\ALU_result_reg[7]_2 ),
        .D(\ALU_result_reg[7]_3 [5]),
        .Q(\ALU_result_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_reg[6] 
       (.C(CLK),
        .CE(\ALU_result_reg[7]_2 ),
        .D(\ALU_result_reg[7]_3 [6]),
        .Q(\ALU_result_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ALU_result_reg[7] 
       (.C(CLK),
        .CE(\ALU_result_reg[7]_2 ),
        .D(\ALU_result_reg[7]_3 [7]),
        .Q(\ALU_result_reg[7]_0 [7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_out[1]_i_2 
       (.I0(\PC_out[4]_i_5_n_0 ),
        .I1(\ALU_result_reg[7]_0 [4]),
        .I2(\ALU_result_reg[7]_0 [5]),
        .I3(\ALU_result_reg[7]_0 [0]),
        .O(\ALU_result_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \PC_out[2]_i_1 
       (.I0(\PC_out_reg[3] [0]),
        .I1(\ALU_result_reg[0]_0 ),
        .I2(\PC_out_reg[3]_0 [2]),
        .I3(\PC_out_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8B88BB8)) 
    \PC_out[3]_i_1 
       (.I0(\PC_out_reg[3] [1]),
        .I1(\ALU_result_reg[0]_0 ),
        .I2(\PC_out_reg[3]_0 [3]),
        .I3(\PC_out_reg[3]_0 [2]),
        .I4(\PC_out_reg[0] ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hBA)) 
    \PC_out[4]_i_1 
       (.I0(\ALU_result_reg[0]_0 ),
        .I1(rst_IBUF),
        .I2(pc_enable_OBUF),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \PC_out[4]_i_3 
       (.I0(\ALU_result_reg[7]_0 [0]),
        .I1(\ALU_result_reg[7]_0 [5]),
        .I2(\ALU_result_reg[7]_0 [4]),
        .I3(\PC_out[4]_i_5_n_0 ),
        .I4(JUMP),
        .I5(pc_enable_OBUF),
        .O(\ALU_result_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h55555554FFFFFFFF)) 
    \PC_out[4]_i_4 
       (.I0(\PC_out_reg[3]_0 [0]),
        .I1(\PC_out[4]_i_5_n_0 ),
        .I2(\ALU_result_reg[7]_0 [4]),
        .I3(\ALU_result_reg[7]_0 [5]),
        .I4(\ALU_result_reg[7]_0 [0]),
        .I5(\PC_out_reg[3]_0 [1]),
        .O(\PC_out_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \PC_out[4]_i_5 
       (.I0(\ALU_result_reg[7]_0 [7]),
        .I1(\ALU_result_reg[7]_0 [2]),
        .I2(\ALU_result_reg[7]_0 [6]),
        .I3(SKZ),
        .I4(\ALU_result_reg[7]_0 [1]),
        .I5(\ALU_result_reg[7]_0 [3]),
        .O(\PC_out[4]_i_5_n_0 ));
endmodule

module Accumulator_Register
   (S,
    Q,
    \data_out_reg[6]_0 ,
    dmem_data,
    E,
    D,
    CLK,
    rst_IBUF);
  output [3:0]S;
  output [7:0]Q;
  output [2:0]\data_out_reg[6]_0 ;
  input [6:0]dmem_data;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input rst_IBUF;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [2:0]\data_out_reg[6]_0 ;
  wire [6:0]dmem_data;
  wire rst_IBUF;

  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry__0_i_2
       (.I0(Q[6]),
        .I1(dmem_data[6]),
        .O(\data_out_reg[6]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry__0_i_3
       (.I0(Q[5]),
        .I1(dmem_data[5]),
        .O(\data_out_reg[6]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry__0_i_4
       (.I0(Q[4]),
        .I1(dmem_data[4]),
        .O(\data_out_reg[6]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry_i_1
       (.I0(Q[3]),
        .I1(dmem_data[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry_i_2
       (.I0(Q[2]),
        .I1(dmem_data[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry_i_3
       (.I0(Q[1]),
        .I1(dmem_data[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry_i_4
       (.I0(Q[0]),
        .I1(dmem_data[0]),
        .O(S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(Q[7]));
endmodule

module Controller
   (pc_enable_OBUF,
    mux_select_reg_0,
    alu_enable,
    E,
    load_ir_reg_0,
    SKZ,
    JUMP,
    Q,
    acc_enable_reg_0,
    \data_out_reg[7] ,
    dmem_data,
    D,
    \ALU_result_reg[7] ,
    mux_select_reg_1,
    \opcode_OBUFT[2]_inst_i_1 ,
    dmem_enable_reg_0,
    p_0_in__0,
    CLK,
    rst_IBUF,
    pc_enable_reg_0,
    \data_out_reg[7]_0 ,
    mux_select_reg_2,
    \FSM_sequential_state_reg[1]_0 ,
    wr_en_reg_0,
    imem_enable_reg_0,
    imem_enable_reg_1,
    dmem_enable_reg_1,
    dmem_enable_reg_2,
    \PC_out_reg[1] ,
    \PC_out_reg[1]_0 ,
    \PC_out_reg[0] ,
    \data_out_reg[7]_1 ,
    SKZ_reg_0,
    LDA_reg_0,
    load_register_reg_0,
    JMP_reg_0,
    load_ir_reg_1,
    \opcode_TRI[0] ,
    \data_out_reg[7]_2 );
  output pc_enable_OBUF;
  output [0:0]mux_select_reg_0;
  output alu_enable;
  output [0:0]E;
  output [0:0]load_ir_reg_0;
  output SKZ;
  output JUMP;
  output [3:0]Q;
  output [0:0]acc_enable_reg_0;
  output [0:0]\data_out_reg[7] ;
  output [7:0]dmem_data;
  output [1:0]D;
  output [7:0]\ALU_result_reg[7] ;
  output [0:0]mux_select_reg_1;
  output \opcode_OBUFT[2]_inst_i_1 ;
  output dmem_enable_reg_0;
  output p_0_in__0;
  input CLK;
  input rst_IBUF;
  input pc_enable_reg_0;
  input [7:0]\data_out_reg[7]_0 ;
  input mux_select_reg_2;
  input \FSM_sequential_state_reg[1]_0 ;
  input wr_en_reg_0;
  input imem_enable_reg_0;
  input imem_enable_reg_1;
  input dmem_enable_reg_1;
  input dmem_enable_reg_2;
  input [1:0]\PC_out_reg[1] ;
  input [1:0]\PC_out_reg[1]_0 ;
  input \PC_out_reg[0] ;
  input [7:0]\data_out_reg[7]_1 ;
  input SKZ_reg_0;
  input LDA_reg_0;
  input load_register_reg_0;
  input JMP_reg_0;
  input load_ir_reg_1;
  input \opcode_TRI[0] ;
  input [7:0]\data_out_reg[7]_2 ;

  wire [7:0]\ALU_result_reg[7] ;
  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire JMP_i_1_n_0;
  wire JMP_reg_0;
  wire JUMP;
  wire LDA;
  wire LDA_i_1_n_0;
  wire LDA_reg_0;
  wire \PC_out_reg[0] ;
  wire [1:0]\PC_out_reg[1] ;
  wire [1:0]\PC_out_reg[1]_0 ;
  wire [3:0]Q;
  wire SKZ;
  wire SKZ_i_1_n_0;
  wire SKZ_reg_0;
  wire acc_enable;
  wire acc_enable_i_1_n_0;
  wire [0:0]acc_enable_reg_0;
  wire alu_enable;
  wire alu_enable_i_1_n_0;
  wire alu_enable_i_2_n_0;
  wire [0:0]\data_out_reg[7] ;
  wire [7:0]\data_out_reg[7]_0 ;
  wire [7:0]\data_out_reg[7]_1 ;
  wire [7:0]\data_out_reg[7]_2 ;
  wire [7:0]dmem_data;
  wire dmem_enable;
  wire dmem_enable_i_1_n_0;
  wire dmem_enable_reg_0;
  wire dmem_enable_reg_1;
  wire dmem_enable_reg_2;
  wire imem_enable_i_1_n_0;
  wire imem_enable_reg_0;
  wire imem_enable_reg_1;
  wire load_ir_i_1_n_0;
  wire [0:0]load_ir_reg_0;
  wire load_ir_reg_1;
  wire load_register;
  wire load_register_i_1_n_0;
  wire load_register_reg_0;
  wire mux_select_i_1_n_0;
  wire [0:0]mux_select_reg_0;
  wire [0:0]mux_select_reg_1;
  wire mux_select_reg_2;
  wire \opcode_OBUFT[2]_inst_i_1 ;
  wire \opcode_TRI[0] ;
  wire p_0_in__0;
  wire pc_enable_OBUF;
  wire pc_enable_i_1_n_0;
  wire pc_enable_reg_0;
  wire rst_IBUF;
  wire [3:0]state__0;
  wire wr_en;
  wire wr_en_i_1_n_0;
  wire wr_en_i_2_n_0;
  wire wr_en_reg_0;

  LUT2 #(
    .INIT(4'h6)) 
    ALU_result0_carry__0_i_1
       (.I0(dmem_data[7]),
        .I1(\data_out_reg[7]_0 [7]),
        .O(\data_out_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h330332CF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(pc_enable_reg_0),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00055540)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'h1010101040444444)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(imem_enable_reg_1),
        .I4(imem_enable_reg_0),
        .I5(Q[0]),
        .O(state__0[2]));
  LUT6 #(
    .INIT(64'h555555555554FFFF)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(Q[3]),
        .I1(wr_en_reg_0),
        .I2(imem_enable_reg_0),
        .I3(imem_enable_reg_1),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(imem_enable_reg_1),
        .I5(imem_enable_reg_0),
        .O(state__0[3]));
  (* FSM_ENCODED_STATES = "LOAD_ACC:0111,WRITE_BACK:1000,ALU:0110,FETCH:0001,INIT:0000,SKIZ:0101,NEED_OPCODE:0011,JUMP:1001,LOAD_IR_DECODE:0010,MEM_READ:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(state__0[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "LOAD_ACC:0111,WRITE_BACK:1000,ALU:0110,FETCH:0001,INIT:0000,SKIZ:0101,NEED_OPCODE:0011,JUMP:1001,LOAD_IR_DECODE:0010,MEM_READ:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(state__0[1]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "LOAD_ACC:0111,WRITE_BACK:1000,ALU:0110,FETCH:0001,INIT:0000,SKIZ:0101,NEED_OPCODE:0011,JUMP:1001,LOAD_IR_DECODE:0010,MEM_READ:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(state__0[2]),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "LOAD_ACC:0111,WRITE_BACK:1000,ALU:0110,FETCH:0001,INIT:0000,SKIZ:0101,NEED_OPCODE:0011,JUMP:1001,LOAD_IR_DECODE:0010,MEM_READ:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(state__0[3]),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'hFD01)) 
    JMP_i_1
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(JMP_reg_0),
        .I3(JUMP),
        .O(JMP_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    JMP_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(JMP_i_1_n_0),
        .Q(JUMP));
  LUT6 #(
    .INIT(64'hFFEFFEEF00004000)) 
    LDA_i_1
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(LDA_reg_0),
        .I5(LDA),
        .O(LDA_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    LDA_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(LDA_i_1_n_0),
        .Q(LDA));
  LUT5 #(
    .INIT(32'h80BFFF00)) 
    \PC_out[0]_i_1 
       (.I0(\PC_out_reg[1] [0]),
        .I1(JUMP),
        .I2(pc_enable_OBUF),
        .I3(\PC_out_reg[1]_0 [0]),
        .I4(\PC_out_reg[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h80BF00FFBF8000FF)) 
    \PC_out[1]_i_1 
       (.I0(\PC_out_reg[1] [1]),
        .I1(pc_enable_OBUF),
        .I2(JUMP),
        .I3(\PC_out_reg[1]_0 [1]),
        .I4(\PC_out_reg[0] ),
        .I5(\PC_out_reg[1]_0 [0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFAFFF00000444)) 
    SKZ_i_1
       (.I0(Q[1]),
        .I1(SKZ_reg_0),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(SKZ),
        .O(SKZ_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SKZ_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(SKZ_i_1_n_0),
        .Q(SKZ));
  LUT6 #(
    .INIT(64'h0000F00400000000)) 
    acc_enable_i_1
       (.I0(wr_en_reg_0),
        .I1(dmem_enable_reg_1),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(acc_enable_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    acc_enable_reg
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(acc_enable_i_1_n_0),
        .Q(acc_enable));
  LUT6 #(
    .INIT(64'h8080888080808080)) 
    alu_enable_i_1
       (.I0(Q[2]),
        .I1(alu_enable_i_2_n_0),
        .I2(Q[1]),
        .I3(wr_en_reg_0),
        .I4(imem_enable_reg_1),
        .I5(imem_enable_reg_0),
        .O(alu_enable_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    alu_enable_i_2
       (.I0(Q[3]),
        .I1(Q[0]),
        .O(alu_enable_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    alu_enable_reg
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(alu_enable_i_1_n_0),
        .Q(alu_enable));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[0]_i_1 
       (.I0(\data_out_reg[7]_1 [0]),
        .I1(load_register),
        .I2(dmem_data[0]),
        .O(\ALU_result_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[1]_i_1 
       (.I0(\data_out_reg[7]_1 [1]),
        .I1(load_register),
        .I2(dmem_data[1]),
        .O(\ALU_result_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[2]_i_1 
       (.I0(\data_out_reg[7]_1 [2]),
        .I1(load_register),
        .I2(dmem_data[2]),
        .O(\ALU_result_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[3]_i_1 
       (.I0(\data_out_reg[7]_1 [3]),
        .I1(load_register),
        .I2(dmem_data[3]),
        .O(\ALU_result_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_1 
       (.I0(\data_out_reg[7]_1 [4]),
        .I1(load_register),
        .I2(dmem_data[4]),
        .O(\ALU_result_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[5]_i_1 
       (.I0(\data_out_reg[7]_1 [5]),
        .I1(load_register),
        .I2(dmem_data[5]),
        .O(\ALU_result_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[6]_i_1 
       (.I0(\data_out_reg[7]_1 [6]),
        .I1(load_register),
        .I2(dmem_data[6]),
        .O(\ALU_result_reg[7] [6]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_out[7]_i_1 
       (.I0(acc_enable),
        .I1(load_register),
        .I2(LDA),
        .O(acc_enable_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[7]_i_1__0 
       (.I0(dmem_enable),
        .I1(wr_en),
        .O(dmem_enable_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[7]_i_2 
       (.I0(\data_out_reg[7]_1 [7]),
        .I1(load_register),
        .I2(dmem_data[7]),
        .O(\ALU_result_reg[7] [7]));
  LUT6 #(
    .INIT(64'h5554555555FF55FF)) 
    dmem_enable_i_1
       (.I0(Q[3]),
        .I1(dmem_enable_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(dmem_enable_reg_2),
        .I5(Q[2]),
        .O(dmem_enable_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    dmem_enable_reg
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(dmem_enable_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(dmem_enable));
  LUT4 #(
    .INIT(16'h1575)) 
    imem_enable_i_1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(imem_enable_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    imem_enable_reg
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(imem_enable_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF000C155D)) 
    load_ir_i_1
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(load_ir_reg_1),
        .I5(load_ir_reg_0),
        .O(load_ir_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    load_ir_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(load_ir_i_1_n_0),
        .Q(load_ir_reg_0));
  LUT6 #(
    .INIT(64'hFEFEFFC304040000)) 
    load_register_i_1
       (.I0(load_register_reg_0),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(load_register),
        .O(load_register_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    load_register_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(load_register_i_1_n_0),
        .Q(load_register));
  LUT4 #(
    .INIT(16'hECA0)) 
    mem_reg_0_31_0_0_i_1
       (.I0(dmem_enable_reg_0),
        .I1(wr_en),
        .I2(\data_out_reg[7]_2 [0]),
        .I3(\data_out_reg[7]_0 [0]),
        .O(dmem_data[0]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_31_0_0_i_2
       (.I0(wr_en),
        .I1(dmem_enable),
        .O(p_0_in__0));
  LUT4 #(
    .INIT(16'hECA0)) 
    mem_reg_0_31_1_1_i_1
       (.I0(dmem_enable_reg_0),
        .I1(wr_en),
        .I2(\data_out_reg[7]_2 [1]),
        .I3(\data_out_reg[7]_0 [1]),
        .O(dmem_data[1]));
  LUT4 #(
    .INIT(16'hECA0)) 
    mem_reg_0_31_2_2_i_1
       (.I0(dmem_enable_reg_0),
        .I1(wr_en),
        .I2(\data_out_reg[7]_2 [2]),
        .I3(\data_out_reg[7]_0 [2]),
        .O(dmem_data[2]));
  LUT4 #(
    .INIT(16'hECA0)) 
    mem_reg_0_31_3_3_i_1
       (.I0(dmem_enable_reg_0),
        .I1(wr_en),
        .I2(\data_out_reg[7]_2 [3]),
        .I3(\data_out_reg[7]_0 [3]),
        .O(dmem_data[3]));
  LUT4 #(
    .INIT(16'hECA0)) 
    mem_reg_0_31_4_4_i_1
       (.I0(dmem_enable_reg_0),
        .I1(wr_en),
        .I2(\data_out_reg[7]_2 [4]),
        .I3(\data_out_reg[7]_0 [4]),
        .O(dmem_data[4]));
  LUT4 #(
    .INIT(16'hECA0)) 
    mem_reg_0_31_5_5_i_1
       (.I0(dmem_enable_reg_0),
        .I1(wr_en),
        .I2(\data_out_reg[7]_2 [5]),
        .I3(\data_out_reg[7]_0 [5]),
        .O(dmem_data[5]));
  LUT4 #(
    .INIT(16'hECA0)) 
    mem_reg_0_31_6_6_i_1
       (.I0(dmem_enable_reg_0),
        .I1(wr_en),
        .I2(\data_out_reg[7]_2 [6]),
        .I3(\data_out_reg[7]_0 [6]),
        .O(dmem_data[6]));
  LUT4 #(
    .INIT(16'hECA0)) 
    mem_reg_0_31_7_7_i_1
       (.I0(dmem_enable_reg_0),
        .I1(wr_en),
        .I2(\data_out_reg[7]_2 [7]),
        .I3(\data_out_reg[7]_0 [7]),
        .O(dmem_data[7]));
  LUT5 #(
    .INIT(32'h31453045)) 
    mux_select_i_1
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(mux_select_reg_2),
        .O(mux_select_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mux_select_reg
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(mux_select_i_1_n_0),
        .Q(mux_select_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \opcode_OBUFT[2]_inst_i_2 
       (.I0(\opcode_TRI[0] ),
        .I1(load_ir_reg_0),
        .O(\opcode_OBUFT[2]_inst_i_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \operand_address_out[4]_i_1 
       (.I0(mux_select_reg_0),
        .O(mux_select_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00119800)) 
    pc_enable_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(pc_enable_reg_0),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(pc_enable_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pc_enable_reg
       (.C(CLK),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(pc_enable_i_1_n_0),
        .Q(pc_enable_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h01FF0100)) 
    wr_en_i_1
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(wr_en_reg_0),
        .I3(wr_en_i_2_n_0),
        .I4(wr_en),
        .O(wr_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000DCC)) 
    wr_en_i_2
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(wr_en_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(wr_en_i_1_n_0),
        .Q(wr_en));
endmodule

module Instruction_Register
   (\opcode_OBUFT[2]_inst_i_1 ,
    \opcode_OBUFT[2]_inst_i_1_0 ,
    \opcode_OBUFT[2]_inst_i_1_1 ,
    \opcode_OBUFT[2]_inst_i_1_2 ,
    alu_enable_reg,
    \data_out_reg[7] ,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[1] ,
    \opcode_OBUFT[2]_inst_i_1_3 ,
    \opcode_OBUFT[2]_inst_i_1_4 ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[0]_0 ,
    \opcode_OBUFT[2]_inst_i_1_5 ,
    \opcode_OBUFT[2]_inst_i_1_6 ,
    \opcode_OBUFT[2]_inst_i_1_7 ,
    D,
    \opcode_tristate_oe_reg[7]_0 ,
    alu_enable,
    dmem_data,
    Q,
    data0,
    JMP_reg,
    rst_IBUF,
    \opcode_TRI[0] ,
    E,
    \opcode_tristate_oe_reg[7]_1 ,
    CLK);
  output \opcode_OBUFT[2]_inst_i_1 ;
  output \opcode_OBUFT[2]_inst_i_1_0 ;
  output \opcode_OBUFT[2]_inst_i_1_1 ;
  output \opcode_OBUFT[2]_inst_i_1_2 ;
  output [0:0]alu_enable_reg;
  output [7:0]\data_out_reg[7] ;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[1] ;
  output \opcode_OBUFT[2]_inst_i_1_3 ;
  output \opcode_OBUFT[2]_inst_i_1_4 ;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[0]_0 ;
  output \opcode_OBUFT[2]_inst_i_1_5 ;
  output \opcode_OBUFT[2]_inst_i_1_6 ;
  output \opcode_OBUFT[2]_inst_i_1_7 ;
  output [4:0]D;
  output [2:0]\opcode_tristate_oe_reg[7]_0 ;
  input alu_enable;
  input [7:0]dmem_data;
  input [7:0]Q;
  input [7:0]data0;
  input [3:0]JMP_reg;
  input rst_IBUF;
  input \opcode_TRI[0] ;
  input [0:0]E;
  input [7:0]\opcode_tristate_oe_reg[7]_1 ;
  input CLK;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire [3:0]JMP_reg;
  wire [7:0]Q;
  wire alu_enable;
  wire [0:0]alu_enable_reg;
  wire [7:0]data0;
  wire [7:0]\data_out_reg[7] ;
  wire [7:0]dmem_data;
  wire \opcode_OBUFT[2]_inst_i_1 ;
  wire \opcode_OBUFT[2]_inst_i_1_0 ;
  wire \opcode_OBUFT[2]_inst_i_1_1 ;
  wire \opcode_OBUFT[2]_inst_i_1_2 ;
  wire \opcode_OBUFT[2]_inst_i_1_3 ;
  wire \opcode_OBUFT[2]_inst_i_1_4 ;
  wire \opcode_OBUFT[2]_inst_i_1_5 ;
  wire \opcode_OBUFT[2]_inst_i_1_6 ;
  wire \opcode_OBUFT[2]_inst_i_1_7 ;
  wire \opcode_TRI[0] ;
  wire [2:0]\opcode_tristate_oe_reg[7]_0 ;
  wire [7:0]\opcode_tristate_oe_reg[7]_1 ;
  wire \operand_address_tristate_oe_reg_n_0_[0] ;
  wire \operand_address_tristate_oe_reg_n_0_[1] ;
  wire \operand_address_tristate_oe_reg_n_0_[2] ;
  wire \operand_address_tristate_oe_reg_n_0_[3] ;
  wire \operand_address_tristate_oe_reg_n_0_[4] ;
  wire rst_IBUF;

  LUT5 #(
    .INIT(32'hC87DC828)) 
    \ALU_result[0]_i_1 
       (.I0(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I1(dmem_data[0]),
        .I2(Q[0]),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(data0[0]),
        .O(\data_out_reg[7] [0]));
  LUT5 #(
    .INIT(32'hC87DC828)) 
    \ALU_result[1]_i_1 
       (.I0(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I1(dmem_data[1]),
        .I2(Q[1]),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(data0[1]),
        .O(\data_out_reg[7] [1]));
  LUT5 #(
    .INIT(32'hC87DC828)) 
    \ALU_result[2]_i_1 
       (.I0(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I1(dmem_data[2]),
        .I2(Q[2]),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(data0[2]),
        .O(\data_out_reg[7] [2]));
  LUT5 #(
    .INIT(32'hC87DC828)) 
    \ALU_result[3]_i_1 
       (.I0(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I1(dmem_data[3]),
        .I2(Q[3]),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(data0[3]),
        .O(\data_out_reg[7] [3]));
  LUT5 #(
    .INIT(32'hC87DC828)) 
    \ALU_result[4]_i_1 
       (.I0(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I1(dmem_data[4]),
        .I2(Q[4]),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(data0[4]),
        .O(\data_out_reg[7] [4]));
  LUT5 #(
    .INIT(32'hC87DC828)) 
    \ALU_result[5]_i_1 
       (.I0(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I1(dmem_data[5]),
        .I2(Q[5]),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(data0[5]),
        .O(\data_out_reg[7] [5]));
  LUT5 #(
    .INIT(32'hC87DC828)) 
    \ALU_result[6]_i_1 
       (.I0(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I1(dmem_data[6]),
        .I2(Q[6]),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(data0[6]),
        .O(\data_out_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ALU_result[7]_i_1 
       (.I0(alu_enable),
        .I1(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_2 ),
        .O(alu_enable_reg));
  LUT5 #(
    .INIT(32'hC87DC828)) 
    \ALU_result[7]_i_2 
       (.I0(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I1(dmem_data[7]),
        .I2(Q[7]),
        .I3(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I4(data0[7]),
        .O(\data_out_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_2 ),
        .O(\opcode_OBUFT[2]_inst_i_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\opcode_OBUFT[2]_inst_i_1_2 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\opcode_OBUFT[2]_inst_i_1_3 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\opcode_TRI[0] ),
        .I1(\opcode_tristate_oe_reg[7]_0 [0]),
        .O(\opcode_OBUFT[2]_inst_i_1_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\opcode_TRI[0] ),
        .I1(\opcode_tristate_oe_reg[7]_0 [2]),
        .O(\opcode_OBUFT[2]_inst_i_1_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\opcode_TRI[0] ),
        .I1(\opcode_tristate_oe_reg[7]_0 [1]),
        .O(\opcode_OBUFT[2]_inst_i_1_2 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00FFFFFF)) 
    JMP_i_2
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_2 ),
        .I3(JMP_reg[0]),
        .I4(JMP_reg[3]),
        .I5(JMP_reg[2]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    LDA_i_2
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_2 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_1 ),
        .O(\opcode_OBUFT[2]_inst_i_1_7 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    SKZ_i_2
       (.I0(JMP_reg[0]),
        .I1(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I3(\opcode_OBUFT[2]_inst_i_1_2 ),
        .I4(JMP_reg[2]),
        .I5(rst_IBUF),
        .O(\FSM_sequential_state_reg[0] ));
  LUT2 #(
    .INIT(4'h8)) 
    dmem_enable_i_2
       (.I0(\opcode_OBUFT[2]_inst_i_1_2 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_1 ),
        .O(\opcode_OBUFT[2]_inst_i_1_5 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dmem_enable_i_3
       (.I0(\opcode_OBUFT[2]_inst_i_1_2 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\opcode_OBUFT[2]_inst_i_1_6 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    load_ir_i_2
       (.I0(JMP_reg[2]),
        .I1(JMP_reg[1]),
        .I2(\opcode_OBUFT[2]_inst_i_1_2 ),
        .I3(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I4(\opcode_OBUFT[2]_inst_i_1_0 ),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h5555D545)) 
    load_register_i_2
       (.I0(JMP_reg[1]),
        .I1(JMP_reg[0]),
        .I2(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I3(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I4(\opcode_OBUFT[2]_inst_i_1_2 ),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    mux_select_i_2
       (.I0(\opcode_OBUFT[2]_inst_i_1_0 ),
        .I1(\opcode_OBUFT[2]_inst_i_1_1 ),
        .I2(\opcode_OBUFT[2]_inst_i_1_2 ),
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[0]_i_1 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[1]_i_1 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[2]_i_1 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[3]_i_1 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \operand_address_out[4]_i_2 
       (.I0(\opcode_TRI[0] ),
        .I1(\operand_address_tristate_oe_reg_n_0_[4] ),
        .O(D[4]));
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
endmodule

module Program_Counter
   (\PC_out_reg[4]_0 ,
    Q,
    \PC_out_reg[4]_1 ,
    \PC_out_reg[4]_2 ,
    E,
    CLK,
    rst_IBUF,
    D);
  output [4:0]\PC_out_reg[4]_0 ;
  input [0:0]Q;
  input \PC_out_reg[4]_1 ;
  input \PC_out_reg[4]_2 ;
  input [0:0]E;
  input CLK;
  input rst_IBUF;
  input [3:0]D;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire \PC_out[4]_i_2_n_0 ;
  wire [4:0]\PC_out_reg[4]_0 ;
  wire \PC_out_reg[4]_1 ;
  wire \PC_out_reg[4]_2 ;
  wire [0:0]Q;
  wire rst_IBUF;

  LUT6 #(
    .INIT(64'hB88BB8B8B8B8B8B8)) 
    \PC_out[4]_i_2 
       (.I0(Q),
        .I1(\PC_out_reg[4]_1 ),
        .I2(\PC_out_reg[4]_0 [4]),
        .I3(\PC_out_reg[4]_2 ),
        .I4(\PC_out_reg[4]_0 [2]),
        .I5(\PC_out_reg[4]_0 [3]),
        .O(\PC_out[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\PC_out_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\PC_out_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\PC_out_reg[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\PC_out_reg[4]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\PC_out[4]_i_2_n_0 ),
        .Q(\PC_out_reg[4]_0 [4]));
endmodule

(* NotValidForBitStream *)
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
  wire ACC_n_2;
  wire ACC_n_3;
  wire ALU_n_10;
  wire ALU_n_11;
  wire ALU_n_12;
  wire ALU_n_21;
  wire ALU_n_8;
  wire ALU_n_9;
  wire [7:0]ALU_result;
  wire [7:0]ALU_result_0;
  wire CTRL_n_11;
  wire CTRL_n_12;
  wire CTRL_n_21;
  wire CTRL_n_22;
  wire CTRL_n_23;
  wire CTRL_n_24;
  wire CTRL_n_25;
  wire CTRL_n_26;
  wire CTRL_n_27;
  wire CTRL_n_28;
  wire CTRL_n_29;
  wire CTRL_n_30;
  wire CTRL_n_31;
  wire CTRL_n_32;
  wire CTRL_n_33;
  wire IR_n_0;
  wire IR_n_1;
  wire IR_n_13;
  wire IR_n_14;
  wire IR_n_15;
  wire IR_n_16;
  wire IR_n_17;
  wire IR_n_18;
  wire IR_n_19;
  wire IR_n_2;
  wire IR_n_20;
  wire IR_n_21;
  wire IR_n_3;
  wire IR_n_4;
  wire JUMP;
  wire SKZ;
  wire [7:0]accumulator_out;
  wire alu_enable;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data0;
  wire [7:0]data_out;
  wire [7:0]dmem_data;
  wire imem_enable;
  wire [7:0]instruction;
  wire load_ir;
  wire mux_select;
  wire mux_select_OBUF;
  wire [2:0]opcode;
  wire [2:0]opcode_OBUF;
  wire \opcode_TRI[0] ;
  wire [4:0]operand_address;
  wire [4:0]operand_address_out;
  wire p_0_in__0;
  wire [7:0]p_0_out;
  wire pc_enable;
  wire pc_enable_OBUF;
  wire [4:0]program_counter_out;
  wire [4:0]program_counter_out_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [3:0]state;

  Accumulator_Register ACC
       (.CLK(clk_IBUF_BUFG),
        .D({CTRL_n_23,CTRL_n_24,CTRL_n_25,CTRL_n_26,CTRL_n_27,CTRL_n_28,CTRL_n_29,CTRL_n_30}),
        .E(CTRL_n_11),
        .Q(accumulator_out),
        .S({ACC_n_0,ACC_n_1,ACC_n_2,ACC_n_3}),
        .\data_out_reg[6]_0 ({ACC_n_12,ACC_n_13,ACC_n_14}),
        .dmem_data(dmem_data[6:0]),
        .rst_IBUF(rst_IBUF));
  ALU ALU
       (.\ALU_result_reg[0]_0 (ALU_n_9),
        .\ALU_result_reg[4]_0 (ALU_n_21),
        .\ALU_result_reg[7]_0 (ALU_result),
        .\ALU_result_reg[7]_1 ({CTRL_n_12,ACC_n_12,ACC_n_13,ACC_n_14}),
        .\ALU_result_reg[7]_2 (IR_n_4),
        .\ALU_result_reg[7]_3 (ALU_result_0),
        .CLK(clk_IBUF_BUFG),
        .D({ALU_n_10,ALU_n_11}),
        .E(ALU_n_8),
        .JUMP(JUMP),
        .\PC_out_reg[0] (ALU_n_12),
        .\PC_out_reg[3] (operand_address_out[3:2]),
        .\PC_out_reg[3]_0 (program_counter_out_OBUF[3:0]),
        .Q(accumulator_out[6:0]),
        .S({ACC_n_0,ACC_n_1,ACC_n_2,ACC_n_3}),
        .SKZ(SKZ),
        .data0(data0),
        .pc_enable_OBUF(pc_enable_OBUF),
        .rst_IBUF(rst_IBUF));
  addr_mux AMUX
       (.CLK(clk_IBUF_BUFG),
        .D(operand_address),
        .E(CTRL_n_31),
        .Q(operand_address_out),
        .\instruction_address_reg[4]_0 (mux_select_OBUF),
        .\instruction_address_reg[4]_1 (program_counter_out_OBUF),
        .out(p_0_out));
  Controller CTRL
       (.\ALU_result_reg[7] ({CTRL_n_23,CTRL_n_24,CTRL_n_25,CTRL_n_26,CTRL_n_27,CTRL_n_28,CTRL_n_29,CTRL_n_30}),
        .CLK(clk_IBUF_BUFG),
        .D({CTRL_n_21,CTRL_n_22}),
        .E(imem_enable),
        .\FSM_sequential_state_reg[1]_0 (IR_n_15),
        .JMP_reg_0(IR_n_18),
        .JUMP(JUMP),
        .LDA_reg_0(IR_n_21),
        .\PC_out_reg[0] (ALU_n_21),
        .\PC_out_reg[1] (operand_address_out[1:0]),
        .\PC_out_reg[1]_0 (program_counter_out_OBUF[1:0]),
        .Q(state),
        .SKZ(SKZ),
        .SKZ_reg_0(IR_n_13),
        .acc_enable_reg_0(CTRL_n_11),
        .alu_enable(alu_enable),
        .\data_out_reg[7] (CTRL_n_12),
        .\data_out_reg[7]_0 (accumulator_out),
        .\data_out_reg[7]_1 (ALU_result),
        .\data_out_reg[7]_2 (data_out),
        .dmem_data(dmem_data),
        .dmem_enable_reg_0(CTRL_n_33),
        .dmem_enable_reg_1(IR_n_19),
        .dmem_enable_reg_2(IR_n_20),
        .imem_enable_reg_0(IR_n_2),
        .imem_enable_reg_1(IR_n_3),
        .load_ir_reg_0(load_ir),
        .load_ir_reg_1(IR_n_17),
        .load_register_reg_0(IR_n_14),
        .mux_select_reg_0(mux_select_OBUF),
        .mux_select_reg_1(CTRL_n_31),
        .mux_select_reg_2(IR_n_16),
        .\opcode_OBUFT[2]_inst_i_1 (CTRL_n_32),
        .\opcode_TRI[0] (\opcode_TRI[0] ),
        .p_0_in__0(p_0_in__0),
        .pc_enable_OBUF(pc_enable_OBUF),
        .pc_enable_reg_0(IR_n_0),
        .rst_IBUF(rst_IBUF),
        .wr_en_reg_0(IR_n_1));
  dataMemory DMEM
       (.CLK(clk_IBUF_BUFG),
        .E(CTRL_n_33),
        .Q(operand_address_out),
        .data_in2(dmem_data),
        .data_out0_out(data_out),
        .p_0_in__0(p_0_in__0));
  instructionMemory IMEM
       (.CLK(clk_IBUF_BUFG),
        .D(p_0_out),
        .E(imem_enable),
        .Q(instruction));
  Instruction_Register IR
       (.CLK(clk_IBUF_BUFG),
        .D(operand_address),
        .E(load_ir),
        .\FSM_sequential_state_reg[0] (IR_n_13),
        .\FSM_sequential_state_reg[0]_0 (IR_n_18),
        .\FSM_sequential_state_reg[1] (IR_n_14),
        .\FSM_sequential_state_reg[2] (IR_n_17),
        .JMP_reg(state),
        .Q(accumulator_out),
        .alu_enable(alu_enable),
        .alu_enable_reg(IR_n_4),
        .data0(data0),
        .\data_out_reg[7] (ALU_result_0),
        .dmem_data(dmem_data),
        .\opcode_OBUFT[2]_inst_i_1 (IR_n_0),
        .\opcode_OBUFT[2]_inst_i_1_0 (IR_n_1),
        .\opcode_OBUFT[2]_inst_i_1_1 (IR_n_2),
        .\opcode_OBUFT[2]_inst_i_1_2 (IR_n_3),
        .\opcode_OBUFT[2]_inst_i_1_3 (IR_n_15),
        .\opcode_OBUFT[2]_inst_i_1_4 (IR_n_16),
        .\opcode_OBUFT[2]_inst_i_1_5 (IR_n_19),
        .\opcode_OBUFT[2]_inst_i_1_6 (IR_n_20),
        .\opcode_OBUFT[2]_inst_i_1_7 (IR_n_21),
        .\opcode_TRI[0] (\opcode_TRI[0] ),
        .\opcode_tristate_oe_reg[7]_0 (opcode_OBUF),
        .\opcode_tristate_oe_reg[7]_1 (instruction),
        .rst_IBUF(rst_IBUF));
  Program_Counter PC
       (.CLK(clk_IBUF_BUFG),
        .D({ALU_n_10,ALU_n_11,CTRL_n_21,CTRL_n_22}),
        .E(ALU_n_8),
        .\PC_out_reg[4]_0 (program_counter_out_OBUF),
        .\PC_out_reg[4]_1 (ALU_n_9),
        .\PC_out_reg[4]_2 (ALU_n_12),
        .Q(operand_address_out[4]),
        .rst_IBUF(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF mux_select_OBUF_inst
       (.I(mux_select_OBUF),
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
  OBUF pc_enable_OBUF_inst
       (.I(pc_enable_OBUF),
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

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40110040)) 
    g0_b0
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40110949)) 
    g0_b1
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00043401)) 
    g0_b2
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00113D49)) 
    g0_b3
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00153C49)) 
    g0_b4
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h412669D9)) 
    g0_b5
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h41041501)) 
    g0_b6
       (.I0(instruction_address[0]),
        .I1(instruction_address[1]),
        .I2(instruction_address[2]),
        .I3(instruction_address[3]),
        .I4(instruction_address[4]),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
   (data_out0_out,
    E,
    CLK,
    data_in2,
    p_0_in__0,
    Q);
  output [7:0]data_out0_out;
  input [0:0]E;
  input CLK;
  input [7:0]data_in2;
  input p_0_in__0;
  input [4:0]Q;

  wire CLK;
  wire [0:0]E;
  wire [4:0]Q;
  wire [7:0]data_in2;
  wire [7:0]data_out0;
  wire [7:0]data_out0_out;
  wire p_0_in__0;

  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(data_out0[0]),
        .Q(data_out0_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(data_out0[1]),
        .Q(data_out0_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(data_out0[2]),
        .Q(data_out0_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(data_out0[3]),
        .Q(data_out0_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(data_out0[4]),
        .Q(data_out0_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(data_out0[5]),
        .Q(data_out0_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(data_out0[6]),
        .Q(data_out0_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(data_out0[7]),
        .Q(data_out0_out[7]),
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
        .WCLK(CLK),
        .WE(p_0_in__0));
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
        .WCLK(CLK),
        .WE(p_0_in__0));
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
        .WCLK(CLK),
        .WE(p_0_in__0));
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
        .WCLK(CLK),
        .WE(p_0_in__0));
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
        .WCLK(CLK),
        .WE(p_0_in__0));
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
        .WCLK(CLK),
        .WE(p_0_in__0));
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
        .WCLK(CLK),
        .WE(p_0_in__0));
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
        .WCLK(CLK),
        .WE(p_0_in__0));
endmodule

module instructionMemory
   (Q,
    E,
    D,
    CLK);
  output [7:0]Q;
  input [0:0]E;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruct_reg[7] 
       (.C(CLK),
        .CE(E),
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2024 14:24:23
// Design Name: 
// Module Name: full_lut_array
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


module eightBitsMultiplier(
    a,b,
    pp0, pp1, pp2, pp3,
    ps0
    );

    input [7:0] a, b;
    output [9:0] pp0, pp1, pp2, pp3;
    output [15:0] ps0;
    
    wire [8:0] o5, o6, o5a, o6a, o5b, o6b, o5c, o6c;
    wire [11:0] co, co_1, co_2, co_3;
    wire [11:0] o, o_1, o_2, o_3;

//   LUT6_2 #(
//      .INIT(64'h8787878778787878) // Specify LUT Contents //335ACC000000000
//   ) LUT_T_01 (
   
//      .O6(o6[0]), // 1-bit LUT6 output
//      .O5(o5[0]), // 1-bit lower LUT5 output
//      .I0(1'b0), // 1-bit LUT input
//      .I1(a[0]), // 1-bit LUT input
//      .I2(1'b0), // 1-bit LUT input
//      .I3(b[0]), // 1-bit LUT input
//      .I4(b[1]), // 1-bit LUT input
//      .I5(1'b1)  // 1-bit LUT input (fast MUX select only available to O6 output)
//   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //335ACC000000000
   ) LUT_t_01 (
      .O6(o6[0]), // 1-bit LUT6 output
      .O5(o5[0]), // 1-bit lower LUT5 output
      .I0(1'b0), // 1-bit LUT input
      .I1(a[0]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //335ACC000000000
   ) LUT_N_01 (
      .O6(o6[1]), // 1-bit LUT6 output
      .O5(o5[1]), // 1-bit lower LUT5 output
      .I0(a[0]), // 1-bit LUT input
      .I1(a[1]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents
   ) LUT_N_02 (
      .O6(o6[2]), // 1-bit LUT6 output
      .O5(o5[2]), // 1-bit lower LUT5 output
      .I0(a[1]), // 1-bit LUT input
      .I1(a[2]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_03 (
      .O6(o6[3]), // 1-bit LUT6 output
      .O5(o5[3]), // 1-bit lower LUT5 output
      .I0(a[2]), // 1-bit LUT input
      .I1(a[3]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_04 (
      .O6(o6[4]), // 1-bit LUT6 output
      .O5(o5[4]), // 1-bit lower LUT5 output
      .I0(a[3]), // 1-bit LUT input
      .I1(a[4]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_05 (
      .O6(o6[5]), // 1-bit LUT6 output
      .O5(o5[5]), // 1-bit lower LUT5 output
      .I0(a[4]), // 1-bit LUT input
      .I1(a[5]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_06 (
      .O6(o6[6]), // 1-bit LUT6 output
      .O5(o5[6]), // 1-bit lower LUT5 output
      .I0(a[5]), // 1-bit LUT input
      .I1(a[6]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_07 (
      .O6(o6[7]), // 1-bit LUT6 output
      .O5(o5[7]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
    LUT6_2 #(
      .INIT(64'hf333ccc00ccc333f) // Specify LUT Contents //33F3CCC000000000
   ) LUT_S_01 (
      .O6(o6[8]), // 1-bit LUT6 output
      .O5(o5[8]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b1)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   CARRY4 CARRY4_inst_01 (
      .CO(co[3:0]),         // 4-bit carry out
      .O(o[3:0]),           // 4-bit carry chain XOR data out
      .CI(b[1]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5[3:0]),         // 4-bit carry-MUX data in
      .S(o6[3:0])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_inst_02 (
      .CO(co[7:4]),         // 4-bit carry out
      .O(o[7:4]),           // 4-bit carry chain XOR data out
      .CI(co[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5[7:4]),         // 4-bit carry-MUX data in
      .S(o6[7:4])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_inst_03 (
      .CO(co[11:8]),         // 4-bit carry out
      .O(o[11:8]),           // 4-bit carry chain XOR data out
      .CI(co[7]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI({3'b000,o5[8]}),         // 4-bit carry-MUX data in
      .S({3'b001,o6[8]})            // 4-bit carry-MUX select input
   );
   
   assign pp0 = o[9:0];
   
//SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW //
//SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW //
//SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW //
//SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW //
//SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW SECOND ROW //
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //335ACC000000000
   ) LUT_t_11 (
      .O6(o6a[0]), // 1-bit LUT6 output
      .O5(o5a[0]), // 1-bit lower LUT5 output
      .I0(1'b0), // 1-bit LUT input
      .I1(a[0]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[2])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //335ACC000000000
   ) LUT_N_11 (
      .O6(o6a[1]), // 1-bit LUT6 output
      .O5(o5a[1]), // 1-bit lower LUT5 output
      .I0(a[0]), // 1-bit LUT input
      .I1(a[1]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[3])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents
   ) LUT_N_12 (
      .O6(o6a[2]), // 1-bit LUT6 output
      .O5(o5a[2]), // 1-bit lower LUT5 output
      .I0(a[1]), // 1-bit LUT input
      .I1(a[2]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[4])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_13 (
      .O6(o6a[3]), // 1-bit LUT6 output
      .O5(o5a[3]), // 1-bit lower LUT5 output
      .I0(a[2]), // 1-bit LUT input
      .I1(a[3]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[5])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_14 (
      .O6(o6a[4]), // 1-bit LUT6 output
      .O5(o5a[4]), // 1-bit lower LUT5 output
      .I0(a[3]), // 1-bit LUT input
      .I1(a[4]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[6])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_15 (
      .O6(o6a[5]), // 1-bit LUT6 output
      .O5(o5a[5]), // 1-bit lower LUT5 output
      .I0(a[4]), // 1-bit LUT input
      .I1(a[5]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[7])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_16 (
      .O6(o6a[6]), // 1-bit LUT6 output
      .O5(o5a[6]), // 1-bit lower LUT5 output
      .I0(a[5]), // 1-bit LUT input
      .I1(a[6]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[8])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_17 (
      .O6(o6a[7]), // 1-bit LUT6 output
      .O5(o5a[7]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[9])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
    LUT6_2 #(
      .INIT(64'hf333ccc00ccc333f) // Specify LUT Contents //33F3CCC000000000
   ) LUT_S_11 (
      .O6(o6a[8]), // 1-bit LUT6 output
      .O5(o5a[8]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(co[9])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   CARRY4 CARRY4_inst_11 (
      .CO(co_1[3:0]),         // 4-bit carry out
      .O(o_1[3:0]),           // 4-bit carry chain XOR data out
      .CI(b[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5a[3:0]),         // 4-bit carry-MUX data in
      .S(o6a[3:0])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_inst_12 (
      .CO(co_1[7:4]),         // 4-bit carry out
      .O(o_1[7:4]),           // 4-bit carry chain XOR data out
      .CI(co_1[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5a[7:4]),         // 4-bit carry-MUX data in
      .S(o6a[7:4])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_inst_13 (
      .CO(co_1[11:8]),         // 4-bit carry out
      .O(o_1[11:8]),           // 4-bit carry chain XOR data out
      .CI(co_1[7]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI({3'b000,o5a[8]}),         // 4-bit carry-MUX data in
      .S({3'b001,o6a[8]})            // 4-bit carry-MUX select input
   );
   
   assign pp1 = o_1[9:0];
   
///THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW //
///THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW //
///THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW //
///THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW //
///THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW THIRD ROW //

LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //335ACC000000000
   ) LUT_t_21 (
      .O6(o6b[0]), // 1-bit LUT6 output
      .O5(o5b[0]), // 1-bit lower LUT5 output
      .I0(1'b0), // 1-bit LUT input
      .I1(a[0]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[2])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //335ACC000000000
   ) LUT_N_21 (
      .O6(o6b[1]), // 1-bit LUT6 output
      .O5(o5b[1]), // 1-bit lower LUT5 output
      .I0(a[0]), // 1-bit LUT input
      .I1(a[1]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[3])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents
   ) LUT_N_22 (
      .O6(o6b[2]), // 1-bit LUT6 output
      .O5(o5b[2]), // 1-bit lower LUT5 output
      .I0(a[1]), // 1-bit LUT input
      .I1(a[2]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[4])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_23 (
      .O6(o6b[3]), // 1-bit LUT6 output
      .O5(o5b[3]), // 1-bit lower LUT5 output
      .I0(a[2]), // 1-bit LUT input
      .I1(a[3]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[5])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_24 (
      .O6(o6b[4]), // 1-bit LUT6 output
      .O5(o5b[4]), // 1-bit lower LUT5 output
      .I0(a[3]), // 1-bit LUT input
      .I1(a[4]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[6])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_25 (
      .O6(o6b[5]), // 1-bit LUT6 output
      .O5(o5b[5]), // 1-bit lower LUT5 output
      .I0(a[4]), // 1-bit LUT input
      .I1(a[5]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[7])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_26 (
      .O6(o6b[6]), // 1-bit LUT6 output
      .O5(o5b[6]), // 1-bit lower LUT5 output
      .I0(a[5]), // 1-bit LUT input
      .I1(a[6]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[8])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_27 (
      .O6(o6b[7]), // 1-bit LUT6 output
      .O5(o5b[7]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[9])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
    LUT6_2 #(
      .INIT(64'hf333ccc00ccc333f) // Specify LUT Contents //33F3CCC000000000
   ) LUT_S_21 (
      .O6(o6b[8]), // 1-bit LUT6 output
      .O5(o5b[8]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(co_1[9])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   CARRY4 CARRY4_inst_21 (
      .CO(co_2[3:0]),         // 4-bit carry out
      .O(o_2[3:0]),           // 4-bit carry chain XOR data out
      .CI(b[5]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5b[3:0]),         // 4-bit carry-MUX data in
      .S(o6b[3:0])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_inst_22 (
      .CO(co_2[7:4]),         // 4-bit carry out
      .O(o_2[7:4]),           // 4-bit carry chain XOR data out
      .CI(co_2[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5b[7:4]),         // 4-bit carry-MUX data in
      .S(o6b[7:4])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_inst_23 (
      .CO(co_2[11:8]),         // 4-bit carry out
      .O(o_2[11:8]),           // 4-bit carry chain XOR data out
      .CI(co_2[7]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI({3'b000,o5b[8]}),         // 4-bit carry-MUX data in
      .S({3'b001,o6b[8]})            // 4-bit carry-MUX select input
   );
   
   assign pp2 = o_2[9:0];
   
///FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW 
///FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW 
///FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW 
///FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW 
///FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW FOURTH ROW 

LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //335ACC000000000
   ) LUT_t_31 (
      .O6(o6c[0]), // 1-bit LUT6 output
      .O5(o5c[0]), // 1-bit lower LUT5 output
      .I0(1'b0), // 1-bit LUT input
      .I1(a[0]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(o_2[2])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //335ACC000000000
   ) LUT_N_31 (
      .O6(o6c[1]), // 1-bit LUT6 output
      .O5(o5c[1]), // 1-bit lower LUT5 output
      .I0(a[0]), // 1-bit LUT input
      .I1(a[1]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(o_2[3])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents
   ) LUT_N_32 (
      .O6(o6c[2]), // 1-bit LUT6 output
      .O5(o5c[2]), // 1-bit lower LUT5 output
      .I0(a[1]), // 1-bit LUT input
      .I1(a[2]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(o_2[4])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_33 (
      .O6(o6c[3]), // 1-bit LUT6 output
      .O5(o5c[3]), // 1-bit lower LUT5 output
      .I0(a[2]), // 1-bit LUT input
      .I1(a[3]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(o_2[5])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_34 (
      .O6(o6c[4]), // 1-bit LUT6 output
      .O5(o5c[4]), // 1-bit lower LUT5 output
      .I0(a[3]), // 1-bit LUT input
      .I1(a[4]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(o_2[6])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_35 (
      .O6(o6c[5]), // 1-bit LUT6 output
      .O5(o5c[5]), // 1-bit lower LUT5 output
      .I0(a[4]), // 1-bit LUT input
      .I1(a[5]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(o_2[7])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_36 (
      .O6(o6c[6]), // 1-bit LUT6 output
      .O5(o5c[6]), // 1-bit lower LUT5 output
      .I0(a[5]), // 1-bit LUT input
      .I1(a[6]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(o_2[8])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0CCA533FF335ACC0) // Specify LUT Contents //33F3CCC000000000
   ) LUT_N_37 (
      .O6(o6c[7]), // 1-bit LUT6 output
      .O5(o5c[7]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(o_2[9])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
    LUT6_2 #(
      .INIT(64'hf333ccc00ccc333f) // Specify LUT Contents //33F3CCC000000000
   ) LUT_S_31 (
      .O6(o6c[8]), // 1-bit LUT6 output
      .O5(o5c[8]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(co_2[9])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   CARRY4 CARRY4_inst_31 (
      .CO(co_3[3:0]),        // 4-bit carry out
      .O(o_3[3:0]),           // 4-bit carry chain XOR data out
      .CI(b[7]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5c[3:0]),         // 4-bit carry-MUX data in
      .S(o6c[3:0])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_inst_32 (
      .CO(co_3[7:4]),         // 4-bit carry out
      .O(o_3[7:4]),           // 4-bit carry chain XOR data out
      .CI(co_3[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5c[7:4]),         // 4-bit carry-MUX data in
      .S(o6c[7:4])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_inst_33 (
      .CO(co_3[11:8]),         // 4-bit carry out
      .O(o_3[11:8]),           // 4-bit carry chain XOR data out
      .CI(co_3[7]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI({3'b000,o5c[8]}),         // 4-bit carry-MUX data in
      .S({3'b001,o6c[8]})            // 4-bit carry-MUX select input
   );
   
   assign pp3 = o_3[9:0];
   assign ps0 = {o_3[9:0],o_2[1:0],o_1[1:0],o[1:0]};

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 01:33:31 PM
// Design Name: 
// Module Name: carryaware8001
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


module carryaware80044(

    a,b,
    ps1, ps2, ps3, ps4,
    p
    
    );
    
    input [7:0] a,b;
    output [9:0] ps1, ps2, ps3, ps4;
    output [15:0] p;
    wire  [9:0] o5, o6, o5a, o6a, o5b, o6b, o5c, o6c;
    wire [11:0] o,o_1,o_2,o_3;
    wire [11:0] co,co_1,co_2,co_3;
   
   LUT6_2 #(
      .INIT(64'h1155cc0000008800) // Specify LUT Contents  ccaa33ff3355cc00
   ) LUT6_2_02 (
      .O6(o6[0]), // 1-bit LUT6 output
      .O5(o5[0]), // 1-bit lower LUT5 output
      .I0(a[3]), // 1-bit LUT input
      .I1(a[4]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b1)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_05 (
      .O6(o6[1]), // 1-bit LUT6 output
      .O5(o5[1]), // 1-bit lower LUT5 output
      .I0(a[4]), // 1-bit LUT input
      .I1(a[5]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_06 (
      .O6(o6[2]), // 1-bit LUT6 output
      .O5(o5[2]), // 1-bit lower LUT5 output
      .I0(a[5]), // 1-bit LUT input
      .I1(a[6]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_07 (
      .O6(o6[3]), // 1-bit LUT6 output
      .O5(o5[3]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'hf333ccc00ccc333f) // Specify LUT Contents mine -> f333c0cc0ccc3f33 from the paper -> f335acc00cca5330
   ) LUT6_2_08 (
      .O6(o6[4]), // 1-bit LUT6 output
      .O5(o5[4]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(b[0]), // 1-bit LUT input
      .I4(b[1]), // 1-bit LUT input
      .I5(1'b1)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   CARRY4 CARRY4_01 (
      .CO(co[3:0]),         // 4-bit carry out
      .O(o[3:0]),           // 4-bit carry chain XOR data out
      .CI(b[1]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5[3:0]),         // 4-bit carry-MUX data in
      .S(o6[3:0])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_02 (
      .CO(co[7:4]),         // 4-bit carry out
      .O(o[7:4]),           // 4-bit carry chain XOR data out
      .CI(co[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI({3'b000,o5[4]}),         // 4-bit carry-MUX data in
      .S({3'b001,o6[4]})            // 4-bit carry-MUX select input
   );
   
   assign ps1 = {o[7:0]};
   
   ///second row
   
   LUT6_2 #(
      .INIT(64'h0eea533ff115acc0) // Specify LUT Contents
   ) LUT6_2_13 (
      .O6(o6a[0]), // 1-bit LUT6 output
      .O5(o5a[0]), // 1-bit lower LUT5 output
      .I0(a[3]), // 1-bit LUT input
      .I1(a[4]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[2])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_15 (
      .O6(o6a[1]), // 1-bit LUT6 output
      .O5(o5a[1]), // 1-bit lower LUT5 output
      .I0(a[4]), // 1-bit LUT input
      .I1(a[5]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[3])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_16 (
      .O6(o6a[2]), // 1-bit LUT6 output
      .O5(o5a[2]), // 1-bit lower LUT5 output
      .I0(a[5]), // 1-bit LUT input
      .I1(a[6]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[4])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_17 (
      .O6(o6a[3]), // 1-bit LUT6 output
      .O5(o5a[3]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(o[5])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'hf333ccc00ccc333f) // Specify LUT Contents
   ) LUT6_2_18 (
      .O6(o6a[4]), // 1-bit LUT6 output
      .O5(o5a[4]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[1]), // 1-bit LUT input
      .I3(b[2]), // 1-bit LUT input
      .I4(b[3]), // 1-bit LUT input
      .I5(co[5])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   CARRY4 CARRY4_11 (
      .CO(co_1[3:0]),         // 4-bit carry out
      .O(o_1[3:0]),           // 4-bit carry chain XOR data out
      .CI(b[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5a[3:0]),         // 4-bit carry-MUX data in
      .S(o6a[3:0])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_12 (
      .CO(co_1[7:4]),         // 4-bit carry out
      .O(o_1[7:4]),           // 4-bit carry chain XOR data out
      .CI(co_1[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI({3'b000,o5a[4]}),         // 4-bit carry-MUX data in
      .S({3'b001,o6a[4]})            // 4-bit carry-MUX select input
   );
   
   assign ps2 = {o_1[9:0]};
   
   //third row
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_20 (
      .O6(o6b[0]), // 1-bit LUT6 output
      .O5(o5b[0]), // 1-bit lower LUT5 output
      .I0(1'b0), // 1-bit LUT input
      .I1(a[0]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_21 (
      .O6(o6b[1]), // 1-bit LUT6 output
      .O5(o5b[1]), // 1-bit lower LUT5 output
      .I0(a[0]), // 1-bit LUT input
      .I1(a[1]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o[2])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_22 (
      .O6(o6b[2]), // 1-bit LUT6 output
      .O5(o5b[2]), // 1-bit lower LUT5 output
      .I0(a[1]), // 1-bit LUT input
      .I1(a[2]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[0])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_23 (
      .O6(o6b[3]), // 1-bit LUT6 output
      .O5(o5b[3]), // 1-bit lower LUT5 output
      .I0(a[2]), // 1-bit LUT input
      .I1(a[3]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[1])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_24 (
      .O6(o6b[4]), // 1-bit LUT6 output
      .O5(o5b[4]), // 1-bit lower LUT5 output
      .I0(a[3]), // 1-bit LUT input
      .I1(a[4]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[2])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_25 (
      .O6(o6b[5]), // 1-bit LUT6 output
      .O5(o5b[5]), // 1-bit lower LUT5 output
      .I0(a[4]), // 1-bit LUT input
      .I1(a[5]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[3])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_26 (
      .O6(o6b[6]), // 1-bit LUT6 output
      .O5(o5b[6]), // 1-bit lower LUT5 output
      .I0(a[5]), // 1-bit LUT input
      .I1(a[6]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[4])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_27 (
      .O6(o6b[7]), // 1-bit LUT6 output
      .O5(o5b[7]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(o_1[5])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   LUT6_2 #(
      .INIT(64'hf333ccc00ccc333f) // Specify LUT Contents
   ) LUT6_2_28 (
      .O6(o6b[8]), // 1-bit LUT6 output
      .O5(o5b[8]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[3]), // 1-bit LUT input
      .I3(b[4]), // 1-bit LUT input
      .I4(b[5]), // 1-bit LUT input
      .I5(co_1[5])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   CARRY4 CARRY4_21 (
      .CO(co_2[3:0]),         // 4-bit carry out
      .O(o_2[3:0]),           // 4-bit carry chain XOR data out
      .CI(b[5]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5b[3:0]),         // 4-bit carry-MUX data in
      .S(o6b[3:0])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_22 (
      .CO(co_2[7:4]),         // 4-bit carry out
      .O(o_2[7:4]),           // 4-bit carry chain XOR data out
      .CI(co_2[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5b[7:4]),         // 4-bit carry-MUX data in
      .S(o6b[7:4])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_23 (
      .CO(co_2[11:8]),         // 4-bit carry out
      .O(o_2[11:8]),           // 4-bit carry chain XOR data out
      .CI(co_2[7]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI({3'b000,o5b[8]}),         // 4-bit carry-MUX data in
      .S({3'b001,o6b[8]})            // 4-bit carry-MUX select input
   );
   
   assign ps3 = {o_2[9:0]};
   
//fourth row//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   LUT6_2 #(
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_30 (
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
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_31 (
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
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_32 (
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
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_33 (
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
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_34 (
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
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_35 (
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
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_36 (
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
      .INIT(64'h0cca533ff335acc0) // Specify LUT Contents
   ) LUT6_2_37 (
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
      .INIT(64'hf333ccc00ccc333f) // Specify LUT Contents
   ) LUT6_2_38 (
      .O6(o6c[8]), // 1-bit LUT6 output
      .O5(o5c[8]), // 1-bit lower LUT5 output
      .I0(a[6]), // 1-bit LUT input
      .I1(a[7]), // 1-bit LUT input
      .I2(b[5]), // 1-bit LUT input
      .I3(b[6]), // 1-bit LUT input
      .I4(b[7]), // 1-bit LUT input
      .I5(co_2[9])  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
   
   CARRY4 CARRY4_31 (
      .CO(co_3[3:0]),         // 4-bit carry out
      .O(o_3[3:0]),           // 4-bit carry chain XOR data out
      .CI(b[7]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5c[3:0]),         // 4-bit carry-MUX data in
      .S(o6c[3:0])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_32 (
      .CO(co_3[7:4]),         // 4-bit carry out
      .O(o_3[7:4]),           // 4-bit carry chain XOR data out
      .CI(co_3[3]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI(o5c[7:4]),         // 4-bit carry-MUX data in
      .S(o6c[7:4])            // 4-bit carry-MUX select input
   );
   
   CARRY4 CARRY4_33 (
      .CO(co_3[11:8]),         // 4-bit carry out
      .O(o_3[11:8]),           // 4-bit carry chain XOR data out
      .CI(co_3[7]),         // 1-bit carry cascade input
      .CYINIT(1'b0), // 1-bit carry initialization
      .DI({3'b000,o5c[8]}),         // 4-bit carry-MUX data in
      .S({3'b001,o6c[8]})            // 4-bit carry-MUX select input
   );
   
   assign ps4 = {o_3[9:0]};
   assign p={o_3[9:0],o_2[1:0],o5[0],3'b0};
   
endmodule
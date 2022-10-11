
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2022 03:43:43 PM
// Design Name: 
// Module Name: tb_full_adder
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

`timescale 1ns / 1ps

module tb_full_adder();
 
  reg r_BIT1 = 0;
  reg r_BIT2 = 0;
  reg r_CARRY = 0;
  wire w_SUM;
  wire w_CARRY;
   
  full_adder uut
    (
     .i_bit1(r_BIT1),
     .i_bit2(r_BIT2),
     .i_carry(r_CARRY),
     .o_sum(w_SUM),
     .o_carry(w_CARRY)
     );
 
  initial
    begin
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b0;
      r_CARRY = 1'b0;
      #10;
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b0;
      r_CARRY = 1'b1;
      #10;
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b1;
      r_CARRY = 1'b0;
      #10;
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b1;
      r_CARRY = 1'b1;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b0;
      r_CARRY = 1'b0;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b0;
      r_CARRY = 1'b1;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b1;
      r_CARRY = 1'b0;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b1;
      r_CARRY = 1'b1;
      #10;
    end 
 
endmodule // half_adder_tb

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly 
// Engineer: Miguel Villa Floran
// 
// Create Date: 07/21/2024 11:49:15 AM
// Module Name: Arithmetic Logic Unit (ALU)
// Description: 
//////////////////////////////////////////////////////////////////////////////////

module ArithmeticLogicUnit(
  input [31:0] A,
  input [31:0] B,
  input [2:0] ALU_Control,
  output [31:0] ALUResult,
  output reg Zero
);

  always @(*) begin
      case(ALUControl)
          4'b0000: ALUResult = A + B; // Add
          4'b0010: ALUResult = A - B; // Subtract
          4'b0100: ALUResult = A & B; // And
          4'b0101: ALUResult = A | B; // Or
          4'b0110: ALUResult = A ^ B; // Xor
          3'b0111: ALUResult = A ~| B; // Nor
          4'b1010: ALUResult =  
          // Set on less than
          default: ALUResult = 32'b0;
      endcase
  end

  always @(*) begin
      if(ALUResult == 32'b0) begin
          Zero = 1'b1;
      end else begin
          Zero = 1'b0;
      end
  end
)
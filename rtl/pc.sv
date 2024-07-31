`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly 
// Engineer: Miguel Villa Floran
// 
// Create Date: 07/21/2024 11:49:15 AM
// Module Name: Program Counter (PC)
// Description: 
//////////////////////////////////////////////////////////////////////////////////

module ProgramCounter(
  input CLK, // Clock Signal (only increment during each cycle)
  input RST, // Synchronous Reset (set the counter to 0x00400000)
  input [31:0] PC_IN, // Program Counter Input
  output [31:0] PC_OUT // Program Counter Output
  );

  // Declare internal signals
  logic [31:0] pc_reg; // Current value of the program counter
  
  assign pc_reg = PC_IN + 32'h00000004; // Increment the program counter by 4
  
  // Sequential logic triggered by a positive edge of the clock
  always @(posedge CLK, negedge RST) begin
    // Synchronous reset
    if (RST) begin
      PC_OUT <= 32h00400000; // Reset the counter to default value
    // Increment the program counter
    end else begin
        PC_OUT <= pc_reg;
    end   
  end
endmodule
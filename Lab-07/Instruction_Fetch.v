module Instruction_Fetch
  (
  input clk,
  input reset,
  output wire [31:0] Instruction
  );
  
  wire [63:0] PCOut;
  wire [63:0] sum;
  
  Adder add
  (
  .a(PCOut),
  .b(64'd4),
  .out(sum)
  );
  
  Program_Counter PC
  (
  .clk(clk),
  .reset(reset),
  .PC_In(sum),
  .PC_Out(PCOut)
  );
  
  Instruction_Memory Im
  (
  .Inst_Address(PCOut),
  .Instruction(Instruction)
  );
  
endmodule
  
  
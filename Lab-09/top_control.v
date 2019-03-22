module top_control
  (
  input [6:0] Opcode,
  input [3:0] Funct,
  output Branch,
  output MemRead,
  output MemtoReg,
  output MemWrite,
  output ALUSrc,
  output RegWrite,
  output [3:0] Operation
  );
  
  wire [1:0] ALUOp1;
  
  Control_Unit CUnit
  (
  .Opcode(Opcode),
  .Branch(Branch),
  .MemRead(MemRead),
  .MemtoReg(MemtoReg),
  .MemWrite(MemWrite),
  .ALUSrc(ALUSrc),
  .RegWrite(RegWrite),
  .ALUOp(ALUOp1)
  );
  
  ALU_Control ALUControl
  (
  .ALUOp(ALUOp1),
  .Funct(Funct),
  .Operation(Operation)
  );
  
endmodule
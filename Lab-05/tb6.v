module tb6
  (
  input [5:0]a,
  input [5:0] b,
  input CarryIn,
  input [3:0] ALUOp,
  output [5:0] Result,
  output CarryOut6
  );
  
  wire CarryOut1;
  wire CarryOut2;
  wire CarryOut3;
  wire CarryOut4;
  wire CarryOut5;
  
  ALU_1_bit alu1
  (
  .a(a[0]),
  .b(b[0]),
  .CarryIn(CarryIn),
  .ALUOp(ALUOp),
  .Result(Result[0]),
  .CarryOut(CarryOut1)
  );
  
  ALU_1_bit alu2
  (
  .a(a[1]),
  .b(b[1]),
  .CarryIn(CarryOut1),
  .ALUOp(ALUOp),
  .Result(Result[1]),
  .CarryOut(CarryOut2)
  );
  
  ALU_1_bit alu3
  (
  .a(a[2]),
  .b(b[2]),
  .CarryIn(CarryOut2),
  .ALUOp(ALUOp),
  .Result(Result[2]),
  .CarryOut(CarryOut3)
  );
  
  ALU_1_bit alu4
  (
  .a(a[3]),
  .b(b[3]),
  .CarryIn(CarryOut3),
  .ALUOp(ALUOp),
  .Result(Result[3]),
  .CarryOut(CarryOut4)
  );
  
  ALU_1_bit alu5
  (
  .a(a[4]),
  .b(b[4]),
  .CarryIn(CarryOut4),
  .ALUOp(ALUOp),
  .Result(Result[4]),
  .CarryOut(CarryOut5)
  );
  
  ALU_1_bit alu6
  (
  .a(a[5]),
  .b(b[5]),
  .CarryIn(CarryOut5),
  .ALUOp(ALUOp),
  .Result(Result[5]),
  .CarryOut(CarryOut6)
  );
  
endmodule
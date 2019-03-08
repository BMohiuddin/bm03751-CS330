module top
  (
  input [31:0] instruction,
  output wire [63:0] ReadData1,
  output wire [63:0] ReadData2
  );
  
  wire [4:0] source1;
  wire [4:0] source2;
  wire [4:0] dest;
  wire [2:0] funct3;
  wire [6:0] funct7;
  wire [6:0] opcode;
  
  
  instruction Ins
  (
  .instruction(instruction),
  .opcode(opcode),
  .rd(dest),
  .funct3(funct3),
  .rs1(source1),
  .rs2(source2) ,
  .funct7(funct7)
  );
  
  registerFile rFile
  (
  .RS1(source1),
  .RS2(source2),
  .RD1(dest),
  .WriteData(64'b0),
  .clk(1'b1),
  .reset(1'b0),
  .RegWrite(1'b1),
  .ReadData1(ReadData1),
  .ReadData2(ReadData2)
  );
  
endmodule
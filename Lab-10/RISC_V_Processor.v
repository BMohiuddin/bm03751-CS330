module RISC_V_Processor
  (
  input clk,
  input reset
  )
  
  wire [63:0] PC_Out;
  wire [63:0] AddOut;
  wire [63:0] ShiftLeft;
  wire [63:0] BranchAddOut;
  wire BranchControlAnd;
  wire [63:0] PC_In;
  wire Zero;
  
  
  Program_Counter PC
  (
  .clk(clk),
  .reset(reset),
  .PC_In(PC_In),
  .PC_Out(PC_Out)
  )
  
  Adder Add4
  (
  .a(PC_Out),
  .b(63'd4),
  .out(AddOut)
  )
  
  Adder BranchAdd
  (
  .a(PC_Out),
  .b(immData*2),
  .out(BranchAddOut)
  )
  
  mux2 PCMux
  (
  .a(AddOut),
  .b(BranchAddOut),
  .select(BranchControl & Zero),
  .data_out(PC_In)
  )
  
  wire [31:0] InstructionMem2Par;
  
  
  Instruction_Memory IM
  (
  .Inst_Address(PC_Out),
  .Instruction(InstructionMem2Par),
  )
  
  wire [6:0] opcode;
  wire [4:0] rd;
  wire [4:0] rs1;
  wire [4:0] rs2;
  
  
  instruction Ins
  (
  .instruction(InstructionMem2Par),
  .opcode(opcode),
  .rd(rd),
  .funct3(funct3),
  .rs1(rs1),
  .rs2(rs2),
  .funct7(funct7)
  )
  
  wire [63:0] WriteData;
  wire RegWrite;
  wire [63:0] ReadData1;
  wire [63:0] ReadData2;
  
  
  registerFile registers
  (
  .RS1(rs1),
  .RS2(rs2),
  .RD1(rd),
  .WriteData(WriteData),
  .clk(clk),
  .reset(reset),
  .RegWrite(RegWrite),
  .ReadData1(ReadData1),
  .ReadData2(ReadData2)
  )
  
  wire [63:0] immData;
  
  idg ImmGen
  (
  .instruction(InstructionMem2Par),
  .imm_data(immData)
  )
  
  wire ALUSrc;
  
  mux2 muxALU
  (
  .a(ReadData2),
  .b(imm_data),
  .select(ALUSrc),
  .data_out(ALU64B)
  )
  
  wire [63:0] ALU64B;
  wire [1:0] ALUOp;
  wire [3:0] Operation;
  wire [63:0] ALU63Result;
  
  ALU_Control ALUCon
  (
  .ALUOp(ALUOp),
  .Funct(InstructionMem2Par),
  .Operation(Operation)
  )
  
  
  ALU_64_bit ALU64
  (
  .a(ReadData1),
  .b(ALU64B),
  .ALUOperation(Operation),
  .Result(ALU63Result),
  .Zero(Zero)
  )
  
  wire MemWrite;
  wire MemRead;
  wire [63:0] DataMemOut;
  
  
  Data_Memory DataMem
  (
  .Mem_Addr(ALU63Result),
  .WriteData(ReadData2)
  .clk(clk),
  .memWrite(MemWrite),
  .memRead(MemRead),
  .Read_Data(DataMemOut)
  )
  
  wire MemtoReg;
  
  mux2 muxMem
  (
  .a(ALU63Result),
  .b(DataMemOut),
  .select(MemtoReg),
  .data_out(WriteData)
  )
  
  
  Control_Unit Control
  (
  .Opcode(opcode),
  .Branch(BranchControlAnd),
  .MemtoReg(MemtoReg),
  .MemWrite(MemWrite),
  .ALUSrc(ALUSrc),
  .RegWrite(RegWrite),
  .ALUOp(ALUOp)
  )
  
endmodule
  
  
  
  
  
  
module tbtop
  (
  );
  
  reg [6:0] Opcode;
  reg [3:0] Funct;
  wire Branch;
  wire MemRead;
  wire MemtoReg;
  wire MemWrite;
  wire ALUSrc;
  wire RegWrite;
  wire [3:0] Operation;
  
  top_control top
  (
  .Opcode(Opcode),
  .Funct(Funct),
  .Branch(Branch),
  .MemRead(MemRead),
  .MemtoReg(MemtoReg),
  .MemWrite(MemWrite),
  .ALUSrc(ALUSrc),
  .RegWrite(RegWrite),
  .Operation(Operation)
  );
  
  initial
  begin
    Opcode = 7'b0000011;
    Funct = 4'b0000;
  end
  
  always
  begin
    #100 Opcode = 7'b0100011;
    #100 Opcode = 7'b1100011;
    #100 Opcode = 7'b0110011;
    #100 Funct = 4'b1000;
    #100 Funct = 4'b0111;
    #100 Funct = 4'b0110;
  end
  
endmodule
    
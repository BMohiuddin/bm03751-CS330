module Instruction_Memory
  (
  input [63:0] Inst_Address,
  output reg [31:0] Instruction
  );
  
  reg [7:0] Inst [15:0];
  initial
  begin
    Inst[0] = 8'b10000011;
    Inst[1] = 8'b00110100;
    Inst[2] = 8'b00000101;
    Inst[3] = 8'b00001111;
    Inst[4] = 8'b10110011;
    Inst[5] = 8'b10000100;
    Inst[6] = 8'b10011010;
    Inst[7] = 8'b00000000;
    Inst[8] = 8'b10010011;
    Inst[9] = 8'b10000100;
    Inst[10] = 8'b00010100;
    Inst[11] = 8'b00000000;
    Inst[12] = 8'b00100011;
    Inst[13] = 8'b00111000;
    Inst[14] = 8'b10010101;
    Inst[15] = 8'b00001110;
  end
  
  always@(Inst_Address)
  begin
    Instruction[7:0] = Inst[Inst_Address];
    Instruction[15:8] = Inst[Inst_Address+1];
    Instruction[23:16] = Inst[Inst_Address+2];
    Instruction[31:24] = Inst[Inst_Address+3];
  end
  
endmodule

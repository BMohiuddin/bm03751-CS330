module tb
  (
  );
  
  reg [63:0] Inst_Address;
  wire [31:0] Instruction;
  
  Instruction_Memory InstM
  (
  .Inst_Address(Inst_Address),
  .Instruction(Instruction)
  );
  
  initial
  begin
    Inst_Address = 64'd0;
  end
  
endmodule
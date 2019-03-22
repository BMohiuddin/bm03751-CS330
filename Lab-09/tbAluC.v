module tbAluC
  (
  );
  
  reg [1:0] ALUOp;
  reg [3:0] Funct;
  wire [3:0] Operation;
  
  ALU_Control AluC
  (
  .ALUOp(ALUOp),
  .Funct(Funct),
  .Operation(Operation)
  );
  
  initial
  begin
    ALUOp = 2'b00;
    Funct = 4'b0000;
  end
  
  always
  begin
    #100 ALUOp = ALUOp + 1;
    #100 ALUOp = ALUOp + 1;
    #100 Funct = 4'b1000;
    #100 Funct = 4'b0111;
    #100 Funct = 4'b0110;
  end
  
endmodule
    
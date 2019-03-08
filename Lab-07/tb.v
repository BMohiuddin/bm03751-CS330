module tb
  (
  );
  
  reg clk;
  reg reset;
  wire [31:0] Instruction;
  
  Instruction_Fetch If
  (
  .clk(clk),
  .reset(reset),
  .Instruction(Instruction)
  );
  
  initial
  begin
    clk = 1'b0;
    reset = 1'b0;
  end
  
  always
  begin
    #300 clk = ~clk;
    #50 reset = ~reset;
  end
  
endmodule
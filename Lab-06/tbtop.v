module tbtop
  (
  );
  reg [31:0] instruction;
  wire [63:0] ReadData1;
  wire [63:0] ReadData2;
  
  top top1
  (
  .instruction(instruction),
  .ReadData1(ReadData1),
  .ReadData2(ReadData2)
  );
  
  initial
  begin
    instruction = 32'hABCDEF98;
  end
  
endmodule 
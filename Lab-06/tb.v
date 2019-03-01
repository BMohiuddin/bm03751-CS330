module tb
  (
  );
  
  reg [4:0] RS1;
  reg [4:0] RS2;
  reg [4:0] RD1;
  reg [63:0] WriteData;
  reg clk;
  reg reset;
  reg RegWrite;
  wire [63:0] ReadData1;
  wire [63:0] ReadData2;
  
  registerFile regF
  (
  .RS1(RS1),
  .RS2(RS2),
  .RD1(RD1),
  .WriteData(WriteData),
  .clk(clk),
  .reset(reset),
  .RegWrite(RegWrite),
  .ReadData1(ReadData1),
  .ReadData2(ReadData2)
  );
  
  //initial
  //  reset = 1'b0;
  
  //always
  //#10 reset = ~reset;
  //#50 clk = ~clk;
  
  initial
  begin
    clk = 1'b0;
    reset = 1'b0;
    RS1 = 5'b00001;
    RS2 = 5'b00010;
    RD1 = 5'b00001;
    WriteData = 64'd4;
    RegWrite = 1'b0;
    #50 clk = 1'b1;
    RegWrite = 1'b1;
    #50 reset = 1'b1;
    RegWrite = 1'b1;
    clk = 1'b0;
    #10 reset = 1'b0;
    RegWrite = 1'b0;
    clk = ~clk;
    RD1 = 5'd0;
    RS1 = RD1;
    
  end

endmodule
    
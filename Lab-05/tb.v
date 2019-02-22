module tb
  (
  );
  
  reg a;
  reg b;
  reg CarryIn;
  reg [3:0] ALUOp;
  wire Result;
  wire CarryOut;
  
  ALU_1_bit alu
  (
  .a(a),
  .b(b),
  .CarryIn(CarryIn),
  .ALUOp(ALUOp),
  .Result(Result),
  .CarryOut(CarryOut)
  );
  
  initial
  begin
    a = 1'b1;
    b = 1'b1;
    CarryIn = 1'b1;
    ALUOp = 4'b0110;
    #300 ALUOp = 4'b0001;
    #300 ALUOp = 4'b0010;
    #300 ALUOp = 4'b0000;
  end
    
  
  initial
  $monitor("Time = ", $time, "a = %d,b = %d, CarryIn = %d,Result = %d,CarryOut = %d,ALUOp = %d",a,b,CarryIn,Result,CarryOut,ALUOp);
endmodule

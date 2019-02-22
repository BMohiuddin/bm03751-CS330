module ALU_1_bit
  (
  input a,
  input b,
  input CarryIn,
  input [3:0] ALUOp,
  output reg Result,
  output reg CarryOut
  );
  
  wire mux1out;
  wire mux2out;
  
  assign mux1out = ALUOp[3]? ~a:a;
  assign mux2out = ALUOp[2]? ~b:b;  
  
  always@(*)
  begin
  
    if (ALUOp[1:0] == 2'b00)
      begin
        Result = mux1out & mux2out;
      end
    else if (ALUOp[1:0] == 2'b01)
      begin
        Result = mux1out | mux2out;
      end
    else if (ALUOp[1:0] == 2'b10)
      begin
        Result = (mux1out & ~mux2out & ~CarryIn) | (~mux1out & mux2out & ~CarryIn) | (~mux1out & ~mux2out & CarryIn) | (mux1out & mux2out & CarryIn);
      end
    CarryOut = (mux1out & CarryIn) | (mux2out & CarryIn) | (mux1out & mux2out);
  end
endmodule
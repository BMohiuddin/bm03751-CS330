module Program_Counter
  (
  input clk,
  input reset,
  input [63:0] PC_In,
  output reg [63:0] PC_Out
  );
  
  always@(posedge reset, posedge clk)
  begin
    if (reset == 1'b1)
      begin
        PC_Out = 0;
      end
    else
      begin
        PC_Out = PC_In;
      end
  end
  
  initial
  PC_Out = 64'd0;
  
  
endmodule   
    
module ALU_64_bit
	(
	input [63:0] a,
	input [63:0] b,
	input [63:0] ALUOperation,
	output reg [63:0] Result,
	output reg Zero
	);

	always@(a,b,ALUOperation)
	begin
	  if (ALUOperation == 4'h0)
		begin
		  Result = a & b;
		end
	  else if (ALUOperation == 4'h1)
		begin
		  Result = a | b;
		end
	  else if (ALUOperation == 4'h2)
		begin
		  Result = a + b;
		end
	  else if (ALUOperation == 4'h6)
		begin
		  Result = a - b;
		end
	  else
		begin
		  Result = ~(a | b);
		end
	  if (Result == 64'h0000000000000000)
		begin
		  Zero = 1;
		end
	  else
		begin
		  Zero = 0;
		end
	end

endmodule
	
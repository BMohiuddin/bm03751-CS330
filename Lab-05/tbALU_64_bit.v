module tbALU_64_bit
	(
	);

	reg [63:0] a;
	reg [63:0] b;
	reg [63:0] ALUOperation;
	wire [63:0] Result;
	wire Zero;

	ALU_64_bit alu64
	(
	  .a(a),
	  .b(b),
	  .Result(Result),
	  .Operation(ALUOperation),
	  .Zero(Zero)
	);

	initial
	begin
	a = 64'h24;
	b = 64'h37;
	ALUOperation = 4'h0;
	end

	always
	#10 ALUOperation = ALUOperation + 1;
endmodule
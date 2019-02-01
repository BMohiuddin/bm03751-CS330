module mux2
(
	input [63:0] a, [63:0] b, 
	input select,
	output reg [63:0] data_out
);
	always@ (select or a or b)
	begin
		case (select)
			1'b0 : data_out = a;
			1'b1: data_out = b;
		endcase
	end

endmodule
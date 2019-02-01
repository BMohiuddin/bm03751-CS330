module tb2
(

);

	reg [63:0] a;
	reg [63:0] b;
	reg select;
	wire [63:0] data_out;

	mux mux3
	(
		.a(a),
		.b(b),
		.select(select),
		.data_out(data_out)
	);

	initial
	begin
	a = 64'h00;
	b = 64'hFF;
	select = 1'b0;
	end

	always
	begin
	#10 select = ~select;
	#15 a[0] = ~a[0];
	end

	initial
	$monitor("Time = ", $time, "---> Output = %d", data_out);
endmodule
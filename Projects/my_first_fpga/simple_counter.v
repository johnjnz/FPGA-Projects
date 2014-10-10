
module simple_counter (input clock, output reg [31:0] counter_out);

	always @ (posedge clock)
	begin
		counter_out <= #1 counter_out + 1;
	end

endmodule	
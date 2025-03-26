
module tt_um_johnson (clk, rst_n, ena, out);


input clk;
input rst_n,ena;
output [7:0]out;

reg [7:0]out;

	always @ (posedge clk or posedge rst_n)
	begin
		if (rst_n) 
			out= 8'b0000_0000;
		else
			out={~out[7],out[0:6]};   
	end

endmodule





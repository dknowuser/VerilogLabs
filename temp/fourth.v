module count (clk, reset, outputp, c);
parameter length;
input clk, reset;
output c, outputp;
wire [length - 1:0] outputp;
reg [length - 1:0]counter;

assign outputp = counter;
assign c = counter[length - 1];

always @(reset)
	if(reset)
		counter = 0;
		
always @(clk)
	counter = counter + 1;

endmodule

module add_pipe (clock, leftInput, rightInput, result);    
input clock, leftInput, rightInput;
output result;

parameter numberOfBits = 8;
parameter delay = 5;

wire [numberOfBits - 1:0] leftInput;
wire [numberOfBits - 1:0] rightInput;
wire [numberOfBits - 1:0] result;
wire clock;

reg [numberOfBits - 1:0] innerResult;

assign result = innerResult;

always @(clock)
begin
	#delay
	if(clock)
		innerResult <= leftInput + rightInput;
end   
endmodule
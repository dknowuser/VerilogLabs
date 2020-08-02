module add_flow (leftInput, rightInput, result);    
input leftInput, rightInput;
output result;

parameter numberOfBits = 8;
parameter delay = 5;

wire [numberOfBits - 1:0] leftInput;
wire [numberOfBits - 1:0] rightInput;
wire [numberOfBits - 1:0] result;

reg [numberOfBits - 1:0] innerResult;

assign result = innerResult;

always @(leftInput, rightInput)
begin
	#delay
	innerResult = leftInput + rightInput;
end   
endmodule
module test_flow (testResult);
parameter numberOfBits = 8;
parameter delay = 20;

output testResult;

reg [numberOfBits - 1:0] innerLeftAdderLeftInput = 0;
reg [numberOfBits - 1:0] innerLeftAdderRightInput = 0;
reg [numberOfBits - 1:0] innerRightAdderLeftInput = 0;
reg [numberOfBits - 1:0] innerRightAdderRightInput = 0;
reg [numberOfBits - 1:0] i = 0;

wire [numberOfBits - 1:0] testResult;

device_flow device (.leftAdderLeftInput(innerLeftAdderLeftInput),
.leftAdderRightInput(innerLeftAdderRightInput),
					.rightAdderLeftInput(innerRightAdderLeftInput),
					.rightAdderRightInput(innerRightAdderRightInput),
					.result(testResult));
					
initial
begin
	for(i = 0; i < 10; i = i + 1)
	begin #delay
	innerLeftAdderLeftInput = i;
	innerLeftAdderRightInput = i;
	innerRightAdderLeftInput = i;
	innerRightAdderRightInput = i;
	end
end
endmodule
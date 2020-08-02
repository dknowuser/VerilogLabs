module test_pipe (clock, testResult);
parameter numberOfBits = 8;
parameter delay = 20;
parameter period = 100;

output clock, testResult;

reg [numberOfBits - 1:0] innerLeftAdderLeftInput = 0;
reg [numberOfBits - 1:0] innerLeftAdderRightInput = 0;
reg [numberOfBits - 1:0] innerRightAdderLeftInput = 0;
reg [numberOfBits - 1:0] innerRightAdderRightInput = 0;
reg [numberOfBits - 1:0] i = 0;

wire [numberOfBits - 1:0] testResult;
wire clock;
reg innerClock = 0;

assign clock = innerClock;

device_pipe device (.clock(clock), .leftAdderLeftInput(innerLeftAdderLeftInput),
.leftAdderRightInput(innerLeftAdderRightInput),
					.rightAdderLeftInput(innerRightAdderLeftInput),
					.rightAdderRightInput(innerRightAdderRightInput),
					.result(testResult));
					
always @(clock)
begin
	if(innerClock)
	begin
		#delay
		innerLeftAdderLeftInput = i;
		innerLeftAdderRightInput = i;
		innerRightAdderLeftInput = i;
		innerRightAdderRightInput = i;
		i = i + 1;
	end
end

always
begin
	#period
	innerClock = ~innerClock;
end
endmodule
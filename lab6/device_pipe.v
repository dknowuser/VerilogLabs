module device_pipe (clock, leftAdderLeftInput, leftAdderRightInput,
					rightAdderLeftInput, rightAdderRightInput, result);
input clock, leftAdderLeftInput, leftAdderRightInput, rightAdderLeftInput, rightAdderRightInput;
output result;

parameter numberOfBits = 8;

wire [numberOfBits - 1:0] leftAdderLeftInput;
wire [numberOfBits - 1:0] leftAdderRightInput;
wire [numberOfBits - 1:0] rightAdderLeftInput;
wire [numberOfBits - 1:0] rightAdderRightInput;
wire [numberOfBits - 1:0] result;
wire clock;

wire [numberOfBits - 1:0] leftInnerResult;
wire [numberOfBits - 1:0] rightInnerResult;

add_pipe bottomLeftAdder(.clock(clock), .leftInput(leftAdderLeftInput), .rightInput(leftAdderRightInput),
						 .result(leftInnerResult));
						 
add_pipe bottomRightAdder(.clock(clock), .leftInput(rightAdderLeftInput), .rightInput(rightAdderRightInput),
						 .result(rightInnerResult));
						 
add_pipe upperAdder(.clock(clock), .leftInput(leftInnerResult), .rightInput(rightInnerResult),
					.result(result));
endmodule
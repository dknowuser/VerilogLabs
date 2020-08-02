module device_flow (leftAdderLeftInput, leftAdderRightInput,
					rightAdderLeftInput, rightAdderRightInput, result);
input leftAdderLeftInput, leftAdderRightInput, rightAdderLeftInput, rightAdderRightInput;
output result;

parameter numberOfBits = 8;

wire [numberOfBits - 1:0] leftAdderLeftInput;
wire [numberOfBits - 1:0] leftAdderRightInput;
wire [numberOfBits - 1:0] rightAdderLeftInput;
wire [numberOfBits - 1:0] rightAdderRightInput;
wire [numberOfBits - 1:0] result;

wire [numberOfBits - 1:0] leftInnerResult;
wire [numberOfBits - 1:0] rightInnerResult;

add_flow bottomLeftAdder(.leftInput(leftAdderLeftInput), .rightInput(leftAdderRightInput),
						 .result(leftInnerResult));
						 
add_flow bottomRightAdder(.leftInput(rightAdderLeftInput), .rightInput(rightAdderRightInput),
						 .result(rightInnerResult));
						 
add_flow upperAdder(.leftInput(leftInnerResult), .rightInput(rightInnerResult),
					.result(result));
endmodule
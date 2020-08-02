module first(currentBit, parity);
parameter delay;
parameter length;
input currentBit;
wire [length - 1:0]currentBit;
output parity;

assign #delay parity = currentBit[0];

endmodule
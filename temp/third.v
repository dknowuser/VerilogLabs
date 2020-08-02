module third(word, combination, bitOutput);
input word, combination;
output bitOutput;
wire [7:0] word;
wire [2:0] combination;
reg find = 0;
reg pos;

assign bitOutput = find;

always @(word, combination)
	for(pos = 0; pos < 6; pos = pos + 1)
		find = (word[pos] == combination[0] 
		&& word[pos + 1] == combination[1] 
		&& word[pos + 2] == combination[2]);

endmodule

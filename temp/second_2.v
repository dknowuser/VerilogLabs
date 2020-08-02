module second(x0, x1, x2, x3, a0, a1, z);
input x0, x1, x2, x3, a0, a1;
reg temp;
reg number;
output z;

always @(a0, a1)
begin
	number = a1*2 + a0;
	if (number == 0)
		temp = x0;
	else
		if (number == 1)
			temp = x1;
		else
			if (number == 2)
				temp = x2;
			else
				temp = x3;
end

assign z = temp;

endmodule

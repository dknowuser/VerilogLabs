module lab2(z, clock, reset);
parameter truth_table='b00111001;
         
wire error;
input clock, reset;
output z;
reg x_0, x_1, x_2;
reg q1, q2;
reg temp;
reg [3:0] takt;

always @(posedge clock)
begin
	if(reset) takt = 0;
	else if(takt != 9) takt = takt + 1;
		else takt = 0;
	x_0 = takt[0];
	x_1 = takt[1];
	x_2 = takt[2];
end

assign error = (z == truth_table[{x_2, x_1, x_0}])? 0:1;
assign z = temp;

always @(x_0,x_1,x_2) 
begin 
  temp = ~x_2 && ~x_1 && ~x_0 || ~x_2 && x_1 && x_0
  || x_2 && ~x_1 && ~x_0 || x_2 && ~x_1 && x_0;
end

always @(posedge clock)
begin
  if(clock) q1 <= z;
end

always @(posedge clock)
begin
  if(clock) q2 <= q1;
end
endmodule

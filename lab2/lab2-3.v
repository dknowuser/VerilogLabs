module lab2;
parameter truth_table='b00111001;
         
wire error;
reg x_0, x_1, x_2, z, clock;
reg [3:0] takt;

initial 
begin
  clock='b0;
  x_0='b0;
  x_1='b0;
  x_2 ='b0;
  $monitor("takt = %d, %b %b1 %b1,%b", takt, x_0, x_1, x_2, z);
  for (takt=0;takt!=8;takt=takt+1)
  begin
  #20 
   #5  x_0= takt[0];
       x_1= takt[1];
       x_2= takt[2];
  end
  $finish;
end 
assign error = (z == truth_table[{x_2, x_1, x_0}])? 0:1;

always @(x_0,x_1,x_2) 
begin 
  casex({x_2, x_1, x_0})
    'bx00: z = 1;
    'b101: z = 1;
    'b011: z = 1;
    default z = 0;
  endcase
 //z =� 0; �
end
endmodule

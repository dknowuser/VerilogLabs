module lab2;
parameter truth_table='b00111001;

wire  error;
reg x_0, x_1, x_2, z;// clock;
reg [3:0] takt;

initial  begin
  //clock='b0;
  x_0='b0;
  x_1='b0;
  x_2 ='b0;
$monitor("takt = %d, %b %b1 %b1,%b", takt, x_0, x_1, x_2, z);
for (takt=0;takt!=8;takt=takt+1)
  begin
  //#20 // clock=’b1;
   #5  x_0= takt[0];
       x_1= takt[1];
       x_2= takt[2];
 // #5 clock=’b0 ;
  end
$finish;
end 	 

assign 
    Error=(z==truth_table[{x_2, x_1, x_0}])? 0:1;
always @(x_0,x_1,x_2)
begin 
 my_logic my_logic_instance(.zt(z), .a(x_2), .b(x_1), .c(x_0));
end
endmodule

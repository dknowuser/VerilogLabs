 
 module lab1v;
//output y,z_0,z_1;
//logic
reg
 x_0,x_1,x_2;
//logic
wire 
y,z_0,z_1;

reg [2:0]
  takt ;
initial   begin
   x_0='b0;
   x_1='b0;
for (takt=0;takt!=6;takt=takt+1)
    begin
    #20  x_0=takt[0];
           x_1= takt[1];
           x_2= takt[2];
    end
end
assign #6  y =  x_0 && x_1 && ~x_2,
 z_0 =   y || x_0 && x_2 || ~x_0 && ~x_2 ,
 z_1 =   y || x_0 &&  ~x_1; 
endmodule 

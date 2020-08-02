 
СTimescale 1ns/100ps

module lab2;
parameter truth_table=8Тbxxxxxxxx
         //модифицируетс€ в соответствии 
         //c индивидуальным вариантом
wire  error;
reg x_0, x_1, x_2, z clock;
reg [3:0] takt;

initial  begin
  clock='b0;
  x_0='b0;
  x_1='b0;
  x_2 ='b0;
$monitor("takt = %d, %b %b1 %b1,%b %b1", takt, x_0, x_1, x_2, z_0, z_1);
for (takt=0;takt!=8;takt=takt+1)
  begin
  #20 // clock=Тb1;
   #5  x_0= takt[0];
       x_1= takt[1];
       x_2= takt[2];
 // #5 clock=Тb0 ;
  End
$finish;
End 	 


  
assign 
    Error=(z1==truth_table[{x_2, x_1, x_0}])? 0:1
always @(x0,x1,x2) 
//здесь размещаетс€ представление ‘ункции, заданной индивидуальным заданием в форме, соответствующей пункту выполнени€ работы
begin 
 z=ЕЕ
end
endmodule

primitive my_logic(zt,a,b,c)
output zt;
input a,b,c;
 table //модифицировать в соответствии
       //с индивидуальным заданием
       // a, b, c : zt;
          ?  ?  ? : 0;
endtable
endprimitive	   
СTimescale 1ns/100ps

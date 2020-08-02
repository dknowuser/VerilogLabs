



module complex( x_in,
               z_0,z_1,z_2);

input x_in;
output z_0,z_1,z_2 ;
//reg 
wire [2:0] x_in;

wire  z_0,z_1,z_2;
wire [7:0]y;
/*reg [7:0] j;
initial begin
x_in=0;
 for (j=1; j<=15;j=j+1) begin
#20 ;
       x_in=j;
        
                    end
end
*/   
   
decod # (1,3,8)
 mod1(x_in,y);
or mod2(z_0, y[0],y[5],y[7]);
or   mod3(z_1, y[1],y[3],y[7]);
or   mod4(z_2, y[4],y[3],y[5]);
endmodule 

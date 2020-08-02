




module decod(x_in,y_out);
parameter delay=3;
parameter n=4;// number of inputs
parameter u=8;
input x_in;
output y_out;
wire [n-1:0] x_in;

reg [u-1:0] y_out;

reg [n:0]  i;

always @ (x_in)
 begin  
   # delay;
for (i=0; i<u; i=i+1)
     
     y_out[i] =  x_in==i  ? 1:0;    
/*       y_out[0] =  x_in==0  ? 1:0;  
y_out[1] =  x_in==1  ? 1:0; 
y_out[2] =  x_in==2  ? 1:0;  
y_out[3] =  x_in==3  ? 1:0; 
y_out[4] =  x_in==4  ? 1:0; 
y_out[5] =  x_in==5 ? 1:0; 
y_out[6] =  x_in==6  ? 1:0; 
y_out[7] =  x_in==7  ? 1:0; 
   */    
                    
end
endmodule 

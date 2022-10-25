`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 20:07:24
// Design Name: 
// Module Name: D_LATCHTB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_LATCHTB;
    reg CLK;  
    reg D;  
    reg ENABLE;  
    wire Q;
    wire QBAR;
     
  
D_LATCH uut( .d(D),.enable(ENABLE),.clk(CLK),.q(Q),.qbar(QBAR));
 
      initial begin  
        CLK <= 0;    
        D <= 0;  
        ENABLE <= 0;  
        end 
        
  always #50 CLK = ~CLK;
    initial 
    begin 
    
    ENABLE=0;D=0;
    #200
    ENABLE=0;D=1;
    #200
    ENABLE=1;D=0;
    #200
    ENABLE=1;D=1;
    
    end
    
    
   
       
      
endmodule 


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 19:50:30
// Design Name: 
// Module Name: D_LATCH
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


module D_LATCH
(input d,  
              input enable,  
              input clk,  
              output reg  q,
              output reg qbar);  
           

    always @ (posedge clk )  
     begin     
        case(enable)  
          0:q <= q;
          1:q <= d;
           endcase
           qbar = ~q;
         end
endmodule

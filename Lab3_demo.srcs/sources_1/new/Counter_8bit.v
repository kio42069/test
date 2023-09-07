`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2023 09:06:05
// Design Name: 
// Module Name: Counter_8bit
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


module Counter_8bit(
    input Clk_1Hz,
    input reset,
    output[7:0] Count
    );
    
    reg [7:0] Count_reg  = 0;
    reg [7:0] Count_next; 
    
    always@(posedge Clk_1Hz or posedge reset) 
        begin
            if(reset)
                Count_reg <= 0;
            else
                Count_reg <= Count_next;
        end
    
    always @(*)
        begin // Comb. ckt to find out the next state
            Count_next = Count_reg + 1;
           end
    
    assign Count = Count_reg; // Comb. ckt to find out the output
    
endmodule

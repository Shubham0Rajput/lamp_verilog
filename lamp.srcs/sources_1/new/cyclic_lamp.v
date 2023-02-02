`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2023 12:22:31
// Design Name: 
// Module Name: cyclic_lamp
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


module cyclic_lamp(clock,light);
    input clock;
    output reg [2:0] light;
    parameter S0=0,S1=1,S2=2;
    parameter RED = 3'b100,GREEN = 3'b010,YELLOW = 3'b001;
    reg [1:0] state;
    always @(posedge clock)
        case(state)
            S0: state <=S1;
            S1: state <=S2;
            S2: state <=S0;
            default: state<=S0;
       endcase  
    always @(state)
        case(state)
           S0: light=RED;
           S1: light=GREEN;
           S2: light=YELLOW;
           default: light=RED; 
    endcase
endmodule

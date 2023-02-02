`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2023 12:30:11
// Design Name: 
// Module Name: lamp_tb
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


module lamp_tb;
    reg clock;
    wire [2:0] light;
    cyclic_lamp LAMP(clock,light);
    always #5 clock = ~clock;
    initial begin
        clock= 1'b0;
        #100 $finish;
    end
    initial begin
        $monitor($time,"RGB=%b",light);
    end

endmodule

`timescale 1ns / 1ps


module register(

    input [7:0]switch,
    input enable,
    input clock,
    output reg [7:0]reg_out

    );
    
    always@ (posedge clock)begin
    
        if(enable) reg_out <= switch;
    end
endmodule

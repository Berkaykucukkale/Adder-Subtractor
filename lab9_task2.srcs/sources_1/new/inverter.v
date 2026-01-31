`timescale 1ns / 1ps


module inverter(

    input [7:0]out_of_register2,
    input inv,
    input clk,
    output reg [7:0]out_of_controller
    );
    
  //  assign out_of_controller = out_of_register2 ^ inv;
    always@ (posedge clk)begin
    
        if(inv) out_of_controller = ~out_of_register2;
        else out_of_controller = out_of_register2;
    end
endmodule

`timescale 1ns / 1ps

//clock dividor
module counter(

    input clk,
    output control
    );
    
    reg [27:0]number;
    always@ (posedge clk)begin
    
        number <= number+1;
    end
    
    assign control = number[20];
endmodule

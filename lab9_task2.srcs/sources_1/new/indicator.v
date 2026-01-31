`timescale 1ns / 1ps


//seven segment
module indicator(
    
    input [3:0]coming_numbers,
    output reg [6:0]showing
    );
    
    always@ (*)begin
    
        case(coming_numbers)
        
                4'b0000:   showing = 7'b0000001;
                4'b0001:   showing = 7'b1001111;
                4'b0010:   showing = 7'b0010010;
                4'b0011:   showing = 7'b0000110;
                4'b0100:   showing = 7'b1001100;
                4'b0101:   showing = 7'b0100100;
                4'b0110:   showing = 7'b0100000;
                4'b0111:   showing = 7'b0001111;
                4'b1000:   showing = 7'b0000000;
                4'b1001:   showing = 7'b0000100;
                default: showing = 7'b0000001;
        endcase
    end
endmodule

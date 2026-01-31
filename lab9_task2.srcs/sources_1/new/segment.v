module segment(
    input [15:0] input_to_select,
    input signal,
    input clock_mux,
    output reg [3:0] an,
    output reg [3:0] picked_numbers
);
    
    reg [1:0] mux_select = 2'b00;

    always @ (posedge clock_mux) begin
        if(signal)
            mux_select <= mux_select + 1;
    end

    always @ (*) begin
        case (mux_select)
            2'b00: begin an = 4'b1110; picked_numbers = input_to_select[3:0]; end
            2'b01: begin an = 4'b1101; picked_numbers = input_to_select[7:4]; end
            2'b10: begin an = 4'b1011; picked_numbers = input_to_select[11:8]; end
            2'b11: begin an = 4'b0111; picked_numbers = input_to_select[15:12]; end
        endcase
    end
endmodule

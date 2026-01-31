`timescale 1ns / 1ps


module final(
    
    input [7:0]switch,
    input clock,
    input control_reg1,
    input control_reg2,
    input control_inverter,
    output [7:0]led,
    output negative_control_led,
    output flow_control_led,
    output [6:0]seg,
    output [3:0]AN

    );
    wire seg_control;
    wire [7:0]incoming1_for_adder;
    wire [7:0]xdc_out_of_register2;
    wire [7:0]out_of_adder;
    wire [7:0]incoming2_for_adder;
    wire [15:0]out_of_converter;
    wire [3:0]output_of_selection;
    
    counter u_counter(
    
        .clk(clock),
        .control(seg_control)
    );
    
    register2 u_reg1(
    
        .clock(clock),
        .enable(control_reg1),
        .reg_out(incoming1_for_adder),
        .switch(switch)
    );
    
    register u_reg2(
    
        .clock(clock),
        .enable(control_reg2),
        .reg_out(xdc_out_of_register2),
        .switch(switch)
    );
    
    inverter u_inverter(
    
        .out_of_register2(xdc_out_of_register2),
        .inv(control_inverter),
        .out_of_controller(incoming2_for_adder)
    );
    
    adder u_adder(
    
        .A(incoming1_for_adder),
        .B(incoming2_for_adder),
        .Cin(control_inverter),
        .result(out_of_adder),
        .negative(negative_control_led),
        .flow(flow_control_led),
        .led_for_bin(led)
    );
    
    bin_to_bcd u_bin_to_bcd(
    
        .bin(out_of_adder),
        .bcd(out_of_converter)
    );
    
    segment u_segment(
    
        .input_to_select(out_of_converter),
        .signal(seg_control),
        .an(AN),
        .picked_numbers(output_of_selection),
        .clock_mux(clock)
    );
    
    indicator u_indicator(
    
        .coming_numbers(output_of_selection),
        .showing(seg)
    );
    
    
endmodule














































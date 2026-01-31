`timescale 1ns / 1ps

module adder(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] result,
    output [7:0] led_for_bin,
    output negative,
    output flow
    );
    
    // 1. Toplama Ýþlemi
    // result çýkýþý doðrudan A, B ve Cin toplamýdýr.
    assign result = A + B + Cin;
    
    // 2. LED Baðlantýsý
    // Ayrý bir always bloðuna gerek yok, kabloyu doðrudan baðlýyoruz.
    assign led_for_bin = result;
    
    // 3. Negative Bayraðý
    // NOT: Senin kodunda 'negative' Cin'e eþitlenmiþti. 
    // Eðer sonuç negatif mi diye bakmak istiyorsan result[7]'ye bakmalýsýn.
    // Ancak senin mantýðýný koruyarak Cin'e baðlýyorum:
    assign negative = Cin; 
    // Doðrusu genelde þudur: assign negative = result[7];
    
    // 4. Flow (Overflow) Hesabý - DÜZELTÝLMÝÞ KISIM
    // Ýki durumdan biri gerçekleþirse flow 1 olur.
    assign flow = ( (A[7] == 1) && (B[7] == 1) && (result[7] == 0) ) || 
                  ( (A[7] == 0) && (B[7] == 0) && (result[7] == 1) );

endmodule
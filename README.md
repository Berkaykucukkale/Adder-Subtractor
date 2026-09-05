# Basys-3 8-Bit Adder-Subtractor (Toplayıcı ve Çıkarıcı)

Bu proje, donanım tanımlama dili (Verilog HDL) kullanılarak Xilinx Basys-3 FPGA kartı üzerinde çalışmak üzere tasarlanmış 8-bitlik bir donanım toplayıcı/çıkarıcı (Adder-Subtractor) devresidir. Sistem, kullanıcıdan alınan iki farklı 8-bitlik sayıyı hafızasında (register) tutar, seçime göre toplama veya 2'ye tümleyen (Two's Complement) mantığıyla çıkarma işlemi yapar ve sonucu hem LED'lerde ikilik (binary) formatta hem de 7-segment ekranda onluk (decimal) formatta gösterir.

Proje Linki: https://www.realdigital.org/doc/93419497b2b9c29e339754e97ec081ad

## 🛠 Donanım ve Araçlar
* **Geliştirme Kartı:** Xilinx Basys-3 FPGA (Artix-7)
* **Geliştirme Ortamı:** Xilinx Vivado
* **Dil:** Verilog HDL

## ✨ Öne Çıkan Özellikler
* **Donanım Hafızası (Registers):** A ve B sayıları eşzamanlı olarak girilmek zorunda değildir. Yetkilendirme (enable) butonları ile donanım hafızasına yazılırlar.
* **2's Complement Çıkarma:** Çıkarma modunda, B sayısı terslenir (inverter) ve Elde Girişi (Cin) 1 yapılarak donanımsal olarak -B'ye dönüştürülür.
* **Taşma (Overflow) ve İşaret Kontrolü:** Toplama/çıkarma sonucu 8-bit sınırlarını aşarsa taşma bayrağı, sonuç negatif çıkarsa eksi bayrağı LED'ler ile bildirilir.
* **Double Dabble Algoritması:** 8-bitlik ikilik (binary) sonuç, donanımsal `bin_to_bcd` modülü ile onluk (decimal) BCD formatına çevrilerek 7-segment ekrana aktarılır.

## ⚙️ Sistem Mimarisi ve Modüller

Proje tamamen modüler bir yaklaşımla, 9 farklı Verilog dosyasından oluşturulmuştur:

1. **`final.v` (Top Module):** Veri yolunu (datapath) yöneten ana çatıdır.
2. **`register.v` & `register2.v`:** 8-bitlik switch girişlerini saat (clock) ve enable sinyali ile hafızaya alan yazmaçlar.
3. **`inverter.v`:** Çıkarma işlemi istendiğinde ikinci sayıyı (B) 1'e tümleyene (tersine) çeviren blok.
4. **`adder.v`:** Ana işlem bloğudur. A ve B'yi (veya ~B) toplar, sonucu üretir ve MSB (7. bit) üzerinden Overflow (Taşma) ve Negative (Negatif) bayraklarını hesaplar.
5. **`bin_to_bcd.v`:** 8-bit binary sonucu, 16-bit BCD (Binary-Coded Decimal) sayıya çevirir.
6. **Ekran Sürücüleri (`counter.v`, `segment.v`, `indicator.v`):** Saat sinyalini bölerek 4 haneli 7-segment ekranı çoğullama (multiplexing) yöntemiyle sürer ve BCD kodunu 7-segment koduna (decoder) dönüştürür.

## 🚀 Kurulum ve Çalıştırma

1. Projeyi Xilinx Vivado'da yeni bir RTL projesi olarak oluşturun.
2. Repodaki tüm `.v` dosyalarını projeye dahil edin ve `final.v` dosyasını **Top Module** olarak belirleyin.
3. Basys-3 constraint (`.xdc`) dosyanızda şu pin eşleştirmelerini yapın:
   * **Girişler:**
     * `switch[7:0]`: Sayı girişleri (Sağdaki ilk 8 switch).
     * `clock`: W5 (100 MHz ana saat).
     * `control_reg1` / `control_reg2`: A ve B sayılarını kaydetmek için kullanılacak butonlar.
     * `control_inverter`: İşlem seçici (0 = Toplama, 1 = Çıkarma / Switch veya Buton).
   * **Çıkışlar:**
     * `led[7:0]`: İkilik tabandaki işlem sonucu (İlk 8 LED).
     * `flow_control_led`: Taşma (Overflow) durumunu gösteren LED.
     * `negative_control_led`: Sonucun negatif olduğunu gösteren LED.
     * `seg[6:0]` ve `AN[3:0]`: 7-segment ekran katot ve anot pinleri.
4. Kodu derleyin (Generate Bitstream) ve donanıma yükleyin.

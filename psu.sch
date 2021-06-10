EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 19
Title "Power Supply"
Date "2021-06-10"
Rev "0.1"
Comp ""
Comment1 "https://github.com/enriquewph/esp32-ups-monitor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 60D14BA8
P 7800 3900
AR Path="/60D14BA8" Ref="R?"  Part="1" 
AR Path="/60CF66AD/60D14BA8" Ref="R17"  Part="1" 
F 0 "R17" H 7870 3946 50  0000 L CNN
F 1 "330" H 7870 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7730 3900 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 7800 3900 50  0001 C CNN
F 4 "No" H 7800 3900 50  0001 C CNN "Fitted"
F 5 "RC1206FR-07330RL" H 7870 4046 50  0001 C CNN "manf#"
	1    7800 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14BB9
P 2150 4100
AR Path="/60D14BB9" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14BB9" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 2150 3850 50  0001 C CNN
F 1 "GND" H 2155 3927 50  0000 C CNN
F 2 "" H 2150 4100 50  0001 C CNN
F 3 "" H 2150 4100 50  0001 C CNN
	1    2150 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60D14BBF
P 2150 3500
AR Path="/60D14BBF" Ref="D?"  Part="1" 
AR Path="/60CF66AD/60D14BBF" Ref="D6"  Part="1" 
F 0 "D6" V 2189 3382 50  0000 R CNN
F 1 "LED" V 2098 3382 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 2150 3500 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Stanley%20Electric%20PDFs/1101W_Series.pdf" H 2150 3500 50  0001 C CNN
F 4 "BR1101W-TR" H 2189 3482 50  0001 C CNN "manf#"
	1    2150 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60D14BC5
P 2150 3900
AR Path="/60D14BC5" Ref="R?"  Part="1" 
AR Path="/60CF66AD/60D14BC5" Ref="R16"  Part="1" 
F 0 "R16" H 2220 3946 50  0000 L CNN
F 1 "1k" H 2220 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2080 3900 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2150 3900 50  0001 C CNN
F 4 "RC1206FR-071KL" H 2220 4046 50  0001 C CNN "manf#"
	1    2150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14BD2
P 3700 4100
AR Path="/60D14BD2" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14BD2" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 3700 3850 50  0001 C CNN
F 1 "GND" H 3705 3927 50  0000 C CNN
F 2 "" H 3700 4100 50  0001 C CNN
F 3 "" H 3700 4100 50  0001 C CNN
	1    3700 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60D14BD8
P 3700 3750
AR Path="/60D14BD8" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14BD8" Ref="C7"  Part="1" 
F 0 "C7" H 3750 3850 50  0000 L CNN
F 1 "100nF" H 3750 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3738 3600 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 3700 3750 50  0001 C CNN
F 4 "50V" H 3750 3950 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 3750 3950 50  0001 C CNN "manf#"
	1    3700 3750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5822 D?
U 1 1 60D14BFB
P 5200 3750
AR Path="/60D14BFB" Ref="D?"  Part="1" 
AR Path="/60CF66AD/60D14BFB" Ref="D7"  Part="1" 
F 0 "D7" V 5154 3830 50  0000 L CNN
F 1 "SS14" V 5245 3830 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 5200 3575 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/ss19-d.pdf" H 5200 3750 50  0001 C CNN
F 4 "SS14" H 5154 3930 50  0001 C CNN "manf#"
	1    5200 3750
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60D14C08
P 6700 3300
AR Path="/60D14C08" Ref="JP?"  Part="1" 
AR Path="/60CF66AD/60D14C08" Ref="JP1"  Part="1" 
F 0 "JP1" H 6800 3200 50  0000 C CNN
F 1 "SolderJumper_2_Open" V 6745 3368 50  0001 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6700 3300 50  0001 C CNN
F 3 "~" H 6700 3300 50  0001 C CNN
	1    6700 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C0F
P 7800 4100
AR Path="/60D14C0F" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C0F" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 7800 3850 50  0001 C CNN
F 1 "GND" H 7805 3927 50  0000 C CNN
F 2 "" H 7800 4100 50  0001 C CNN
F 3 "" H 7800 4100 50  0001 C CNN
	1    7800 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 60D14C28
P 7800 3550
AR Path="/60D14C28" Ref="RV?"  Part="1" 
AR Path="/60CF66AD/60D14C28" Ref="RV1"  Part="1" 
F 0 "RV1" H 7730 3596 50  0000 R CNN
F 1 "10k" H 7730 3505 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 7800 3550 50  0001 C CNN
F 3 "https://www.bourns.com/docs/product-datasheets/3296.pdf" H 7800 3550 50  0001 C CNN
F 4 "No" H 7800 3550 50  0001 C CNN "Fitted"
F 5 "3296W-1-103RLF" H 7730 3696 50  0001 C CNN "manf#"
	1    7800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D14C36
P 8300 3750
AR Path="/60D14C36" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14C36" Ref="C10"  Part="1" 
F 0 "C10" H 8418 3841 50  0000 L CNN
F 1 "470uF" H 8418 3750 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 8338 3600 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 8300 3750 50  0001 C CNN
F 4 "25V" H 8418 3659 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 8418 3941 50  0001 C CNN "manf#"
	1    8300 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C3D
P 8300 4100
AR Path="/60D14C3D" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C3D" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 8300 3850 50  0001 C CNN
F 1 "GND" H 8305 3927 50  0000 C CNN
F 2 "" H 8300 4100 50  0001 C CNN
F 3 "" H 8300 4100 50  0001 C CNN
	1    8300 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 60D14C43
P 6700 3500
AR Path="/60D14C43" Ref="L?"  Part="1" 
AR Path="/60CF66AD/60D14C43" Ref="L1"  Part="1" 
F 0 "L1" V 6650 3600 50  0000 C CNN
F 1 "68uH" V 6650 3400 50  0000 C CNN
F 2 "Inductor_SMD:L_12x12mm_H8mm" H 6700 3500 50  0001 C CNN
F 3 "https://no.mouser.com/datasheet/2/336/SPM2007_08-514261.pdf" H 6700 3500 50  0001 C CNN
F 4 "P0751.683NLT, CDRH127/LDNP-680MC" H 6650 3700 50  0001 C CNN "manf#"
	1    6700 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C49
P 4600 4100
AR Path="/60D14C49" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C49" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 4600 3850 50  0001 C CNN
F 1 "GND" H 4605 3927 50  0000 C CNN
F 2 "" H 4600 4100 50  0001 C CNN
F 3 "" H 4600 4100 50  0001 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C4F
P 4000 4100
AR Path="/60D14C4F" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C4F" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 4000 3850 50  0001 C CNN
F 1 "GND" H 4005 3927 50  0000 C CNN
F 2 "" H 4000 4100 50  0001 C CNN
F 3 "" H 4000 4100 50  0001 C CNN
	1    4000 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C55
P 5200 4100
AR Path="/60D14C55" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C55" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 5200 3850 50  0001 C CNN
F 1 "GND" H 5205 3927 50  0000 C CNN
F 2 "" H 5200 4100 50  0001 C CNN
F 3 "" H 5200 4100 50  0001 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C83
P 3300 4100
AR Path="/60D14C83" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C83" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 3300 3850 50  0001 C CNN
F 1 "GND" H 3305 3927 50  0000 C CNN
F 2 "" H 3300 4100 50  0001 C CNN
F 3 "" H 3300 4100 50  0001 C CNN
	1    3300 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D14C8A
P 3300 3750
AR Path="/60D14C8A" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14C8A" Ref="C6"  Part="1" 
F 0 "C6" H 3350 3850 50  0000 L CNN
F 1 "470uF" H 3350 3650 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 3338 3600 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 3300 3750 50  0001 C CNN
F 4 "25V" H 3350 3550 50  0000 L CNN "Voltage"
F 5 "EEE-1EA471UAP" H 3350 3950 50  0001 C CNN "manf#"
	1    3300 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D3C1D8
P 4600 2800
AR Path="/60D3C1D8" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D3C1D8" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 4600 2550 50  0001 C CNN
F 1 "GND" H 4605 2627 50  0001 C CNN
F 2 "" H 4600 2800 50  0001 C CNN
F 3 "" H 4600 2800 50  0001 C CNN
	1    4600 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60BFAAB6
P 8850 4100
AR Path="/60BFAAB6" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60BFAAB6" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 8850 3850 50  0001 C CNN
F 1 "GND" H 8855 3927 50  0000 C CNN
F 2 "" H 8850 4100 50  0001 C CNN
F 3 "" H 8850 4100 50  0001 C CNN
	1    8850 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60BFC626
P 9400 4100
AR Path="/60BFC626" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60BFC626" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 9400 3850 50  0001 C CNN
F 1 "GND" H 9405 3927 50  0000 C CNN
F 2 "" H 9400 4100 50  0001 C CNN
F 3 "" H 9400 4100 50  0001 C CNN
	1    9400 4100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2596S-3.3 U7
U 1 1 60C0FDE6
P 4600 3400
F 0 "U7" H 4250 3650 50  0000 C CNN
F 1 "LM2596S-3.3" H 4750 3650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 4650 3150 50  0001 L CIN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Flm2596" H 4600 3400 50  0001 C CNN
F 4 "LM2596SX-3.3/NOPB" H 4250 3750 50  0001 C CNN "manf#"
	1    4600 3400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2596S-3.3 U7A1
U 1 1 60C10636
P 4600 2500
F 0 "U7A1" H 4250 2750 50  0000 C CNN
F 1 "ALT" H 4900 2750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-5_Vertical" H 4650 2250 50  0001 L CIN
F 3 "https://4donline.ihs.com/images/VipMasterIC/IC/NATL/NATLS05772/NATLS05772-1.pdf?hkey=EC6BD57738AE6E33B588C5F9AD3CEFA7" H 4600 2500 50  0001 C CNN
F 4 "No" H 4250 2850 50  0001 C CNN "Fitted"
F 5 "LM2596T-3.3/LF03" H 4250 2850 50  0001 C CNN "manf#"
	1    4600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C10EDB
P 8300 5600
AR Path="/60C10EDB" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60C10EDB" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 8300 5350 50  0001 C CNN
F 1 "GND" H 8305 5427 50  0000 C CNN
F 2 "" H 8300 5600 50  0001 C CNN
F 3 "" H 8300 5600 50  0001 C CNN
	1    8300 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C10EF2
P 8850 5600
AR Path="/60C10EF2" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60C10EF2" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 8850 5350 50  0001 C CNN
F 1 "GND" H 8855 5427 50  0000 C CNN
F 2 "" H 8850 5600 50  0001 C CNN
F 3 "" H 8850 5600 50  0001 C CNN
	1    8850 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C10EFF
P 9400 5600
AR Path="/60C10EFF" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60C10EFF" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 9400 5350 50  0001 C CNN
F 1 "GND" H 9405 5427 50  0000 C CNN
F 2 "" H 9400 5600 50  0001 C CNN
F 3 "" H 9400 5600 50  0001 C CNN
	1    9400 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C3379C
P 2750 4100
AR Path="/60C3379C" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60C3379C" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 2750 3850 50  0001 C CNN
F 1 "GND" H 2755 3927 50  0000 C CNN
F 2 "" H 2750 4100 50  0001 C CNN
F 3 "" H 2750 4100 50  0001 C CNN
	1    2750 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60C337A7
P 2750 3750
AR Path="/60C337A7" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60C337A7" Ref="C5"  Part="1" 
F 0 "C5" H 2800 3850 50  0000 L CNN
F 1 "470uF" H 2800 3650 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 2788 3600 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 2750 3750 50  0001 C CNN
F 4 "No" H 2750 3750 50  0001 C CNN "Fitted"
F 5 "25V" H 2800 3550 50  0000 L CNN "Voltage"
F 6 "EEE-1EA471UAP" H 2800 3950 50  0001 C CNN "manf#"
	1    2750 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 60C525F2
P 6700 3850
AR Path="/60C525F2" Ref="L?"  Part="1" 
AR Path="/60CF66AD/60C525F2" Ref="L1A1"  Part="1" 
F 0 "L1A1" V 6650 3950 50  0000 C CNN
F 1 "ALT" V 6650 3750 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D12.0mm_P5.00mm_Fastron_11P" H 6700 3850 50  0001 C CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/rlb.pdf" H 6700 3850 50  0001 C CNN
F 4 "No" H 6650 4050 50  0001 C CNN "Fitted"
F 5 "RLB0914-680KL" H 6650 4050 50  0001 C CNN "manf#"
	1    6700 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C5EBF1
P 3450 5600
AR Path="/60C5EBF1" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60C5EBF1" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 3450 5350 50  0001 C CNN
F 1 "GND" H 3455 5427 50  0000 C CNN
F 2 "" H 3450 5600 50  0001 C CNN
F 3 "" H 3450 5600 50  0001 C CNN
	1    3450 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C5EC09
P 2900 5600
AR Path="/60C5EC09" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60C5EC09" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 2900 5350 50  0001 C CNN
F 1 "GND" H 2905 5427 50  0000 C CNN
F 2 "" H 2900 5600 50  0001 C CNN
F 3 "" H 2900 5600 50  0001 C CNN
	1    2900 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60C5EC14
P 2900 5250
AR Path="/60C5EC14" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60C5EC14" Ref="C5A1"  Part="1" 
F 0 "C5A1" H 2950 5350 50  0000 L CNN
F 1 "ALT" H 2950 5150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.80mm" H 2938 5100 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uhe.pdf" H 2900 5250 50  0001 C CNN
F 4 "No" H 2950 5450 50  0001 C CNN "Fitted"
F 5 "25V" H 2950 5450 50  0001 C CNN "Voltage"
F 6 "UHE1E471MPD6" H 2950 5450 50  0001 C CNN "manf#"
	1    2900 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60C7876B
P 3450 5250
AR Path="/60C7876B" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60C7876B" Ref="C6A1"  Part="1" 
F 0 "C6A1" H 3500 5350 50  0000 L CNN
F 1 "ALT" H 3500 5150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.80mm" H 3488 5100 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uhe.pdf" H 3450 5250 50  0001 C CNN
F 4 "No" H 3500 5450 50  0001 C CNN "Fitted"
F 5 "25V" H 3500 5450 50  0001 C CNN "Voltage"
F 6 "UHE1E471MPD6" H 3500 5450 50  0001 C CNN "manf#"
	1    3450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60C7895E
P 9400 5250
AR Path="/60C7895E" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60C7895E" Ref="C12A1"  Part="1" 
F 0 "C12A1" H 9450 5350 50  0000 L CNN
F 1 "ALT" H 9450 5150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.80mm" H 9438 5100 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uhe.pdf" H 9400 5250 50  0001 C CNN
F 4 "No" H 9450 5450 50  0001 C CNN "Fitted"
F 5 "25V" H 9450 5450 50  0001 C CNN "Voltage"
F 6 "UHE1E471MPD6" H 9450 5450 50  0001 C CNN "manf#"
	1    9400 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60C79448
P 8300 5250
AR Path="/60C79448" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60C79448" Ref="C10A1"  Part="1" 
F 0 "C10A1" H 8350 5350 50  0000 L CNN
F 1 "ALT" H 8350 5150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.80mm" H 8338 5100 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uhe.pdf" H 8300 5250 50  0001 C CNN
F 4 "No" H 8350 5450 50  0001 C CNN "Fitted"
F 5 "25V" H 8350 5450 50  0001 C CNN "Voltage"
F 6 "UHE1E471MPD6" H 8350 5450 50  0001 C CNN "manf#"
	1    8300 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60C79799
P 8850 5250
AR Path="/60C79799" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60C79799" Ref="C11A1"  Part="1" 
F 0 "C11A1" H 8900 5350 50  0000 L CNN
F 1 "ALT" H 8900 5150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.80mm" H 8888 5100 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uhe.pdf" H 8850 5250 50  0001 C CNN
F 4 "No" H 8900 5450 50  0001 C CNN "Fitted"
F 5 "25V" H 8900 5450 50  0001 C CNN "Voltage"
F 6 "UHE1E471MPD6" H 8900 5450 50  0001 C CNN "manf#"
	1    8850 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60C7BAE7
P 9400 3750
AR Path="/60C7BAE7" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60C7BAE7" Ref="C12"  Part="1" 
F 0 "C12" H 9450 3850 50  0000 L CNN
F 1 "470uF" H 9450 3650 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 9438 3600 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 9400 3750 50  0001 C CNN
F 4 "No" H 9400 3750 50  0001 C CNN "Fitted"
F 5 "25V" H 9450 3550 50  0000 L CNN "Voltage"
F 6 "EEE-1EA471UAP" H 9450 3950 50  0001 C CNN "manf#"
	1    9400 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60C7BE2E
P 8850 3750
AR Path="/60C7BE2E" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60C7BE2E" Ref="C11"  Part="1" 
F 0 "C11" H 8900 3850 50  0000 L CNN
F 1 "470uF" H 8900 3650 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 8888 3600 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 8850 3750 50  0001 C CNN
F 4 "No" H 8850 3750 50  0001 C CNN "Fitted"
F 5 "25V" H 8900 3550 50  0000 L CNN "Voltage"
F 6 "EEE-1EA471UAP" H 8900 3950 50  0001 C CNN "manf#"
	1    8850 3750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5822 D?
U 1 1 60C8D736
P 5750 3750
AR Path="/60C8D736" Ref="D?"  Part="1" 
AR Path="/60CF66AD/60C8D736" Ref="D7A1"  Part="1" 
F 0 "D7A1" V 5704 3830 50  0000 L CNN
F 1 "ALT" V 5795 3830 50  0000 L CNN
F 2 "Diode_THT:D_DO-201_P12.70mm_Horizontal" H 5750 3575 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 5750 3750 50  0001 C CNN
F 4 "No" H 5704 3930 50  0001 C CNN "Fitted"
F 5 "1N5819" H 5704 3930 50  0001 C CNN "manf#"
	1    5750 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C8D756
P 5750 4100
AR Path="/60C8D756" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60C8D756" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 5750 3850 50  0001 C CNN
F 1 "GND" H 5755 3927 50  0000 C CNN
F 2 "" H 5750 4100 50  0001 C CNN
F 3 "" H 5750 4100 50  0001 C CNN
	1    5750 4100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U9
U 1 1 60D6394B
P 5850 4850
F 0 "U9" H 5650 5000 50  0000 C CNN
F 1 "LM7805" H 5950 5000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5875 4700 50  0001 L CIN
F 3 "https://www.ti.com/lit/ds/symlink/lm340.pdf" H 5850 4800 50  0001 C CNN
F 4 "No" H 5850 4850 50  0001 C CNN "Fitted"
F 5 "LM7805CT/NOPB" H 5650 5100 50  0001 C CNN "manf#"
	1    5850 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D642BC
P 5300 5650
AR Path="/60D642BC" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D642BC" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 5300 5400 50  0001 C CNN
F 1 "GND" H 5305 5477 50  0000 C CNN
F 2 "" H 5300 5650 50  0001 C CNN
F 3 "" H 5300 5650 50  0001 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D642C8
P 5300 5300
AR Path="/60D642C8" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D642C8" Ref="C8"  Part="1" 
F 0 "C8" H 5350 5400 50  0000 L CNN
F 1 "470uF" H 5350 5200 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 5338 5150 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 5300 5300 50  0001 C CNN
F 4 "No" H 5300 5300 50  0001 C CNN "Fitted"
F 5 "25V" H 5350 5100 50  0000 L CNN "Voltage"
F 6 "EEE-1EA471UAP" H 5350 5500 50  0001 C CNN "manf#"
	1    5300 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D67C53
P 6400 5650
AR Path="/60D67C53" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D67C53" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 6400 5400 50  0001 C CNN
F 1 "GND" H 6405 5477 50  0000 C CNN
F 2 "" H 6400 5650 50  0001 C CNN
F 3 "" H 6400 5650 50  0001 C CNN
	1    6400 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D67C5F
P 6400 5300
AR Path="/60D67C5F" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D67C5F" Ref="C9"  Part="1" 
F 0 "C9" H 6450 5400 50  0000 L CNN
F 1 "470uF" H 6450 5200 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 6438 5150 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDE0000/ABA0000C1142.pdf" H 6400 5300 50  0001 C CNN
F 4 "No" H 6400 5300 50  0001 C CNN "Fitted"
F 5 "25V" H 6450 5100 50  0000 L CNN "Voltage"
F 6 "EEE-1EA471UAP" H 6450 5500 50  0001 C CNN "manf#"
	1    6400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D6D110
P 5850 5650
AR Path="/60D6D110" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D6D110" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 5850 5400 50  0001 C CNN
F 1 "GND" H 5855 5477 50  0000 C CNN
F 2 "" H 5850 5650 50  0001 C CNN
F 3 "" H 5850 5650 50  0001 C CNN
	1    5850 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D9F5AC
P 4950 5650
AR Path="/60D9F5AC" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D9F5AC" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 4950 5400 50  0001 C CNN
F 1 "GND" H 4955 5477 50  0000 C CNN
F 2 "" H 4950 5650 50  0001 C CNN
F 3 "" H 4950 5650 50  0001 C CNN
	1    4950 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D9F5B6
P 4950 5300
AR Path="/60D9F5B6" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D9F5B6" Ref="C8A1"  Part="1" 
F 0 "C8A1" H 5000 5400 50  0000 L CNN
F 1 "ALT" H 5000 5200 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.80mm" H 4988 5150 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uhe.pdf" H 4950 5300 50  0001 C CNN
F 4 "No" H 4950 5300 50  0001 C CNN "Fitted"
F 5 "25V" H 5000 5500 50  0001 C CNN "Voltage"
F 6 "UHE1E471MPD6" H 5000 5500 50  0001 C CNN "manf#"
	1    4950 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60DA2479
P 6750 5650
AR Path="/60DA2479" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60DA2479" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 6750 5400 50  0001 C CNN
F 1 "GND" H 6755 5477 50  0000 C CNN
F 2 "" H 6750 5650 50  0001 C CNN
F 3 "" H 6750 5650 50  0001 C CNN
	1    6750 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60DA2483
P 6750 5300
AR Path="/60DA2483" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60DA2483" Ref="C9A1"  Part="1" 
F 0 "C9A1" H 6800 5400 50  0000 L CNN
F 1 "ALT" H 6800 5200 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.80mm" H 6788 5150 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uhe.pdf" H 6750 5300 50  0001 C CNN
F 4 "No" H 6750 5300 50  0001 C CNN "Fitted"
F 5 "25V" H 6800 5500 50  0001 C CNN "Voltage"
F 6 "UHE1E471MPD6" H 6800 5500 50  0001 C CNN "manf#"
	1    6750 5300
	1    0    0    -1  
$EndComp
Text Notes 5450 1850 0    50   ~ 0
Compatible with LM2575\nLM2576, LM2596S, Select \ninductor accordingly.
Text Notes 5450 2500 0    50   ~ 0
For ADJ Version:\n- Solder R17\n- Solder RV1\n- Adjust until 3.3v\n- Solder remaining components.
Text Notes 5450 2050 0    50   ~ 0
For 3.3V Version:\n- Solder JP1
Text Notes 5450 2900 0    50   ~ 0
For 5.0V/12V\n- Solder RV1\n- Adjust until 3.3v\n- Solder remaining components.
Text Notes 3650 2000 0    39   ~ 0
*Duplicated for dual footprint.
Text HLabel 1850 3300 0    39   Input ~ 0
VIN
Text HLabel 10000 3300 2    39   Output ~ 0
VOUT
Text Notes 8750 4450 0    39   ~ 0
*Recommended. Not needed.
Text Notes 8200 5950 0    39   ~ 0
*Duplicated for dual footprint.
Text HLabel 9500 4800 2    39   Output ~ 0
VOUT
Text Notes 2600 4450 0    39   ~ 0
*Recommended. \nNot needed.
Text Notes 6250 4300 0    39   ~ 0
*Duplicated for dual footprints.
Text Notes 2600 5950 0    39   ~ 0
*Duplicated for dual footprint.
Text HLabel 2800 4800 0    39   Input ~ 0
VIN
Text HLabel 4750 4850 0    39   Input ~ 0
VIN
Text HLabel 6900 4850 2    39   Output ~ 0
VOUT_5V
Text Notes 4600 5950 0    39   ~ 0
*Extra power rail for some sensors. Not needed.
Wire Wire Line
	2150 3750 2150 3650
Wire Wire Line
	2150 4100 2150 4050
Wire Wire Line
	3700 3300 4100 3300
Wire Wire Line
	3700 3600 3700 3300
Wire Wire Line
	3700 3900 3700 4100
Wire Wire Line
	7800 4100 7800 4050
Wire Wire Line
	7500 3300 7500 3500
Wire Wire Line
	8300 3300 8300 3600
Wire Wire Line
	7800 3300 7500 3300
Wire Wire Line
	7800 3300 8300 3300
Wire Wire Line
	7800 3400 7800 3300
Wire Wire Line
	8050 3100 8050 3550
Wire Wire Line
	5100 3300 5200 3300
Wire Wire Line
	8050 3550 7950 3550
Wire Wire Line
	7800 3750 7800 3700
Wire Wire Line
	8300 4100 8300 3900
Wire Wire Line
	4000 4100 4000 3500
Wire Wire Line
	4000 3500 4100 3500
Wire Wire Line
	4600 4100 4600 3700
Wire Wire Line
	5200 4100 5200 3900
Wire Wire Line
	5200 3600 5200 3500
Wire Wire Line
	3300 3300 3700 3300
Wire Wire Line
	3300 3600 3300 3300
Wire Wire Line
	3300 4100 3300 3900
Wire Notes Line style solid rgb(0, 0, 0)
	5400 2950 5400 1550
Wire Notes Line style solid rgb(0, 0, 0)
	6800 1550 6800 2950
Wire Wire Line
	2150 3300 2150 3350
Wire Wire Line
	5100 2600 5150 2600
Wire Wire Line
	5200 2400 5100 2400
Wire Wire Line
	5100 3500 5200 3500
Wire Wire Line
	5150 2600 5150 3400
Wire Wire Line
	5150 3400 5200 3400
Wire Wire Line
	5200 3400 5200 3500
Wire Wire Line
	4100 2600 4000 2600
Wire Wire Line
	4000 2600 4000 3500
Wire Wire Line
	4100 2400 3700 2400
Wire Wire Line
	3700 2400 3700 3300
Wire Notes Line
	5250 2950 3600 2950
Wire Notes Line
	3600 2950 3600 1900
Wire Notes Line
	3600 1900 5250 1900
Wire Notes Line
	5250 1900 5250 2950
Wire Wire Line
	8850 3300 8850 3600
Wire Wire Line
	8850 4100 8850 3900
Wire Wire Line
	8300 3300 8850 3300
Wire Wire Line
	9400 3300 8850 3300
Wire Wire Line
	9400 3300 9400 3600
Wire Notes Line
	8700 4500 9800 4500
Wire Notes Line
	9800 3150 8700 3150
Wire Notes Line
	8700 3150 8700 4500
Wire Notes Line
	9800 3150 9800 4500
Wire Wire Line
	8300 4800 8300 5100
Wire Wire Line
	8300 5600 8300 5400
Wire Wire Line
	8850 4800 8850 5100
Wire Wire Line
	8850 5600 8850 5400
Wire Wire Line
	8300 4800 8850 4800
Wire Wire Line
	9400 5600 9400 5400
Wire Wire Line
	9400 4800 8850 4800
Wire Wire Line
	9400 4800 9400 5100
Wire Notes Line
	9800 4650 9800 6000
Wire Notes Line
	8150 6000 8150 4650
Wire Notes Line
	8150 6000 9800 6000
Wire Notes Line
	9800 4650 8150 4650
Wire Wire Line
	9500 4800 9400 4800
Wire Wire Line
	2750 3600 2750 3300
Wire Wire Line
	2750 4100 2750 3900
Wire Wire Line
	2750 3300 3300 3300
Wire Notes Line
	2550 3200 3100 3200
Wire Wire Line
	6850 3300 7500 3300
Wire Wire Line
	6850 3500 7100 3500
Wire Wire Line
	5200 2400 5200 3300
Wire Wire Line
	8050 3100 6450 3100
Wire Wire Line
	6450 3100 6450 3300
Wire Wire Line
	6450 3300 6550 3300
Wire Wire Line
	6550 3850 6350 3850
Wire Wire Line
	6350 3850 6350 3500
Wire Wire Line
	6350 3500 6550 3500
Wire Wire Line
	6850 3850 7100 3850
Wire Wire Line
	7100 3850 7100 3500
Wire Wire Line
	7100 3500 7500 3500
Wire Wire Line
	3450 5100 3450 4800
Wire Wire Line
	3450 5600 3450 5400
Wire Wire Line
	2900 5100 2900 4800
Wire Wire Line
	2900 5600 2900 5400
Wire Wire Line
	2900 4800 3450 4800
Wire Notes Line
	3900 6000 3900 4650
Wire Notes Line
	2550 4650 2550 6000
Wire Notes Line
	2550 6000 3900 6000
Wire Wire Line
	2800 4800 2900 4800
Wire Notes Line
	2550 4650 3900 4650
Wire Notes Line
	2550 3200 2550 4500
Wire Notes Line
	2550 4500 3100 4500
Wire Notes Line
	3100 4500 3100 3200
Wire Wire Line
	9400 4100 9400 3900
Wire Wire Line
	5200 3300 6450 3300
Wire Wire Line
	5750 4100 5750 3900
Wire Wire Line
	5750 3600 5750 3500
Wire Notes Line
	6000 3700 6000 3400
Wire Notes Line
	6000 3400 5600 3400
Wire Notes Line
	5600 3400 5600 4350
Wire Notes Line
	7250 3700 7250 4350
Wire Wire Line
	1850 3300 2150 3300
Wire Wire Line
	2150 3300 2750 3300
Wire Wire Line
	10000 3300 9400 3300
Wire Wire Line
	5300 4850 5300 5150
Wire Wire Line
	5300 5650 5300 5450
Wire Wire Line
	6400 4850 6400 5150
Wire Wire Line
	6400 5650 6400 5450
Wire Wire Line
	6150 4850 6400 4850
Wire Wire Line
	5850 5650 5850 5150
Wire Wire Line
	5550 4850 5300 4850
Wire Notes Line
	4550 4500 7250 4500
Wire Notes Line
	7250 4500 7250 6000
Wire Notes Line
	7250 6000 4550 6000
Wire Notes Line
	4550 6000 4550 4500
Wire Wire Line
	4950 5150 4950 4850
Wire Wire Line
	4950 5650 4950 5450
Wire Wire Line
	6750 5150 6750 4850
Wire Wire Line
	6750 5650 6750 5450
Wire Wire Line
	6750 4850 6900 4850
Wire Wire Line
	6750 4850 6400 4850
Wire Wire Line
	4750 4850 4950 4850
Wire Wire Line
	4950 4850 5300 4850
Wire Notes Line
	6000 3700 7250 3700
Wire Notes Line
	7250 4350 5600 4350
Wire Wire Line
	5750 3500 6350 3500
Wire Wire Line
	5200 3500 5750 3500
Wire Notes Line style solid rgb(0, 0, 0)
	5400 2950 6800 2950
Wire Notes Line style solid rgb(0, 0, 0)
	5400 1550 6800 1550
Connection ~ 3700 3300
Connection ~ 7800 3300
Connection ~ 5200 3500
Connection ~ 4000 3500
Connection ~ 3300 3300
Connection ~ 8300 3300
Connection ~ 8850 3300
Connection ~ 8850 4800
Connection ~ 9400 4800
Connection ~ 2750 3300
Connection ~ 7500 3300
Connection ~ 6450 3300
Connection ~ 6350 3500
Connection ~ 7100 3500
Connection ~ 2900 4800
Connection ~ 5200 3300
Connection ~ 2150 3300
Connection ~ 9400 3300
Connection ~ 6750 4850
Connection ~ 6400 4850
Connection ~ 5300 4850
Connection ~ 4950 4850
Connection ~ 5750 3500
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 19
Title "USB - UART Serial Converter"
Date "2021-06-10"
Rev "0.1"
Comp ""
Comment1 "https://github.com/enriquewph/esp32-ups-monitor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_USB:CH340G U1
U 1 1 60DE9DBC
P 5550 3450
F 0 "U1" H 5300 4000 50  0000 C CNN
F 1 "CH340G" H 5750 2900 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5600 2900 50  0001 L CNN
F 3 "https://cdn.sparkfun.com/datasheets/Dev/Arduino/Other/CH340DS1.PDF" H 5200 4250 50  0001 C CNN
F 4 "CH340G" H 5550 3450 50  0001 C CNN "manf#"
	1    5550 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60DEA3F8
P 4450 4400
F 0 "C2" H 4565 4446 50  0000 L CNN
F 1 "22pF" H 4565 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4488 4250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GP_NP0_16V-to-50V_18.pdf" H 4450 4400 50  0001 C CNN
F 4 "CC1206KRNPO9BN220" H 4450 4400 50  0001 C CNN "manf#"
	1    4450 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 60DEAA23
P 4700 4150
F 0 "Y1" H 4700 4418 50  0000 C CNN
F 1 "12MHz" H 4700 4327 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 4700 4150 50  0001 C CNN
F 3 "https://abracon.com/Resonators/ABL.pdf" H 4700 4150 50  0001 C CNN
F 4 "ABL-12.000MHZ-N2X-T" H 4700 4150 50  0001 C CNN "manf#"
	1    4700 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60DEB69D
P 4950 4400
F 0 "C3" H 5065 4446 50  0000 L CNN
F 1 "22pF" H 5065 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4988 4250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GP_NP0_16V-to-50V_18.pdf" H 4950 4400 50  0001 C CNN
F 4 "CC1206KRNPO9BN220" H 4950 4400 50  0001 C CNN "manf#"
	1    4950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4250 4950 4150
Wire Wire Line
	4950 4150 4850 4150
Wire Wire Line
	4450 4250 4450 4150
Wire Wire Line
	4450 4150 4550 4150
Wire Wire Line
	4950 4150 4950 3850
Wire Wire Line
	4950 3850 5150 3850
Connection ~ 4950 4150
Wire Wire Line
	4450 4150 4450 3650
Wire Wire Line
	4450 3650 5150 3650
Connection ~ 4450 4150
$Comp
L power:GND #PWR0114
U 1 1 60DECDE0
P 5550 4700
F 0 "#PWR0114" H 5550 4450 50  0001 C CNN
F 1 "GND" H 5555 4527 50  0000 C CNN
F 2 "" H 5550 4700 50  0001 C CNN
F 3 "" H 5550 4700 50  0001 C CNN
	1    5550 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 60DED339
P 4950 4700
F 0 "#PWR0115" H 4950 4450 50  0001 C CNN
F 1 "GND" H 4955 4527 50  0000 C CNN
F 2 "" H 4950 4700 50  0001 C CNN
F 3 "" H 4950 4700 50  0001 C CNN
	1    4950 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 60DED506
P 4450 4700
F 0 "#PWR0116" H 4450 4450 50  0001 C CNN
F 1 "GND" H 4455 4527 50  0000 C CNN
F 2 "" H 4450 4700 50  0001 C CNN
F 3 "" H 4450 4700 50  0001 C CNN
	1    4450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4700 4450 4550
Wire Wire Line
	4950 4700 4950 4550
Wire Wire Line
	5550 4700 5550 4050
$Comp
L power:+3V3 #PWR0117
U 1 1 60DEDEE1
P 7150 2550
F 0 "#PWR0117" H 7150 2400 50  0001 C CNN
F 1 "+3V3" H 7165 2723 50  0000 C CNN
F 2 "" H 7150 2550 50  0001 C CNN
F 3 "" H 7150 2550 50  0001 C CNN
	1    7150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2750 5550 2850
Wire Wire Line
	5450 2850 5450 2750
NoConn ~ 5150 3150
NoConn ~ 5950 3650
NoConn ~ 5950 3550
NoConn ~ 5950 3450
NoConn ~ 5950 3350
$Comp
L Connector:USB_B J6
U 1 1 60DEF23D
P 3800 3350
F 0 "J6" H 3857 3817 50  0000 C CNN
F 1 "USB_B" H 3857 3726 50  0000 C CNN
F 2 "libs:USB-B-VERTICAL-SMD&THT" H 3950 3300 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=5787834&DocType=Customer+Drawing&DocLang=English" H 3950 3300 50  0001 C CNN
F 4 "5787834-1" H 3800 3350 50  0001 C CNN "manf#"
	1    3800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3350 5150 3350
Wire Wire Line
	5150 3450 4100 3450
Text HLabel 4450 3150 2    50   Output ~ 0
VUSB
Wire Wire Line
	4450 3150 4100 3150
$Comp
L power:GND #PWR0118
U 1 1 60DF066D
P 3750 4050
F 0 "#PWR0118" H 3750 3800 50  0001 C CNN
F 1 "GND" H 3755 3877 50  0000 C CNN
F 2 "" H 3750 4050 50  0001 C CNN
F 3 "" H 3750 4050 50  0001 C CNN
	1    3750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4050 3750 3900
Wire Wire Line
	3750 3900 3800 3900
Wire Wire Line
	3800 3900 3800 3750
Wire Wire Line
	3700 3750 3700 3900
Wire Wire Line
	3700 3900 3750 3900
Connection ~ 3750 3900
$Comp
L Device:C C?
U 1 1 60DF372B
P 6700 3000
AR Path="/60DF372B" Ref="C?"  Part="1" 
AR Path="/60DD98A5/60DF372B" Ref="C4"  Part="1" 
F 0 "C4" H 6815 3046 50  0000 L CNN
F 1 "100nF" H 6815 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6738 2850 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 6700 3000 50  0001 C CNN
F 4 "50V" H 6700 3000 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 6700 3000 50  0001 C CNN "manf#"
	1    6700 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 60DF3C1A
P 6700 3200
F 0 "#PWR0119" H 6700 2950 50  0001 C CNN
F 1 "GND" H 6705 3027 50  0000 C CNN
F 2 "" H 6700 3200 50  0001 C CNN
F 3 "" H 6700 3200 50  0001 C CNN
	1    6700 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 60DF3F2D
P 7150 3200
F 0 "#PWR0120" H 7150 2950 50  0001 C CNN
F 1 "GND" H 7155 3027 50  0000 C CNN
F 2 "" H 7150 3200 50  0001 C CNN
F 3 "" H 7150 3200 50  0001 C CNN
	1    7150 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 60DF492D
P 7150 3000
F 0 "C13" H 7268 3046 50  0000 L CNN
F 1 "100uF" H 7268 2955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7188 2850 50  0001 C CNN
F 3 "https://industrial.panasonic.com/ww/products/capacitors/aluminum-capacitors/aluminum-cap-lead/models/ECEA1CKA101B" H 7150 3000 50  0001 C CNN
F 4 "16V" H 7150 3000 50  0001 C CNN "Voltage"
F 5 "ECE-A1CKA101B" H 7150 3000 50  0001 C CNN "manf#"
	1    7150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2750 5550 2750
Wire Wire Line
	7150 2550 7150 2750
Text HLabel 6050 3050 2    50   Output ~ 0
TXD
Text HLabel 6050 3150 2    50   Input ~ 0
RXD
Wire Wire Line
	6700 3200 6700 3150
Wire Wire Line
	7150 3200 7150 3150
Wire Wire Line
	6700 2850 6700 2750
Connection ~ 6700 2750
Wire Wire Line
	6700 2750 7150 2750
Wire Wire Line
	7150 2850 7150 2750
Connection ~ 7150 2750
Wire Wire Line
	5550 2750 6700 2750
Connection ~ 5550 2750
Wire Wire Line
	6050 3150 5950 3150
Wire Wire Line
	5950 3050 6050 3050
Wire Wire Line
	6900 4000 6850 4000
$Comp
L Device:R R?
U 1 1 60E02CFD
P 6700 4000
AR Path="/60E02CFD" Ref="R?"  Part="1" 
AR Path="/60DD98A5/60E02CFD" Ref="R13"  Part="1" 
F 0 "R13" V 6600 3900 50  0000 C CNN
F 1 "10k" V 6600 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6630 4000 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6700 4000 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 6700 4000 50  0001 C CNN "manf#"
	1    6700 4000
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC817 Q?
U 1 1 60E02D03
P 7100 4000
AR Path="/60E02D03" Ref="Q?"  Part="1" 
AR Path="/60DD98A5/60E02D03" Ref="Q4"  Part="1" 
F 0 "Q4" H 7291 4046 50  0000 L CNN
F 1 "BC817" H 7291 3955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7300 3925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC817-16LT1-D.PDF" H 7100 4000 50  0001 L CNN
F 4 "SBC817-40LT1G" H 7100 4000 50  0001 C CNN "manf#"
	1    7100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4700 6850 4700
$Comp
L Device:R R?
U 1 1 60E03CCD
P 6700 4700
AR Path="/60E03CCD" Ref="R?"  Part="1" 
AR Path="/60DD98A5/60E03CCD" Ref="R14"  Part="1" 
F 0 "R14" V 6600 4600 50  0000 C CNN
F 1 "10k" V 6600 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6630 4700 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6700 4700 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 6700 4700 50  0001 C CNN "manf#"
	1    6700 4700
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC817 Q?
U 1 1 60E03CD3
P 7100 4700
AR Path="/60E03CD3" Ref="Q?"  Part="1" 
AR Path="/60DD98A5/60E03CD3" Ref="Q5"  Part="1" 
F 0 "Q5" H 7300 4650 50  0000 L CNN
F 1 "BC817" H 7300 4750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7300 4625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC817-16LT1-D.PDF" H 7100 4700 50  0001 L CNN
F 4 "SBC817-40LT1G" H 7100 4700 50  0001 C CNN "manf#"
	1    7100 4700
	1    0    0    1   
$EndComp
Wire Wire Line
	7200 4500 7200 4400
Wire Wire Line
	7200 4400 6450 4400
Wire Wire Line
	6450 4400 6450 4000
Wire Wire Line
	6450 4000 6550 4000
Wire Wire Line
	6550 4700 6350 4700
Wire Wire Line
	6350 4700 6350 4300
Wire Wire Line
	6350 4300 7200 4300
Wire Wire Line
	7200 4300 7200 4200
Wire Wire Line
	6350 4300 6350 3750
Wire Wire Line
	6350 3750 5950 3750
Connection ~ 6350 4300
Wire Wire Line
	5950 3850 6450 3850
Wire Wire Line
	6450 3850 6450 4000
Connection ~ 6450 4000
Text HLabel 7700 5000 2    50   Output ~ 0
RESET_uC
Wire Wire Line
	7700 5000 7200 5000
Wire Wire Line
	7200 5000 7200 4900
Text HLabel 7700 3700 2    50   Output ~ 0
FLASH_uC
Wire Wire Line
	7700 3700 7200 3700
Wire Wire Line
	7200 3700 7200 3800
$EndSCHEMATC

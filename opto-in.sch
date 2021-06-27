EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 18
Title "Opto-coupled Input"
Date "2021-06-10"
Rev "0.1"
Comp ""
Comment1 "https://github.com/enriquewph/esp32-ups-monitor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3V3 #PWR?
U 1 1 6144C538
P 6150 3450
AR Path="/6144C538" Ref="#PWR?"  Part="1" 
AR Path="/61400494/61448E8E/6144C538" Ref="#PWR?"  Part="1" 
AR Path="/61400494/614555D4/6144C538" Ref="#PWR0151"  Part="1" 
AR Path="/61400494/61466DF4/6144C538" Ref="#PWR0153"  Part="1" 
AR Path="/61400494/61467145/6144C538" Ref="#PWR0155"  Part="1" 
AR Path="/60DA21D5/6144C538" Ref="#PWR0148"  Part="1" 
AR Path="/60DA21DD/6144C538" Ref="#PWR0150"  Part="1" 
AR Path="/60DA21E2/6144C538" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 6150 3300 50  0001 C CNN
F 1 "+3V3" H 6165 3623 50  0000 C CNN
F 2 "" H 6150 3450 50  0001 C CNN
F 3 "" H 6150 3450 50  0001 C CNN
	1    6150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3500 6150 3450
Text HLabel 6450 3950 2    39   Output ~ 0
!OUT
Text HLabel 4550 3950 0    39   Input ~ 0
A
Text HLabel 4550 4150 0    39   Input ~ 0
K
$Comp
L power:GND #PWR0152
U 1 1 6145BF52
P 5950 4250
AR Path="/61400494/614555D4/6145BF52" Ref="#PWR0152"  Part="1" 
AR Path="/61400494/61466DF4/6145BF52" Ref="#PWR0154"  Part="1" 
AR Path="/61400494/61467145/6145BF52" Ref="#PWR0156"  Part="1" 
AR Path="/60DA21D5/6145BF52" Ref="#PWR0149"  Part="1" 
AR Path="/60DA21DD/6145BF52" Ref="#PWR0151"  Part="1" 
AR Path="/60DA21E2/6145BF52" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 5950 4000 50  0001 C CNN
F 1 "GND" H 5955 4077 50  0000 C CNN
F 2 "" H 5950 4250 50  0001 C CNN
F 3 "" H 5950 4250 50  0001 C CNN
	1    5950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4250 5950 4150
Wire Wire Line
	5950 4150 5850 4150
$Comp
L Device:R R32
U 1 1 6145DEBF
P 6150 3650
AR Path="/61400494/614555D4/6145DEBF" Ref="R32"  Part="1" 
AR Path="/61400494/61466DF4/6145DEBF" Ref="R34"  Part="1" 
AR Path="/61400494/61467145/6145DEBF" Ref="R36"  Part="1" 
AR Path="/60DA21D5/6145DEBF" Ref="R31"  Part="1" 
AR Path="/60DA21DD/6145DEBF" Ref="R33"  Part="1" 
AR Path="/60DA21E2/6145DEBF" Ref="R35"  Part="1" 
F 0 "R35" H 6220 3696 50  0000 L CNN
F 1 "10k" H 6220 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6080 3650 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 6150 3650 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 6150 3650 50  0001 C CNN "manf#"
	1    6150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3950 6150 3950
Wire Wire Line
	6150 3950 6150 3800
Wire Wire Line
	6150 3950 6450 3950
Connection ~ 6150 3950
$Comp
L Device:R R31
U 1 1 61462D44
P 4900 3650
AR Path="/61400494/614555D4/61462D44" Ref="R31"  Part="1" 
AR Path="/61400494/61466DF4/61462D44" Ref="R33"  Part="1" 
AR Path="/61400494/61467145/61462D44" Ref="R35"  Part="1" 
AR Path="/60DA21D5/61462D44" Ref="R30"  Part="1" 
AR Path="/60DA21DD/61462D44" Ref="R32"  Part="1" 
AR Path="/60DA21E2/61462D44" Ref="R34"  Part="1" 
F 0 "R34" V 4800 3550 50  0000 C CNN
F 1 "1k" V 4800 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4830 3650 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4900 3650 50  0001 C CNN
F 4 "" V 4900 3650 50  0001 C CNN "Fitted"
F 5 "RC1206FR-071KL" H 4900 3650 50  0001 C CNN "manf#"
	1    4900 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3950 4550 3950
Wire Wire Line
	5150 3950 5250 3950
Wire Wire Line
	5050 3650 5150 3650
Wire Wire Line
	5150 3650 5150 3950
Wire Wire Line
	4750 3650 4650 3650
Wire Wire Line
	4650 3650 4650 3950
$Comp
L Jumper:SolderJumper_2_Bridged JP3
U 1 1 61464300
P 4900 3950
AR Path="/61400494/614555D4/61464300" Ref="JP3"  Part="1" 
AR Path="/61400494/61466DF4/61464300" Ref="JP4"  Part="1" 
AR Path="/61400494/61467145/61464300" Ref="JP5"  Part="1" 
AR Path="/60DA21D5/61464300" Ref="JP3"  Part="1" 
AR Path="/60DA21DD/61464300" Ref="JP4"  Part="1" 
AR Path="/60DA21E2/61464300" Ref="JP5"  Part="1" 
F 0 "JP5" H 4900 4063 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4900 4064 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4900 3950 50  0001 C CNN
F 3 "~" H 4900 3950 50  0001 C CNN
	1    4900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3950 5150 3950
Connection ~ 5150 3950
Wire Wire Line
	4750 3950 4650 3950
Connection ~ 4650 3950
Wire Wire Line
	4550 4150 5250 4150
$Comp
L Isolator:PC817 U?
U 1 1 60DC8627
P 5550 4050
AR Path="/60DA21CE/60DC8627" Ref="U?"  Part="1" 
AR Path="/60DA21D5/60DC8627" Ref="U5"  Part="1" 
AR Path="/60DA21DD/60DC8627" Ref="U8"  Part="1" 
AR Path="/60DA21E2/60DC8627" Ref="U10"  Part="1" 
F 0 "U10" H 5550 4375 50  0000 C CNN
F 1 "PC817XI" H 5550 4284 50  0000 C CNN
F 2 "Package_DIP:SMDIP-4_W9.53mm" H 5350 3850 50  0001 L CIN
F 3 "https://www.farnell.com/datasheets/73758.pdf" H 5550 4050 50  0001 L CNN
F 4 "PC817XI" H 5550 4050 50  0001 C CNN "manf#"
	1    5550 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC

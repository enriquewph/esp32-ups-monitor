EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Power Supply"
Date "2021-06-06"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 60D14BA8
P 5800 4700
AR Path="/60D14BA8" Ref="R?"  Part="1" 
AR Path="/60CF66AD/60D14BA8" Ref="R15"  Part="1" 
F 0 "R15" H 5870 4746 50  0000 L CNN
F 1 "330" H 5870 4655 50  0000 L CNN
F 2 "" V 5730 4700 50  0001 C CNN
F 3 "~" H 5800 4700 50  0001 C CNN
	1    5800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4550 9050 4450
Wire Wire Line
	9050 4900 9050 4850
$Comp
L power:GND #PWR?
U 1 1 60D14BB9
P 9050 4900
AR Path="/60D14BB9" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14BB9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9050 4650 50  0001 C CNN
F 1 "GND" H 9055 4727 50  0000 C CNN
F 2 "" H 9050 4900 50  0001 C CNN
F 3 "" H 9050 4900 50  0001 C CNN
	1    9050 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60D14BBF
P 9050 4300
AR Path="/60D14BBF" Ref="D?"  Part="1" 
AR Path="/60CF66AD/60D14BBF" Ref="D5"  Part="1" 
F 0 "D5" V 9089 4182 50  0000 R CNN
F 1 "LED" V 8998 4182 50  0000 R CNN
F 2 "" H 9050 4300 50  0001 C CNN
F 3 "~" H 9050 4300 50  0001 C CNN
	1    9050 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60D14BC5
P 9050 4700
AR Path="/60D14BC5" Ref="R?"  Part="1" 
AR Path="/60CF66AD/60D14BC5" Ref="R16"  Part="1" 
F 0 "R16" H 9120 4746 50  0000 L CNN
F 1 "100" H 9120 4655 50  0000 L CNN
F 2 "" V 8980 4700 50  0001 C CNN
F 3 "~" H 9050 4700 50  0001 C CNN
	1    9050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4100 3850 4100
Connection ~ 3450 4100
Wire Wire Line
	3450 4400 3450 4100
Wire Wire Line
	3450 4700 3450 4900
$Comp
L power:GND #PWR?
U 1 1 60D14BD2
P 3450 4900
AR Path="/60D14BD2" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14BD2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3450 4650 50  0001 C CNN
F 1 "GND" H 3455 4727 50  0000 C CNN
F 2 "" H 3450 4900 50  0001 C CNN
F 3 "" H 3450 4900 50  0001 C CNN
	1    3450 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60D14BD8
P 3450 4550
AR Path="/60D14BD8" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14BD8" Ref="C6"  Part="1" 
F 0 "C6" H 3500 4650 50  0000 L CNN
F 1 "100nF" H 3500 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3488 4400 50  0001 C CNN
F 3 "~" H 3450 4550 50  0001 C CNN
	1    3450 4550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5822 D?
U 1 1 60D14BFB
P 4950 4550
AR Path="/60D14BFB" Ref="D?"  Part="1" 
AR Path="/60CF66AD/60D14BFB" Ref="D4"  Part="1" 
F 0 "D4" V 4904 4630 50  0000 L CNN
F 1 "1N5822" V 4995 4630 50  0000 L CNN
F 2 "Diode_THT:D_DO-201_P12.70mm_Horizontal" H 4950 4375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 4950 4550 50  0001 C CNN
	1    4950 4550
	0    1    1    0   
$EndComp
$Comp
L Regulator_Switching:LM2596S-ADJ U?
U 1 1 60D14C01
P 4350 4200
AR Path="/60D14C01" Ref="U?"  Part="1" 
AR Path="/60CF66AD/60D14C01" Ref="U7"  Part="1" 
F 0 "U7" H 4350 4567 50  0000 C CNN
F 1 "LM2596S-ADJ" H 4350 4476 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 4400 3950 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 4350 4200 50  0001 C CNN
	1    4350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4100 4950 4100
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60D14C08
P 5200 4100
AR Path="/60D14C08" Ref="JP?"  Part="1" 
AR Path="/60CF66AD/60D14C08" Ref="JP1"  Part="1" 
F 0 "JP1" H 5300 4000 50  0000 C CNN
F 1 "SolderJumper_2_Open" V 5245 4168 50  0001 L CNN
F 2 "" H 5200 4100 50  0001 C CNN
F 3 "~" H 5200 4100 50  0001 C CNN
	1    5200 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 4900 5800 4850
$Comp
L power:GND #PWR?
U 1 1 60D14C0F
P 5800 4900
AR Path="/60D14C0F" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C0F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 4650 50  0001 C CNN
F 1 "GND" H 5805 4727 50  0000 C CNN
F 2 "" H 5800 4900 50  0001 C CNN
F 3 "" H 5800 4900 50  0001 C CNN
	1    5800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4300 5350 4300
Wire Wire Line
	5350 4100 5500 4100
Connection ~ 5500 4100
Wire Wire Line
	5500 4100 5500 4300
Wire Wire Line
	6300 4100 6300 4400
Connection ~ 6300 4100
Wire Wire Line
	5800 4100 5500 4100
Wire Wire Line
	5800 4100 6300 4100
Connection ~ 5800 4100
Wire Wire Line
	5800 4200 5800 4100
Wire Wire Line
	6050 3900 6050 4350
Wire Wire Line
	4950 3900 6050 3900
Wire Wire Line
	4950 4100 4950 3900
Connection ~ 4950 4100
Wire Wire Line
	4850 4100 4950 4100
Wire Wire Line
	6050 4350 5950 4350
Wire Wire Line
	5800 4550 5800 4500
$Comp
L Device:R_POT RV?
U 1 1 60D14C28
P 5800 4350
AR Path="/60D14C28" Ref="RV?"  Part="1" 
AR Path="/60CF66AD/60D14C28" Ref="RV1"  Part="1" 
F 0 "RV1" H 5730 4396 50  0000 R CNN
F 1 "10k" H 5730 4305 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 5800 4350 50  0001 C CNN
F 3 "~" H 5800 4350 50  0001 C CNN
	1    5800 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D14C36
P 6300 4550
AR Path="/60D14C36" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14C36" Ref="C7"  Part="1" 
F 0 "C7" H 6418 4641 50  0000 L CNN
F 1 "220uF" H 6418 4550 50  0000 L CNN
F 2 "" H 6338 4400 50  0001 C CNN
F 3 "~" H 6300 4550 50  0001 C CNN
F 4 "16V" H 6418 4459 50  0000 L CNN "Voltage"
	1    6300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4900 6300 4700
$Comp
L power:GND #PWR?
U 1 1 60D14C3D
P 6300 4900
AR Path="/60D14C3D" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C3D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 4650 50  0001 C CNN
F 1 "GND" H 6305 4727 50  0000 C CNN
F 2 "" H 6300 4900 50  0001 C CNN
F 3 "" H 6300 4900 50  0001 C CNN
	1    6300 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 60D14C43
P 5200 4300
AR Path="/60D14C43" Ref="L?"  Part="1" 
AR Path="/60CF66AD/60D14C43" Ref="L1"  Part="1" 
F 0 "L1" V 5150 4400 50  0000 C CNN
F 1 "47uH" V 5150 4200 50  0000 C CNN
F 2 "" H 5200 4300 50  0001 C CNN
F 3 "~" H 5200 4300 50  0001 C CNN
	1    5200 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C49
P 4350 4900
AR Path="/60D14C49" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C49" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 4650 50  0001 C CNN
F 1 "GND" H 4355 4727 50  0000 C CNN
F 2 "" H 4350 4900 50  0001 C CNN
F 3 "" H 4350 4900 50  0001 C CNN
	1    4350 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C4F
P 3750 4900
AR Path="/60D14C4F" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C4F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3750 4650 50  0001 C CNN
F 1 "GND" H 3755 4727 50  0000 C CNN
F 2 "" H 3750 4900 50  0001 C CNN
F 3 "" H 3750 4900 50  0001 C CNN
	1    3750 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D14C55
P 4950 4900
AR Path="/60D14C55" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C55" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 4650 50  0001 C CNN
F 1 "GND" H 4955 4727 50  0000 C CNN
F 2 "" H 4950 4900 50  0001 C CNN
F 3 "" H 4950 4900 50  0001 C CNN
	1    4950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4900 3750 4300
Wire Wire Line
	3750 4300 3850 4300
Wire Wire Line
	4350 4900 4350 4500
Wire Wire Line
	4950 4900 4950 4700
Wire Wire Line
	5050 4300 4950 4300
Connection ~ 4950 4300
Wire Wire Line
	4950 4400 4950 4300
Wire Wire Line
	3050 4100 3450 4100
Wire Wire Line
	3050 4400 3050 4100
Wire Wire Line
	3050 4900 3050 4700
$Comp
L power:GND #PWR?
U 1 1 60D14C83
P 3050 4900
AR Path="/60D14C83" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D14C83" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 4650 50  0001 C CNN
F 1 "GND" H 3055 4727 50  0000 C CNN
F 2 "" H 3050 4900 50  0001 C CNN
F 3 "" H 3050 4900 50  0001 C CNN
	1    3050 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60D14C8A
P 3050 4550
AR Path="/60D14C8A" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D14C8A" Ref="C5"  Part="1" 
F 0 "C5" H 3100 4650 50  0000 L CNN
F 1 "680uF" H 3100 4450 50  0000 L CNN
F 2 "" H 3088 4400 50  0001 C CNN
F 3 "~" H 3050 4550 50  0001 C CNN
F 4 "25V" H 3100 4350 50  0000 L CNN "Voltage"
	1    3050 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 60D1F9E0
P 7000 4100
AR Path="/60D1F9E0" Ref="L?"  Part="1" 
AR Path="/60CF66AD/60D1F9E0" Ref="L2"  Part="1" 
F 0 "L2" V 6950 4200 50  0000 C CNN
F 1 "20uH" V 6950 4000 50  0000 C CNN
F 2 "" H 7000 4100 50  0001 C CNN
F 3 "~" H 7000 4100 50  0001 C CNN
	1    7000 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4100 7400 4400
$Comp
L Device:CP C?
U 1 1 60D202CE
P 7400 4550
AR Path="/60D202CE" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D202CE" Ref="C8"  Part="1" 
F 0 "C8" H 7518 4641 50  0000 L CNN
F 1 "100uF" H 7518 4550 50  0000 L CNN
F 2 "" H 7438 4400 50  0001 C CNN
F 3 "~" H 7400 4550 50  0001 C CNN
F 4 "16V" H 7518 4459 50  0000 L CNN "Voltage"
	1    7400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4900 7400 4700
$Comp
L power:GND #PWR?
U 1 1 60D202D9
P 7400 4900
AR Path="/60D202D9" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D202D9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7400 4650 50  0001 C CNN
F 1 "GND" H 7405 4727 50  0000 C CNN
F 2 "" H 7400 4900 50  0001 C CNN
F 3 "" H 7400 4900 50  0001 C CNN
	1    7400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4100 7400 4100
Connection ~ 7400 4100
Wire Notes Line style solid rgb(0, 0, 0)
	6200 3750 5150 3750
Wire Notes Line style solid rgb(0, 0, 0)
	5150 3750 5150 2350
Wire Notes Line style solid rgb(0, 0, 0)
	5150 2350 6200 2350
Wire Notes Line style solid rgb(0, 0, 0)
	6200 2350 6200 3750
Text Notes 5200 2650 0    50   ~ 0
Compatible with LM2575\nLM2576, LM2596S, Select \ninductor accordingly.
Text Notes 5200 3050 0    50   ~ 0
For -ADJ Version:\n- Solder R15\n- Solder RV1\n- Adjust until 3.3v
Text Notes 5200 3300 0    50   ~ 0
For -3.3V Version:\n- Solder JP1
Text Notes 5200 3650 0    50   ~ 0
For -5.0V or -12V\n- Solder RV1\n- Adjust until 3.3v
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60D2647D
P 7000 3700
AR Path="/60D2647D" Ref="JP?"  Part="1" 
AR Path="/60CF66AD/60D2647D" Ref="JP2"  Part="1" 
F 0 "JP2" H 7100 3600 50  0000 C CNN
F 1 "SolderJumper_2_Open" V 7045 3768 50  0001 L CNN
F 2 "" H 7000 3700 50  0001 C CNN
F 3 "~" H 7000 3700 50  0001 C CNN
	1    7000 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 3700 6300 4100
Wire Wire Line
	7400 3700 7400 4100
Connection ~ 9050 4100
Wire Wire Line
	9050 4100 9050 4150
Wire Wire Line
	6300 4100 6850 4100
Wire Wire Line
	7150 3700 7400 3700
Wire Wire Line
	6300 3700 6850 3700
Wire Notes Line
	7800 5400 6750 5400
Wire Notes Line
	6750 3950 7800 3950
Text Notes 6800 5350 0    47   ~ 0
Optional Output\nRipple Filter
Text Notes 7800 5500 2    31   ~ 0
*Solder JP2 when not in use.
$Comp
L Regulator_Switching:LM2596S-ADJ U?
U 1 1 60D3880C
P 4350 3300
AR Path="/60D3880C" Ref="U?"  Part="1" 
AR Path="/60CF66AD/60D3880C" Ref="U8"  Part="1" 
F 0 "U8" H 4350 3667 50  0000 C CNN
F 1 "LM2596S-ADJ" H 4350 3576 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 4400 3050 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 4350 3300 50  0001 C CNN
	1    4350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3400 4900 3400
Wire Wire Line
	4950 3900 4950 3200
Wire Wire Line
	4950 3200 4850 3200
Connection ~ 4950 3900
Wire Wire Line
	4850 4300 4950 4300
Wire Wire Line
	4900 3400 4900 4200
Wire Wire Line
	4900 4200 4950 4200
Wire Wire Line
	4950 4200 4950 4300
$Comp
L power:GND #PWR?
U 1 1 60D3C1D8
P 4350 3600
AR Path="/60D3C1D8" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D3C1D8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 3350 50  0001 C CNN
F 1 "GND" H 4355 3427 50  0001 C CNN
F 2 "" H 4350 3600 50  0001 C CNN
F 3 "" H 4350 3600 50  0001 C CNN
	1    4350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3400 3750 3400
Wire Wire Line
	3750 3400 3750 4300
Connection ~ 3750 4300
Wire Wire Line
	3850 3200 3450 3200
Wire Wire Line
	3450 3200 3450 4100
Wire Notes Line
	5000 3750 3350 3750
Wire Notes Line
	3350 3750 3350 2700
Wire Notes Line
	3350 2700 5000 2700
Wire Notes Line
	5000 2700 5000 3750
Text Notes 3400 2800 0    39   ~ 0
*Duplicated for dual footprint.
Wire Wire Line
	7400 4100 8100 4100
$Comp
L Device:C C?
U 1 1 60D44F92
P 8100 4550
AR Path="/60D44F92" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D44F92" Ref="C9"  Part="1" 
F 0 "C9" H 8150 4650 50  0000 L CNN
F 1 "100nF" H 8150 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8138 4400 50  0001 C CNN
F 3 "~" H 8100 4550 50  0001 C CNN
	1    8100 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60D457A3
P 8600 4550
AR Path="/60D457A3" Ref="C?"  Part="1" 
AR Path="/60CF66AD/60D457A3" Ref="C10"  Part="1" 
F 0 "C10" H 8650 4650 50  0000 L CNN
F 1 "100nF" H 8650 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8638 4400 50  0001 C CNN
F 3 "~" H 8600 4550 50  0001 C CNN
	1    8600 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D45A94
P 8100 4900
AR Path="/60D45A94" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D45A94" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 4650 50  0001 C CNN
F 1 "GND" H 8105 4727 50  0000 C CNN
F 2 "" H 8100 4900 50  0001 C CNN
F 3 "" H 8100 4900 50  0001 C CNN
	1    8100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D45D12
P 8600 4900
AR Path="/60D45D12" Ref="#PWR?"  Part="1" 
AR Path="/60CF66AD/60D45D12" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8600 4650 50  0001 C CNN
F 1 "GND" H 8605 4727 50  0000 C CNN
F 2 "" H 8600 4900 50  0001 C CNN
F 3 "" H 8600 4900 50  0001 C CNN
	1    8600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4900 8600 4700
Wire Wire Line
	8100 4900 8100 4700
Wire Wire Line
	8100 4400 8100 4100
Connection ~ 8100 4100
Wire Wire Line
	8100 4100 8600 4100
Wire Wire Line
	8600 4400 8600 4100
Connection ~ 8600 4100
Wire Wire Line
	8600 4100 9050 4100
Wire Notes Line
	6750 3950 6750 5400
Wire Notes Line
	7800 3950 7800 5400
Text HLabel 2850 4100 0    39   Input ~ 0
VIN
Wire Wire Line
	2850 4100 3050 4100
Connection ~ 3050 4100
Text HLabel 9500 4100 2    39   Output ~ 0
VOUT
Wire Wire Line
	9050 4100 9500 4100
$EndSCHEMATC

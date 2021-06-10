EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 19
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 6138E9AB
P 6150 3400
AR Path="/6138E9AB" Ref="Q?"  Part="1" 
AR Path="/6137CC2E/6138E9AB" Ref="Q7"  Part="1" 
F 0 "Q7" H 6354 3446 50  0000 L CNN
F 1 "IRF540N" H 6354 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6400 3325 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irf540nspbf.pdf?fileId=5546d462533600a4015355e3a72819a3" H 6150 3400 50  0001 L CNN
F 4 "IRF540NLPBF" H 6150 3400 50  0001 C CNN "manf#"
	1    6150 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6138E9B1
P 5850 3950
AR Path="/6138E9B1" Ref="#PWR?"  Part="1" 
AR Path="/6137CC2E/6138E9B1" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 5850 3700 50  0001 C CNN
F 1 "GND" H 5855 3777 50  0000 C CNN
F 2 "" H 5850 3950 50  0001 C CNN
F 3 "" H 5850 3950 50  0001 C CNN
	1    5850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3950 5850 3900
Wire Wire Line
	5550 3700 5500 3700
$Comp
L Device:R R?
U 1 1 6138E9BB
P 5350 3700
AR Path="/6138E9BB" Ref="R?"  Part="1" 
AR Path="/6137CC2E/6138E9BB" Ref="R27"  Part="1" 
F 0 "R27" V 5250 3600 50  0000 C CNN
F 1 "1k" V 5250 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5280 3700 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 5350 3700 50  0001 C CNN
F 4 "RC1206FR-071KL" H 5350 3700 50  0001 C CNN "manf#"
	1    5350 3700
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC817 Q?
U 1 1 6138E9C1
P 5750 3700
AR Path="/6138E9C1" Ref="Q?"  Part="1" 
AR Path="/6137CC2E/6138E9C1" Ref="Q6"  Part="1" 
F 0 "Q6" H 5941 3746 50  0000 L CNN
F 1 "BC817" H 5941 3655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5950 3625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC817-16LT1-D.PDF" H 5750 3700 50  0001 L CNN
F 4 "SBC817-40LT1G" H 5750 3700 50  0001 C CNN "manf#"
	1    5750 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6138E9C7
P 5850 3150
AR Path="/6138E9C7" Ref="R?"  Part="1" 
AR Path="/6137CC2E/6138E9C7" Ref="R28"  Part="1" 
F 0 "R28" V 5750 3050 50  0000 C CNN
F 1 "10k" V 5750 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5780 3150 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 5850 3150 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 5850 3150 50  0001 C CNN "manf#"
	1    5850 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6138E9CD
P 6250 3950
AR Path="/6138E9CD" Ref="#PWR?"  Part="1" 
AR Path="/6137CC2E/6138E9CD" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 6250 3700 50  0001 C CNN
F 1 "GND" H 6255 3777 50  0000 C CNN
F 2 "" H 6250 3950 50  0001 C CNN
F 3 "" H 6250 3950 50  0001 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 6138E9D3
P 5850 2900
AR Path="/6138E9D3" Ref="#PWR?"  Part="1" 
AR Path="/6137CC2E/6138E9D3" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 5850 2750 50  0001 C CNN
F 1 "+12V" H 5865 3073 50  0000 C CNN
F 2 "" H 5850 2900 50  0001 C CNN
F 3 "" H 5850 2900 50  0001 C CNN
	1    5850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 6138E9D9
P 6250 2900
AR Path="/6138E9D9" Ref="#PWR?"  Part="1" 
AR Path="/6137CC2E/6138E9D9" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 6250 2750 50  0001 C CNN
F 1 "+12V" H 6265 3073 50  0000 C CNN
F 2 "" H 6250 2900 50  0001 C CNN
F 3 "" H 6250 2900 50  0001 C CNN
	1    6250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3500 5850 3400
Wire Wire Line
	5850 3400 5950 3400
Wire Wire Line
	5850 3300 5850 3400
Connection ~ 5850 3400
Wire Wire Line
	5850 3000 5850 2900
Wire Wire Line
	6250 2900 6250 2950
Wire Wire Line
	6250 2950 6450 2950
Wire Wire Line
	6450 3150 6250 3150
Wire Wire Line
	6250 3150 6250 3200
Wire Wire Line
	6250 3950 6250 3600
NoConn ~ 6450 3050
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6138E9EA
P 6650 3050
AR Path="/6138E9EA" Ref="J?"  Part="1" 
AR Path="/6137CC2E/6138E9EA" Ref="J9"  Part="1" 
F 0 "J9" H 6500 3300 50  0000 L CNN
F 1 "Conn_01x03" H 6730 3001 50  0001 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 6650 3050 50  0001 C CNN
F 3 "https://app.adam-tech.com/products/download/data_sheet/196588/lha-xx-ts-data-sheet.pdf" H 6650 3050 50  0001 C CNN
F 4 "LHA-03-TS" H 6650 3050 50  0001 C CNN "manf#"
	1    6650 3050
	1    0    0    -1  
$EndComp
Text HLabel 4900 3700 0    39   Input ~ 0
ON
Wire Wire Line
	4900 3700 5200 3700
$EndSCHEMATC

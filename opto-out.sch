EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 19
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
L Isolator:4N25 U?
U 1 1 6149516B
P 6450 3700
AR Path="/6149516B" Ref="U?"  Part="1" 
AR Path="/61400494/61448E8E/6149516B" Ref="U4"  Part="1" 
AR Path="/61400494/614555D4/6149516B" Ref="U?"  Part="1" 
F 0 "U4" H 6450 4025 50  0000 C CNN
F 1 "4N25" H 6450 3934 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 6250 3500 50  0001 L CIN
F 3 "https://optoelectronics.liteon.com/upload/download/DS-70-99-0010/4N2X%20series%20Datasheet%201115.pdf" H 6450 3700 50  0001 L CNN
F 4 "4N25" H 6450 3700 50  0001 C CNN "manf#"
	1    6450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6144C51B
P 5700 4350
AR Path="/6144C51B" Ref="#PWR?"  Part="1" 
AR Path="/61400494/61448E8E/6144C51B" Ref="#PWR0148"  Part="1" 
AR Path="/61400494/614555D4/6144C51B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0148" H 5700 4100 50  0001 C CNN
F 1 "GND" H 5705 4177 50  0000 C CNN
F 2 "" H 5700 4350 50  0001 C CNN
F 3 "" H 5700 4350 50  0001 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3850 5350 3850
$Comp
L Device:R R?
U 1 1 6144C525
P 5200 3850
AR Path="/6144C525" Ref="R?"  Part="1" 
AR Path="/61400494/61448E8E/6144C525" Ref="R29"  Part="1" 
AR Path="/61400494/614555D4/6144C525" Ref="R?"  Part="1" 
F 0 "R29" V 5100 3750 50  0000 C CNN
F 1 "1k" V 5100 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5130 3850 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 5200 3850 50  0001 C CNN
F 4 "RC1206FR-071KL" H 5200 3850 50  0001 C CNN "manf#"
	1    5200 3850
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC817 Q?
U 1 1 6144C52B
P 5600 3850
AR Path="/6144C52B" Ref="Q?"  Part="1" 
AR Path="/61400494/61448E8E/6144C52B" Ref="Q8"  Part="1" 
AR Path="/61400494/614555D4/6144C52B" Ref="Q?"  Part="1" 
F 0 "Q8" H 5791 3896 50  0000 L CNN
F 1 "BC817" H 5791 3805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5800 3775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC817-16LT1-D.PDF" H 5600 3850 50  0001 L CNN
F 4 "SBC817-40LT1G" H 5600 3850 50  0001 C CNN "manf#"
	1    5600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3650 5700 3600
$Comp
L Device:R R?
U 1 1 6144C532
P 5700 3400
AR Path="/6144C532" Ref="R?"  Part="1" 
AR Path="/61400494/61448E8E/6144C532" Ref="R30"  Part="1" 
AR Path="/61400494/614555D4/6144C532" Ref="R?"  Part="1" 
F 0 "R30" V 5600 3300 50  0000 C CNN
F 1 "10k" V 5600 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5630 3400 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 5700 3400 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 5700 3400 50  0001 C CNN "manf#"
	1    5700 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6149516C
P 5700 3200
AR Path="/6149516C" Ref="#PWR?"  Part="1" 
AR Path="/61400494/61448E8E/6149516C" Ref="#PWR0149"  Part="1" 
AR Path="/61400494/614555D4/6149516C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0149" H 5700 3050 50  0001 C CNN
F 1 "+3V3" H 5715 3373 50  0000 C CNN
F 2 "" H 5700 3200 50  0001 C CNN
F 3 "" H 5700 3200 50  0001 C CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3250 5700 3200
Wire Wire Line
	6150 3600 5700 3600
Connection ~ 5700 3600
Wire Wire Line
	5700 3600 5700 3550
Wire Wire Line
	6050 3800 6150 3800
NoConn ~ 6750 3600
Wire Wire Line
	5700 4050 5700 4350
$Comp
L power:GND #PWR?
U 1 1 6144CC46
P 6050 4350
AR Path="/6144CC46" Ref="#PWR?"  Part="1" 
AR Path="/61400494/61448E8E/6144CC46" Ref="#PWR0150"  Part="1" 
AR Path="/61400494/614555D4/6144CC46" Ref="#PWR?"  Part="1" 
F 0 "#PWR0150" H 6050 4100 50  0001 C CNN
F 1 "GND" H 6055 4177 50  0000 C CNN
F 2 "" H 6050 4350 50  0001 C CNN
F 3 "" H 6050 4350 50  0001 C CNN
	1    6050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4350 6050 3800
Text HLabel 4900 3850 0    39   Input ~ 0
ON
Wire Wire Line
	4900 3850 5050 3850
Text HLabel 6900 3700 2    39   UnSpc ~ 0
C
Text HLabel 6900 3800 2    39   UnSpc ~ 0
E
Wire Wire Line
	6900 3700 6750 3700
Wire Wire Line
	6750 3800 6900 3800
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 19
Title "ESP32 Uninterrupted Power Supply Monitor"
Date "2021-06-10"
Rev "0.1"
Comp ""
Comment1 "https://github.com/enriquewph/esp32-ups-monitor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR030
U 1 1 60B6EFE9
P 8800 4300
F 0 "#PWR030" H 8800 4050 50  0001 C CNN
F 1 "GND" H 8805 4127 50  0000 C CNN
F 2 "" H 8800 4300 50  0001 C CNN
F 3 "" H 8800 4300 50  0001 C CNN
	1    8800 4300
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR029
U 1 1 60B6F944
P 8800 1500
F 0 "#PWR029" H 8800 1350 50  0001 C CNN
F 1 "+3V3" H 8815 1673 50  0000 C CNN
F 2 "" H 8800 1500 50  0001 C CNN
F 3 "" H 8800 1500 50  0001 C CNN
	1    8800 1500
	-1   0    0    -1  
$EndComp
Text Notes 600  4350 0    50   Italic 0
RELAY OUTPUTS
$Comp
L power:GND #PWR013
U 1 1 60CF5D5F
P 4700 7400
F 0 "#PWR013" H 4700 7150 50  0001 C CNN
F 1 "GND" H 4705 7227 50  0000 C CNN
F 2 "" H 4700 7400 50  0001 C CNN
F 3 "" H 4700 7400 50  0001 C CNN
	1    4700 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 60D22EFD
P 4400 6750
F 0 "R12" H 4470 6796 50  0000 L CNN
F 1 "10k" H 4470 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4330 6750 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4400 6750 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 4400 6750 50  0001 C CNN "manf#"
	1    4400 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 60D235F5
P 4100 6750
F 0 "R11" H 4170 6796 50  0000 L CNN
F 1 "10k" H 4170 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4030 6750 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 4100 6750 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 4100 6750 50  0001 C CNN "manf#"
	1    4100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6600 4400 6550
Wire Wire Line
	4400 6900 4400 6950
Wire Wire Line
	4400 6950 4900 6950
Wire Notes Line
	5250 6250 3600 6250
Text Notes 3650 6350 0    50   Italic 0
I2C HEADER
Wire Wire Line
	4100 6600 4100 6550
Wire Wire Line
	4100 6900 4100 7050
Wire Wire Line
	4100 7050 4900 7050
NoConn ~ 8200 2500
NoConn ~ 8200 2300
NoConn ~ 8200 3000
NoConn ~ 8200 2900
NoConn ~ 8200 2800
NoConn ~ 8200 2600
NoConn ~ 8200 2700
NoConn ~ 8200 2200
NoConn ~ 8200 1900
$Sheet
S 2200 6550 800  350 
U 60CF66AD
F0 "Power Supply" 50
F1 "psu.sch" 50
F2 "VIN" I L 2200 6650 39 
F3 "VOUT" O R 3000 6650 39 
F4 "VOUT_5V" O R 3000 6800 39 
$EndSheet
Wire Notes Line
	3600 7700 5250 7700
Wire Notes Line
	2100 4250 2100 6200
Wire Notes Line
	550  6200 550  4250
$Comp
L Device:R R5
U 1 1 60D757DD
P 1700 6850
AR Path="/60D757DD" Ref="R5"  Part="1" 
AR Path="/60CF66AD/60D757DD" Ref="R?"  Part="1" 
F 0 "R5" H 1770 6896 50  0000 L CNN
F 1 "22k" H 1770 6805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1630 6850 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1700 6850 50  0001 C CNN
F 4 "RC1206FR-0722KL" H 1700 6850 50  0001 C CNN "manf#"
	1    1700 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60D757E3
P 1700 7250
AR Path="/60D757E3" Ref="R6"  Part="1" 
AR Path="/60CF66AD/60D757E3" Ref="R?"  Part="1" 
F 0 "R6" H 1770 7296 50  0000 L CNN
F 1 "5k6" H 1770 7205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1630 7250 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1700 7250 50  0001 C CNN
F 4 "RC1206FR-075K6L" H 1700 7250 50  0001 C CNN "manf#"
	1    1700 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 60D757E9
P 1700 7450
AR Path="/60D757E9" Ref="#PWR07"  Part="1" 
AR Path="/60CF66AD/60D757E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 1700 7200 50  0001 C CNN
F 1 "GND" H 1705 7277 50  0000 C CNN
F 2 "" H 1700 7450 50  0001 C CNN
F 3 "" H 1700 7450 50  0001 C CNN
	1    1700 7450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 60D757F5
P 700 6650
AR Path="/60D757F5" Ref="J1"  Part="1" 
AR Path="/60CF66AD/60D757F5" Ref="J?"  Part="1" 
F 0 "J1" H 700 6750 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 618 6776 50  0001 C CNN
F 2 "libs:TerminalBlock_bornier-2_P5.08mm" H 700 6650 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 700 6650 50  0001 C CNN
F 4 "796636-2" H 700 6650 50  0001 C CNN "manf#"
	1    700  6650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60D757FB
P 950 6800
AR Path="/60D757FB" Ref="#PWR01"  Part="1" 
AR Path="/60CF66AD/60D757FB" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 950 6550 50  0001 C CNN
F 1 "GND" H 955 6627 50  0000 C CNN
F 2 "" H 950 6800 50  0001 C CNN
F 3 "" H 950 6800 50  0001 C CNN
	1    950  6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7450 1700 7400
Wire Wire Line
	1700 6700 1700 6650
Connection ~ 1700 6650
Wire Notes Line
	3550 6250 3550 7700
Wire Notes Line
	550  7700 550  6250
Text Notes 600  6350 0    50   Italic 0
POWER SUPPLY
Wire Notes Line
	3600 7700 3600 6250
Wire Notes Line
	5250 6250 5250 7700
$Sheet
S 2200 7150 550  200 
U 60E45CE9
F0 "Input Protection" 39
F1 "inprot.sch" 39
F2 "IN" I L 2200 7250 39 
F3 "OUT" O R 2750 7250 39 
$EndSheet
Wire Wire Line
	1700 7000 1700 7050
Wire Wire Line
	2200 7250 2050 7250
Wire Wire Line
	2050 7250 2050 7050
Wire Wire Line
	2050 7050 1700 7050
Connection ~ 1700 7050
Wire Wire Line
	1700 7050 1700 7100
NoConn ~ 9400 2900
NoConn ~ 9400 3000
NoConn ~ 9400 3100
NoConn ~ 9400 3200
NoConn ~ 9400 3300
NoConn ~ 9400 3400
$Comp
L Diode:B140-E3 D2
U 1 1 60CF302C
P 1300 6650
F 0 "D2" H 1400 6750 50  0000 C CNN
F 1 "SS14" H 1200 6750 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 1300 6475 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/ss19-d.pdf" H 1300 6650 50  0001 C CNN
F 4 "SS14" H 1300 6650 50  0001 C CNN "manf#"
	1    1300 6650
	-1   0    0    -1  
$EndComp
$Comp
L Diode:B140-E3 D3
U 1 1 60CF3B59
P 1300 6850
F 0 "D3" H 1400 6950 50  0000 C CNN
F 1 "ALT" H 1200 6950 50  0000 C CNN
F 2 "Diode_THT:D_DO-201_P12.70mm_Horizontal" H 1300 6675 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 1300 6850 50  0001 C CNN
F 4 "1N5819" H 1300 6850 50  0001 C CNN "manf#"
	1    1300 6850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	900  6750 950  6750
Wire Wire Line
	950  6750 950  6800
Wire Notes Line
	550  7700 3550 7700
Wire Notes Line
	550  6250 3550 6250
Wire Wire Line
	4100 6550 4400 6550
$Comp
L power:+3V3 #PWR014
U 1 1 60CF6E33
P 4650 6500
F 0 "#PWR014" H 4650 6350 50  0001 C CNN
F 1 "+3V3" H 4665 6673 50  0000 C CNN
F 2 "" H 4650 6500 50  0001 C CNN
F 3 "" H 4650 6500 50  0001 C CNN
	1    4650 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6550 4650 6550
Wire Wire Line
	4650 6550 4650 6500
Connection ~ 4400 6550
Wire Wire Line
	4650 6550 4650 7150
Connection ~ 4650 6550
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 60C734C6
P 5100 7150
F 0 "J4" H 4950 7500 50  0000 L CNN
F 1 "Conn_01x05" H 5180 7101 50  0001 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 5100 7150 50  0001 C CNN
F 3 "https://app.adam-tech.com/products/download/data_sheet/196588/lha-xx-ts-data-sheet.pdf" H 5100 7150 50  0001 C CNN
F 4 "LHA-05-TS" H 5100 7150 50  0001 C CNN "manf#"
	1    5100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7400 4700 7350
Wire Wire Line
	4700 7350 4900 7350
Wire Wire Line
	4650 7150 4900 7150
$Comp
L power:+5V #PWR0102
U 1 1 60C8AE42
P 4850 6500
F 0 "#PWR0102" H 4850 6350 50  0001 C CNN
F 1 "+5V" H 4865 6673 50  0000 C CNN
F 2 "" H 4850 6500 50  0001 C CNN
F 3 "" H 4850 6500 50  0001 C CNN
	1    4850 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6500 4850 7250
Wire Wire Line
	4850 7250 4900 7250
$Comp
L RF_Module:ESP32-WROOM-32 U6
U 1 1 60EA8F40
P 8800 2900
F 0 "U6" H 9250 4250 50  0000 C CNN
F 1 "ESP32" H 8450 4250 50  0000 C CNN
F 2 "esp32-wroom-roover:ESP32-WROOM-WROVER-NC" H 8800 1400 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32e_esp32-wroom-32ue_datasheet_en.pdf" H 8500 2950 50  0001 C CNN
F 4 "ESP32-WROOM-32E" H 8800 2900 50  0001 C CNN "manf#"
	1    8800 2900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60CA50A5
P 9650 2550
F 0 "C1" H 9765 2596 50  0000 L CNN
F 1 "100nF" H 9765 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9688 2400 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 9650 2550 50  0001 C CNN
F 4 "50V" H 9650 2550 50  0001 C CNN "Voltage"
F 5 "CC1206KRX7R9BB104" H 9650 2550 50  0001 C CNN "manf#"
	1    9650 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60CDA118
P 9650 2700
F 0 "#PWR0103" H 9650 2450 50  0001 C CNN
F 1 "GND" H 9655 2527 50  0000 C CNN
F 2 "" H 9650 2700 50  0001 C CNN
F 3 "" H 9650 2700 50  0001 C CNN
	1    9650 2700
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 60D96616
P 9650 2400
F 0 "#PWR0104" H 9650 2250 50  0001 C CNN
F 1 "+3V3" H 9665 2573 50  0000 C CNN
F 2 "" H 9650 2400 50  0001 C CNN
F 3 "" H 9650 2400 50  0001 C CNN
	1    9650 2400
	-1   0    0    -1  
$EndComp
Text GLabel 9550 1700 2    39   Input ~ 0
RESET
Wire Wire Line
	9550 1700 9400 1700
Text GLabel 8050 1700 0    39   Input ~ 0
GPIO0
Wire Wire Line
	8050 1700 8200 1700
Text GLabel 8050 1800 0    39   Input ~ 0
TXD0
Wire Wire Line
	8050 1800 8200 1800
Text GLabel 8050 2000 0    39   Output ~ 0
RXD0
Wire Wire Line
	8050 2000 8200 2000
Text GLabel 3200 7250 2    39   Output ~ 0
VBAT
Wire Wire Line
	3200 7250 2750 7250
Wire Wire Line
	900  6650 1050 6650
Wire Wire Line
	1450 6650 1550 6650
Wire Wire Line
	1550 6650 1550 6850
Wire Wire Line
	1550 6850 1450 6850
Connection ~ 1550 6650
Wire Wire Line
	1550 6650 1700 6650
Wire Wire Line
	1050 6650 1050 6850
Wire Wire Line
	1050 6850 1150 6850
Connection ~ 1050 6650
Wire Wire Line
	1050 6650 1150 6650
$Comp
L Diode:B140-E3 D1
U 1 1 60F5F48D
P 1300 7350
F 0 "D1" H 1400 7450 50  0000 C CNN
F 1 "SS14" H 1200 7450 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 1300 7175 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/ss19-d.pdf" H 1300 7350 50  0001 C CNN
F 4 "No" H 1300 7350 50  0001 C CNN "Fixed"
F 5 "SS14" H 1300 7350 50  0001 C CNN "manf#"
	1    1300 7350
	-1   0    0    -1  
$EndComp
$Comp
L Diode:B140-E3 D4
U 1 1 60F5F497
P 1300 7550
F 0 "D4" H 1400 7650 50  0000 C CNN
F 1 "ALT" H 1200 7650 50  0000 C CNN
F 2 "Diode_THT:D_DO-201_P12.70mm_Horizontal" H 1300 7375 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 1300 7550 50  0001 C CNN
F 4 "No" H 1300 7550 50  0001 C CNN "Fixed"
F 5 "1N5819" H 1300 7550 50  0001 C CNN "manf#"
	1    1300 7550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 7350 1550 7350
Wire Wire Line
	1450 7550 1550 7550
Wire Wire Line
	1550 7550 1550 7350
Connection ~ 1550 7350
Wire Wire Line
	1150 7350 1050 7350
Wire Wire Line
	1150 7550 1050 7550
Wire Wire Line
	1050 7550 1050 7450
Text GLabel 850  7450 0    39   Input ~ 0
VUSB
Wire Wire Line
	850  7450 1050 7450
Connection ~ 1050 7450
Wire Wire Line
	1050 7450 1050 7350
Wire Wire Line
	1550 6850 1550 7350
Connection ~ 1550 6850
Wire Notes Line
	600  7650 1600 7650
Wire Notes Line
	1600 7650 1600 7150
Wire Notes Line
	1600 7150 600  7150
Wire Notes Line
	600  7150 600  7650
Text Notes 650  7600 0    39   Italic 0
*Optional.
Text Notes 650  7250 0    39   ~ 0
USB Power
$Sheet
S 1050 4450 650  400 
U 6102C68D
F0 "Relay 1" 50
F1 "relay.sch" 50
F2 "ON" I L 1050 4600 39 
F3 "NO" O R 1700 4550 39 
F4 "COM" O R 1700 4650 39 
F5 "NC" O R 1700 4750 39 
$EndSheet
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 6102D893
P 1950 4650
F 0 "J2" H 1900 4850 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 2030 4601 50  0001 L CNN
F 2 "libs:TerminalBlock_bornier-3_P5.08mm" H 1950 4650 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 1950 4650 50  0001 C CNN
F 4 "796636-3" H 1950 4650 50  0001 C CNN "manf#"
	1    1950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4750 1750 4750
Wire Wire Line
	1700 4650 1750 4650
Wire Wire Line
	1700 4550 1750 4550
Text GLabel 900  4600 0    39   Input ~ 0
RELAY_1
Wire Wire Line
	900  4600 1050 4600
$Sheet
S 1050 5050 650  400 
U 610A0B30
F0 "Relay 2" 50
F1 "relay.sch" 50
F2 "ON" I L 1050 5200 39 
F3 "NO" O R 1700 5150 39 
F4 "COM" O R 1700 5250 39 
F5 "NC" O R 1700 5350 39 
$EndSheet
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 610A0B36
P 1950 5250
F 0 "J3" H 1900 5450 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 2030 5201 50  0001 L CNN
F 2 "libs:TerminalBlock_bornier-3_P5.08mm" H 1950 5250 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 1950 5250 50  0001 C CNN
F 4 "796636-3" H 1950 5250 50  0001 C CNN "manf#"
	1    1950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5350 1750 5350
Wire Wire Line
	1700 5250 1750 5250
Wire Wire Line
	1700 5150 1750 5150
Text GLabel 900  5200 0    39   Input ~ 0
RELAY_2
Wire Wire Line
	900  5200 1050 5200
$Sheet
S 1050 5650 650  400 
U 610C441E
F0 "Relay 3" 50
F1 "relay.sch" 50
F2 "ON" I L 1050 5800 39 
F3 "NO" O R 1700 5750 39 
F4 "COM" O R 1700 5850 39 
F5 "NC" O R 1700 5950 39 
$EndSheet
$Comp
L Connector:Screw_Terminal_01x03 J5
U 1 1 610C4424
P 1950 5850
F 0 "J5" H 1900 6050 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 2030 5801 50  0001 L CNN
F 2 "libs:TerminalBlock_bornier-3_P5.08mm" H 1950 5850 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796636&DocType=Customer+Drawing&DocLang=English" H 1950 5850 50  0001 C CNN
F 4 "796636-3" H 1950 5850 50  0001 C CNN "manf#"
	1    1950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5950 1750 5950
Wire Wire Line
	1700 5850 1750 5850
Wire Wire Line
	1700 5750 1750 5750
Text GLabel 900  5800 0    39   Input ~ 0
RELAY_3
Wire Wire Line
	900  5800 1050 5800
Wire Notes Line
	550  6200 2100 6200
Wire Notes Line
	550  4250 2100 4250
Wire Notes Line
	5500 5300 5500 6200
Wire Notes Line
	3750 5300 5500 5300
Wire Notes Line
	3750 6200 3750 5300
Wire Notes Line
	5500 6200 3750 6200
Wire Wire Line
	4050 5600 4200 5600
Text GLabel 4050 5600 0    39   Output ~ 0
VUSB
Wire Wire Line
	5050 5900 5200 5900
Wire Wire Line
	5200 5800 5050 5800
Wire Wire Line
	5050 5700 5200 5700
Wire Wire Line
	5050 5600 5200 5600
Text GLabel 5200 5600 2    39   Output ~ 0
RXD0
Text GLabel 5200 5900 2    39   Output ~ 0
GPIO0
Text GLabel 5200 5800 2    39   Output ~ 0
RESET
Text GLabel 5200 5700 2    39   Input ~ 0
TXD0
$Sheet
S 4200 5500 850  500 
U 60DD98A5
F0 "USB -> Serial" 50
F1 "serialport.sch" 50
F2 "TXD" O R 5050 5600 39 
F3 "RXD" I R 5050 5700 39 
F4 "RESET_uC" O R 5050 5800 39 
F5 "FLASH_uC" O R 5050 5900 39 
F6 "VUSB" O L 4200 5600 39 
$EndSheet
$Comp
L power:GND #PWR0105
U 1 1 60D3B2F3
P 2350 5900
F 0 "#PWR0105" H 2350 5650 50  0001 C CNN
F 1 "GND" H 2355 5727 50  0000 C CNN
F 2 "" H 2350 5900 50  0001 C CNN
F 3 "" H 2350 5900 50  0001 C CNN
	1    2350 5900
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60D3B594
P 2650 5900
F 0 "SW2" H 2800 6000 50  0000 C CNN
F 1 "SW_Push" H 2650 6094 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2650 6100 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2650 6100 50  0001 C CNN
F 4 "1-1825910-0" H 2650 5900 50  0001 C CNN "manf#"
	1    2650 5900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60D3BEF3
P 2650 5650
F 0 "SW1" H 2800 5750 50  0000 C CNN
F 1 "SW_Push" H 2650 5844 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2650 5850 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2650 5850 50  0001 C CNN
F 4 "1-1825910-0" H 2650 5650 50  0001 C CNN "manf#"
	1    2650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5900 2450 5900
Wire Wire Line
	2350 5900 2350 5650
Wire Wire Line
	2350 5650 2450 5650
$Comp
L Device:R R1
U 1 1 60D55C7D
P 2950 5400
F 0 "R1" H 3020 5446 50  0000 L CNN
F 1 "10k" H 3020 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2880 5400 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2950 5400 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 2950 5400 50  0001 C CNN "manf#"
	1    2950 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60D569B0
P 3250 5400
F 0 "R2" H 3320 5446 50  0000 L CNN
F 1 "10k" H 3320 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3180 5400 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3250 5400 50  0001 C CNN
F 4 "RC1206FR-0710KL" H 3250 5400 50  0001 C CNN "manf#"
	1    3250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5550 2950 5650
Wire Wire Line
	2950 5650 2850 5650
Wire Wire Line
	2850 5900 3250 5900
Wire Wire Line
	3250 5900 3250 5550
$Comp
L power:+3V3 #PWR0106
U 1 1 60D70363
P 2950 5250
F 0 "#PWR0106" H 2950 5100 50  0001 C CNN
F 1 "+3V3" H 2965 5423 50  0000 C CNN
F 2 "" H 2950 5250 50  0001 C CNN
F 3 "" H 2950 5250 50  0001 C CNN
	1    2950 5250
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0107
U 1 1 60D70DA7
P 3250 5250
F 0 "#PWR0107" H 3250 5100 50  0001 C CNN
F 1 "+3V3" H 3265 5423 50  0000 C CNN
F 2 "" H 3250 5250 50  0001 C CNN
F 3 "" H 3250 5250 50  0001 C CNN
	1    3250 5250
	-1   0    0    -1  
$EndComp
Connection ~ 2350 5900
Wire Notes Line
	3700 6200 3700 4950
Wire Notes Line
	3700 4950 2150 4950
Wire Notes Line
	2150 4950 2150 6200
Wire Notes Line
	2150 6200 3700 6200
Text Notes 2200 5050 0    50   Italic 0
PUSHBUTTONS
Text GLabel 3400 5650 2    39   Output ~ 0
RESET
Text GLabel 3400 5900 2    39   Output ~ 0
GPIO0
Wire Wire Line
	3400 5650 2950 5650
Connection ~ 2950 5650
Wire Wire Line
	3400 5900 3250 5900
Connection ~ 3250 5900
Text GLabel 3900 6950 0    39   BiDi ~ 0
SCL
Text GLabel 3900 7050 0    39   BiDi ~ 0
SDA
Wire Wire Line
	3900 7050 4100 7050
Connection ~ 4100 7050
Wire Wire Line
	3900 6950 4400 6950
Connection ~ 4400 6950
Text GLabel 8050 3200 0    39   BiDi ~ 0
SCL
Text GLabel 8050 3100 0    39   BiDi ~ 0
SDA
Wire Wire Line
	8050 3100 8200 3100
Wire Wire Line
	8050 3200 8200 3200
Text GLabel 9550 1900 2    39   Input ~ 0
VBAT
Text GLabel 9550 2000 2    39   Input ~ 0
TBAT
Wire Wire Line
	9550 1900 9400 1900
Wire Wire Line
	9400 2000 9550 2000
$Sheet
S 2800 3150 700  550 
U 6121A9EA
F0 "Current Sensor" 39
F1 "currentsensor.sch" 39
F2 "IP+" B L 2800 3300 39 
F3 "IP-" B L 2800 3550 39 
F4 "OUT" O R 3500 3300 39 
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6121C08C
P 2600 3300
F 0 "H1" V 2700 3300 50  0000 C CNN
F 1 "MountingHole_Pad" H 2700 3258 50  0001 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H 2600 3300 50  0001 C CNN
F 3 "~" H 2600 3300 50  0001 C CNN
	1    2600 3300
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6121C6AF
P 2600 3550
F 0 "H2" V 2700 3550 50  0000 C CNN
F 1 "MountingHole_Pad" H 2700 3508 50  0001 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H 2600 3550 50  0001 C CNN
F 3 "~" H 2600 3550 50  0001 C CNN
	1    2600 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 3550 2800 3550
Wire Wire Line
	2700 3300 2800 3300
Text GLabel 4250 3300 2    39   Output ~ 0
IBAT
$Sheet
S 3600 3200 550  200 
U 61276139
F0 "Input Prot" 39
F1 "inprot.sch" 39
F2 "IN" I L 3600 3300 39 
F3 "OUT" O R 4150 3300 39 
$EndSheet
Wire Wire Line
	4150 3300 4250 3300
Wire Wire Line
	3600 3300 3500 3300
Wire Notes Line
	2400 3850 2400 2950
Wire Notes Line
	2400 2950 4550 2950
Wire Notes Line
	4550 2950 4550 3850
Wire Notes Line
	4550 3850 2400 3850
Text Notes 2450 3050 0    50   Italic 0
CURRENT SENSOR
$Sheet
S 650  3200 500  300 
U 612F4D6E
F0 "LM35: T1" 39
F1 "lm35.sch" 39
F2 "OUT" O R 1150 3300 39 
$EndSheet
Text GLabel 2000 3300 2    39   Output ~ 0
TBAT
$Sheet
S 1350 3200 550  200 
U 612F6239
F0 "Prot T1" 39
F1 "inprot.sch" 39
F2 "IN" I L 1350 3300 39 
F3 "OUT" O R 1900 3300 39 
$EndSheet
Wire Wire Line
	1900 3300 2000 3300
$Sheet
S 650  3750 500  300 
U 61323238
F0 "LM35: T2" 39
F1 "lm35.sch" 39
F2 "OUT" O R 1150 3850 39 
$EndSheet
Text GLabel 2000 3850 2    39   Output ~ 0
TEMP2
$Sheet
S 1350 3750 550  200 
U 6132323D
F0 "Prot T2" 39
F1 "inprot.sch" 39
F2 "IN" I L 1350 3850 39 
F3 "OUT" O R 1900 3850 39 
$EndSheet
Wire Wire Line
	1900 3850 2000 3850
Wire Wire Line
	1150 3300 1350 3300
Wire Wire Line
	1150 3850 1350 3850
Wire Notes Line
	2350 4200 550  4200
Wire Notes Line
	550  2950 2350 2950
Wire Notes Line
	550  2950 550  4200
Wire Notes Line
	2350 2950 2350 4200
Text Notes 600  3050 0    50   Italic 0
TEMPERATURE SENSORS
$Sheet
S 3000 4150 650  300 
U 6137CC2E
F0 "Salida MOSFET" 39
F1 "mosfet-out.sch" 39
F2 "ON" I L 3000 4400 39 
F3 "OUT" O R 3650 4400 39 
$EndSheet
Text GLabel 2950 4400 0    39   Input ~ 0
FAN_1
Wire Wire Line
	2950 4400 3000 4400
Wire Notes Line
	2400 4650 4200 4650
Wire Notes Line
	4200 4650 4200 3900
Wire Notes Line
	4200 3900 2400 3900
Wire Notes Line
	2400 3900 2400 4650
Text Notes 2450 4000 0    50   Italic 0
POWER OUTPUT
$Sheet
S 4700 4100 800  400 
U 61400494
F0 "Interfaz UPS" 39
F1 "opto.sch" 39
F2 "UPS_ON" I L 4700 4200 39 
F3 "UPS_NORMAL" O R 5500 4200 39 
F4 "UPS_CARGA" O R 5500 4300 39 
F5 "UPS_INVERTER" O R 5500 4400 39 
$EndSheet
Text GLabel 4600 4200 0    39   Input ~ 0
UPS_ON
Wire Wire Line
	4600 4200 4700 4200
Text GLabel 5600 4300 2    39   Output ~ 0
UPS_CARGA
Text GLabel 5600 4200 2    39   Output ~ 0
UPS_NORMAL
Text GLabel 5600 4400 2    39   Output ~ 0
UPS_INVERTER
Wire Wire Line
	5600 4400 5500 4400
Wire Wire Line
	5600 4300 5500 4300
Wire Wire Line
	5600 4200 5500 4200
Wire Notes Line
	4250 3900 6100 3900
Wire Notes Line
	6100 4650 4250 4650
Text Notes 4300 4000 0    50   Italic 0
UPS-INTERFACE
Wire Notes Line
	4250 3900 4250 4650
Wire Notes Line
	6100 3900 6100 4650
Text GLabel 8050 3800 0    39   Input ~ 0
UPS_NORMAL
Text GLabel 8050 3400 0    39   Input ~ 0
UPS_CARGA
Text GLabel 8050 3500 0    39   Input ~ 0
UPS_INVERTER
Text GLabel 8050 3700 0    39   Output ~ 0
UPS_ON
Text GLabel 8050 3900 0    39   Input ~ 0
IBAT
Text GLabel 8050 4000 0    39   Input ~ 0
TEMP2
Text GLabel 8050 3600 0    39   Output ~ 0
RELAY_2
Text GLabel 8050 2400 0    39   Output ~ 0
RELAY_1
Text GLabel 8050 2100 0    39   Output ~ 0
FAN_1
Wire Wire Line
	8050 3400 8200 3400
Wire Wire Line
	8200 3500 8050 3500
Wire Wire Line
	8050 3600 8200 3600
Wire Wire Line
	8200 3700 8050 3700
Wire Wire Line
	8050 3800 8200 3800
Wire Wire Line
	8050 3900 8200 3900
Wire Wire Line
	8050 4000 8200 4000
Wire Wire Line
	8050 2100 8200 2100
Wire Wire Line
	8200 2400 8050 2400
Text GLabel 8050 3300 0    39   Output ~ 0
RELAY_3
Wire Wire Line
	8050 3300 8200 3300
Wire Wire Line
	3100 6650 3000 6650
Wire Wire Line
	3100 6550 3100 6650
$Comp
L power:+3V3 #PWR010
U 1 1 60D757EF
P 3100 6550
AR Path="/60D757EF" Ref="#PWR010"  Part="1" 
AR Path="/60CF66AD/60D757EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 3100 6400 50  0001 C CNN
F 1 "+3V3" H 3115 6723 50  0000 C CNN
F 2 "" H 3100 6550 50  0001 C CNN
F 3 "" H 3100 6550 50  0001 C CNN
	1    3100 6550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 60DE1027
P 3350 6550
F 0 "#PWR0101" H 3350 6400 50  0001 C CNN
F 1 "+5V" H 3365 6723 50  0000 C CNN
F 2 "" H 3350 6550 50  0001 C CNN
F 3 "" H 3350 6550 50  0001 C CNN
	1    3350 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6550 3350 6800
Wire Wire Line
	3350 6800 3000 6800
Wire Wire Line
	1950 6650 2200 6650
Wire Wire Line
	1700 6650 1950 6650
Connection ~ 1950 6650
Wire Wire Line
	1950 6550 1950 6650
$Comp
L power:+12V #PWR08
U 1 1 60D75808
P 1950 6550
AR Path="/60D75808" Ref="#PWR08"  Part="1" 
AR Path="/60CF66AD/60D75808" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 1950 6400 50  0001 C CNN
F 1 "+12V" H 1965 6723 50  0000 C CNN
F 2 "" H 1950 6550 50  0001 C CNN
F 3 "" H 1950 6550 50  0001 C CNN
	1    1950 6550
	1    0    0    -1  
$EndComp
$Comp
L components:DS1233 U11
U 1 1 60E05680
P 6000 7000
F 0 "U11" H 5870 7046 50  0000 R CNN
F 1 "DS1233A-10" H 5870 6955 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92" H 6000 7000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1233A.pdf" H 6000 7000 50  0001 C CNN
	1    6000 7000
	1    0    0    -1  
$EndComp
Text GLabel 6500 7000 2    39   Input ~ 0
RESET
Wire Wire Line
	6500 7000 6400 7000
$Comp
L power:+3V3 #PWR06
U 1 1 60E0AA80
P 6000 6650
F 0 "#PWR06" H 6000 6500 50  0001 C CNN
F 1 "+3V3" H 6015 6823 50  0000 C CNN
F 2 "" H 6000 6650 50  0001 C CNN
F 3 "" H 6000 6650 50  0001 C CNN
	1    6000 6650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 6650 6000 6700
$Comp
L power:GND #PWR09
U 1 1 60E0F89B
P 6000 7350
F 0 "#PWR09" H 6000 7100 50  0001 C CNN
F 1 "GND" H 6005 7177 50  0000 C CNN
F 2 "" H 6000 7350 50  0001 C CNN
F 3 "" H 6000 7350 50  0001 C CNN
	1    6000 7350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 7350 6000 7300
Text Notes 5350 6350 0    50   Italic 0
POWER MONITOR
Wire Notes Line
	5300 7700 5300 6250
Wire Notes Line
	6800 6250 6800 7700
Wire Notes Line
	5300 7700 6800 7700
Wire Notes Line
	5300 6250 6800 6250
$Comp
L power:+BATT #PWR04
U 1 1 60E3DAA2
P 1050 6550
F 0 "#PWR04" H 1050 6400 50  0001 C CNN
F 1 "+BATT" H 1065 6723 50  0000 C CNN
F 2 "" H 1050 6550 50  0001 C CNN
F 3 "" H 1050 6550 50  0001 C CNN
	1    1050 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6550 1050 6650
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 60E4F195
P 4100 4300
AR Path="/60E4F195" Ref="J9"  Part="1" 
AR Path="/6137CC2E/60E4F195" Ref="J?"  Part="1" 
F 0 "J9" H 3950 4500 50  0000 L CNN
F 1 "Conn_01x03" H 4180 4251 50  0001 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 4100 4300 50  0001 C CNN
F 3 "https://app.adam-tech.com/products/download/data_sheet/196588/lha-xx-ts-data-sheet.pdf" H 4100 4300 50  0001 C CNN
F 4 "LHA-03-TS" H 4100 4300 50  0001 C CNN "manf#"
	1    4100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4150 3750 4200
Wire Wire Line
	3750 4200 3900 4200
Wire Wire Line
	3650 4400 3900 4400
NoConn ~ 3900 4300
$Comp
L power:+12V #PWR05
U 1 1 60E6303A
P 3750 4150
AR Path="/60E6303A" Ref="#PWR05"  Part="1" 
AR Path="/60CF66AD/60E6303A" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 3750 4000 50  0001 C CNN
F 1 "+12V" H 3765 4323 50  0000 C CNN
F 2 "" H 3750 4150 50  0001 C CNN
F 3 "" H 3750 4150 50  0001 C CNN
	1    3750 4150
	1    0    0    -1  
$EndComp
$EndSCHEMATC

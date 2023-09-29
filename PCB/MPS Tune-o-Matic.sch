EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "MPS Tune-o-Matic"
Date "2023-01-14"
Rev "V2.0"
Comp "(C) andy@britishideas.com 2022-2023"
Comment1 "For Bosch D-Jetronic MPS Type 3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MPS-Tune-o-Matic-rescue:ATmega328P-BritishIdeas U1
U 1 1 5FE91942
P 2850 3500
F 0 "U1" H 2900 3450 50  0000 C CNN
F 1 "ATmega328P" H 4050 3450 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 1600 2800 50  0001 C CNN
F 3 "" H 1600 2800 50  0001 C CNN
F 4 "ATMEGA328P-AUR" H 2850 3500 50  0001 C CNN "manf#"
	1    2850 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5FE92E63
P 9300 2300
F 0 "J1" H 9350 2600 50  0000 R CNN
F 1 "ISP" H 9350 1900 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9300 2300 50  0001 C CNN
F 3 "~" H 9300 2300 50  0001 C CNN
	1    9300 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 2100 8850 2100
Wire Wire Line
	9100 2200 8850 2200
Wire Wire Line
	9100 2300 8850 2300
Wire Wire Line
	9100 2500 8850 2500
Text Label 8850 2500 2    50   ~ 0
MISO
Wire Wire Line
	4400 1600 4600 1600
Text Label 4600 1600 0    50   ~ 0
MISO
Wire Wire Line
	8450 2400 8450 1650
Wire Wire Line
	9100 2400 8450 2400
$Comp
L power:+5V #PWR08
U 1 1 5FE94D36
P 8450 1650
F 0 "#PWR08" H 8450 1500 50  0001 C CNN
F 1 "+5V" H 8465 1823 50  0000 C CNN
F 2 "" H 8450 1650 50  0001 C CNN
F 3 "" H 8450 1650 50  0001 C CNN
	1    8450 1650
	-1   0    0    -1  
$EndComp
Text Label 8850 2300 2    50   ~ 0
SCK
Wire Wire Line
	4400 1500 4600 1500
Text Label 4600 1500 0    50   ~ 0
SCK
Text Label 8850 2200 2    50   ~ 0
MOSI
Wire Wire Line
	4400 1700 4600 1700
Text Label 4600 1700 0    50   ~ 0
MOSI
Text Label 8850 2100 2    50   ~ 0
~RESET
Wire Wire Line
	2750 1500 2650 1500
Text Label 2400 1500 0    50   ~ 0
~RESET
Wire Wire Line
	8550 2000 8550 2600
Wire Wire Line
	9100 2000 8550 2000
$Comp
L power:GND #PWR09
U 1 1 5FE95B1A
P 8550 2600
F 0 "#PWR09" H 8550 2350 50  0001 C CNN
F 1 "GND" H 8555 2427 50  0000 C CNN
F 2 "" H 8550 2600 50  0001 C CNN
F 3 "" H 8550 2600 50  0001 C CNN
	1    8550 2600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FE95CF7
P 2650 1200
F 0 "R1" H 2720 1246 50  0000 L CNN
F 1 "1k" H 2720 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2580 1200 50  0001 C CNN
F 3 "~" H 2650 1200 50  0001 C CNN
	1    2650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1350 2650 1500
Connection ~ 2650 1500
Wire Wire Line
	2650 1500 2400 1500
Wire Wire Line
	2650 1050 2650 950 
$Comp
L power:+5V #PWR06
U 1 1 5FE96904
P 2650 950
F 0 "#PWR06" H 2650 800 50  0001 C CNN
F 1 "+5V" H 2665 1123 50  0000 C CNN
F 2 "" H 2650 950 50  0001 C CNN
F 3 "" H 2650 950 50  0001 C CNN
	1    2650 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1600 2300 1600
Wire Wire Line
	2300 1600 2300 1400
$Comp
L Device:C C4
U 1 1 5FE98587
P 1600 1400
F 0 "C4" V 1550 1500 50  0000 C CNN
F 1 "18pF" V 1550 1250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1638 1250 50  0001 C CNN
F 3 "~" H 1600 1400 50  0001 C CNN
	1    1600 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5FE98E8C
P 1600 1700
F 0 "C5" V 1850 1700 50  0000 C CNN
F 1 "18pF" V 1750 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1638 1550 50  0001 C CNN
F 3 "~" H 1600 1700 50  0001 C CNN
	1    1600 1700
	0    -1   1    0   
$EndComp
Wire Wire Line
	1450 1400 1450 1550
Wire Wire Line
	1450 1550 1200 1550
Wire Wire Line
	1200 1550 1200 1700
Connection ~ 1450 1550
Wire Wire Line
	1450 1550 1450 1700
$Comp
L power:GND #PWR01
U 1 1 5FE9B28C
P 1200 1700
F 0 "#PWR01" H 1200 1450 50  0001 C CNN
F 1 "GND" H 1205 1527 50  0000 C CNN
F 2 "" H 1200 1700 50  0001 C CNN
F 3 "" H 1200 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2000 2600 2000
Wire Wire Line
	2600 2000 2600 2100
Wire Wire Line
	2600 2100 2750 2100
Wire Wire Line
	2600 2100 2600 2200
Wire Wire Line
	2600 2200 2750 2200
Connection ~ 2600 2100
Wire Wire Line
	2600 2100 2250 2100
Wire Wire Line
	2250 2100 2250 2200
$Comp
L power:GND #PWR05
U 1 1 5FE9CC49
P 2250 2200
F 0 "#PWR05" H 2250 1950 50  0001 C CNN
F 1 "GND" H 2255 2027 50  0000 C CNN
F 2 "" H 2250 2200 50  0001 C CNN
F 3 "" H 2250 2200 50  0001 C CNN
	1    2250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1900 2000 1900
Wire Wire Line
	2000 1900 2000 2500
Wire Wire Line
	2750 2300 2400 2300
Wire Wire Line
	2400 2300 2400 2400
Wire Wire Line
	2400 2500 2000 2500
Wire Wire Line
	2750 2400 2400 2400
Connection ~ 2400 2400
Wire Wire Line
	2400 2400 2400 2500
Wire Wire Line
	2000 2500 1750 2500
Wire Wire Line
	1750 2500 1750 2400
Connection ~ 2000 2500
$Comp
L power:+5V #PWR04
U 1 1 5FE9F8D3
P 1750 2400
F 0 "#PWR04" H 1750 2250 50  0001 C CNN
F 1 "+5V" H 1765 2573 50  0000 C CNN
F 2 "" H 1750 2400 50  0001 C CNN
F 3 "" H 1750 2400 50  0001 C CNN
	1    1750 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5FEA003C
P 2000 2750
F 0 "C6" V 2250 2750 50  0000 C CNN
F 1 "1uF" V 2150 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2038 2600 50  0001 C CNN
F 3 "~" H 2000 2750 50  0001 C CNN
	1    2000 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FEA0A8C
P 1550 2750
F 0 "C3" V 1800 2750 50  0000 C CNN
F 1 "1uF" V 1700 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1588 2600 50  0001 C CNN
F 3 "~" H 1550 2750 50  0001 C CNN
	1    1550 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5FEA144B
P 1000 2750
F 0 "C1" V 1150 2700 50  0000 L CNN
F 1 "4.7uF" V 850 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1038 2600 50  0001 C CNN
F 3 "~" H 1000 2750 50  0001 C CNN
	1    1000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2500 2000 2600
Wire Wire Line
	2000 2600 1550 2600
Connection ~ 2000 2600
Wire Wire Line
	1550 2600 1000 2600
Connection ~ 1550 2600
Wire Wire Line
	1000 2900 1550 2900
Wire Wire Line
	1550 2900 2000 2900
Connection ~ 1550 2900
$Comp
L power:GND #PWR03
U 1 1 5FEA57C4
P 1550 3100
F 0 "#PWR03" H 1550 2850 50  0001 C CNN
F 1 "GND" H 1555 2927 50  0000 C CNN
F 2 "" H 1550 3100 50  0001 C CNN
F 3 "" H 1550 3100 50  0001 C CNN
	1    1550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2900 1550 3100
$Comp
L Device:R R3
U 1 1 5FEBD228
P 5450 3650
F 0 "R3" V 5657 3650 50  0000 C CNN
F 1 "1k" V 5566 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5380 3650 50  0001 C CNN
F 3 "~" H 5450 3650 50  0001 C CNN
	1    5450 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FEBDAAE
P 5450 3950
F 0 "R4" V 5657 3950 50  0000 C CNN
F 1 "1k" V 5566 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5380 3950 50  0001 C CNN
F 3 "~" H 5450 3950 50  0001 C CNN
	1    5450 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 3650 5700 3650
Wire Wire Line
	5600 3950 5700 3950
Text Label 5700 3650 0    50   ~ 0
TX
Text Label 5700 3950 0    50   ~ 0
RX
$Comp
L Device:R R2
U 1 1 5FF87B20
P 4950 1200
F 0 "R2" H 5020 1246 50  0000 L CNN
F 1 "1k" H 5020 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4880 1200 50  0001 C CNN
F 3 "~" H 4950 1200 50  0001 C CNN
	1    4950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1800 4950 1800
Wire Wire Line
	4950 1800 4950 1350
$Comp
L power:+5V #PWR07
U 1 1 5FF8D02A
P 4950 950
F 0 "#PWR07" H 4950 800 50  0001 C CNN
F 1 "+5V" H 4965 1123 50  0000 C CNN
F 2 "" H 4950 950 50  0001 C CNN
F 3 "" H 4950 950 50  0001 C CNN
	1    4950 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 950  4950 1050
$Comp
L Device:C C2
U 1 1 5FFB500E
P 1200 2200
F 0 "C2" V 1450 2200 50  0000 C CNN
F 1 "100nF" V 1350 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1238 2050 50  0001 C CNN
F 3 "~" H 1200 2200 50  0001 C CNN
	1    1200 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 1800 1750 1800
Wire Wire Line
	1750 1800 1750 2050
Wire Wire Line
	1750 2050 1200 2050
$Comp
L power:GND #PWR02
U 1 1 5FFBB497
P 1200 2350
F 0 "#PWR02" H 1200 2100 50  0001 C CNN
F 1 "GND" H 1205 2177 50  0000 C CNN
F 2 "" H 1200 2350 50  0001 C CNN
F 3 "" H 1200 2350 50  0001 C CNN
	1    1200 2350
	1    0    0    -1  
$EndComp
$Sheet
S 1050 6850 900  300 
U 60479334
F0 "USB and Power" 50
F1 "USBandPower.sch" 50
F2 "~RESET" O R 1950 6950 50 
F3 "RX" I L 1050 7050 50 
F4 "TX" O R 1950 7050 50 
$EndSheet
Text Label 2050 6950 0    50   ~ 0
~RESET
Wire Wire Line
	2050 6950 1950 6950
Text Label 950  7050 2    50   ~ 0
TX
Text Label 2050 7050 0    50   ~ 0
RX
Wire Wire Line
	4600 3300 4400 3300
Wire Wire Line
	4400 3400 4500 3400
Wire Wire Line
	4500 3400 4500 3950
Wire Wire Line
	1050 7050 950  7050
Wire Wire Line
	1950 7050 2050 7050
Text Label 8950 3450 2    50   ~ 0
MPS-7
Text Label 8950 3750 2    50   ~ 0
MPS-15
Text Label 8950 3650 2    50   ~ 0
MPS-10
Text Label 8950 3550 2    50   ~ 0
MPS-8
Text Notes 8750 4200 0    50   ~ 0
7 - grey/green\n8 - grey/blue\n10 - grey/red\n15 - grey/black
$Comp
L Device:Crystal_GND24 Y1
U 1 1 605627C0
P 1950 1550
F 0 "Y1" V 1904 1794 50  0000 L CNN
F 1 "FA-238 16.0000MB-C3" V 1650 1200 50  0000 L CNN
F 2 "Britishideas:FA-238" H 1950 1550 50  0001 C CNN
F 3 "~" H 1950 1550 50  0001 C CNN
F 4 "FA-238 16.0000MB-C3" H 1950 1550 50  0001 C CNN "manf#"
	1    1950 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 1700 1950 1700
Wire Wire Line
	1750 1400 1950 1400
Connection ~ 1950 1400
Wire Wire Line
	1950 1400 2300 1400
Connection ~ 1950 1700
Wire Wire Line
	1950 1700 2750 1700
Wire Wire Line
	1750 1550 1450 1550
Wire Wire Line
	2150 1550 2250 1550
Wire Wire Line
	2250 1550 2250 2100
Connection ~ 2250 2100
Wire Wire Line
	4600 3300 4600 3650
Wire Wire Line
	4600 3650 5300 3650
Wire Wire Line
	4500 3950 5300 3950
$Sheet
S 3600 6850 900  650 
U 6211F24D
F0 "MPS Stimulator" 50
F1 "MPSStimulator.sch" 50
F2 "IN" I L 3600 6950 50 
F3 "OUT" O R 4500 6950 50 
F4 "MPS-7" O R 4500 7100 50 
F5 "MPS-8" O R 4500 7200 50 
F6 "MPS-10" O R 4500 7300 50 
F7 "MPS-15" O R 4500 7400 50 
$EndSheet
Text Label 3500 6950 2    50   ~ 0
MPS_STIMULUS
Wire Wire Line
	3500 6950 3600 6950
Text Label 4600 6950 0    50   ~ 0
MPS_PULSE
Wire Wire Line
	4600 6950 4500 6950
Text Label 4600 1900 0    50   ~ 0
MPS_STIMULUS
Text Label 4600 3200 0    50   ~ 0
MPS_PULSE
Text Label 4600 7100 0    50   ~ 0
MPS-7
Text Label 4600 7200 0    50   ~ 0
MPS-8
Text Label 4600 7300 0    50   ~ 0
MPS-10
Text Label 4600 7400 0    50   ~ 0
MPS-15
Wire Wire Line
	4600 7400 4500 7400
Wire Wire Line
	4500 7300 4600 7300
Wire Wire Line
	4600 7200 4500 7200
Wire Wire Line
	4500 7100 4600 7100
Wire Wire Line
	4600 1900 4400 1900
Wire Wire Line
	4600 3200 4400 3200
NoConn ~ 4400 2200
NoConn ~ 4400 2400
NoConn ~ 2750 2600
NoConn ~ 2750 2500
$Comp
L Connector:Screw_Terminal_01x04 J2
U 1 1 635F711E
P 9300 3550
F 0 "J2" H 9380 3542 50  0000 L CNN
F 1 "MPS" H 9380 3451 50  0000 L CNN
F 2 "Britishideas:PhoenixContact_COMBICON_PT_4" H 9300 3550 50  0001 C CNN
F 3 "~" H 9300 3550 50  0001 C CNN
F 4 "1935792" H 9300 3550 50  0001 C CNN "manf#"
F 5 "1935187" H 9300 3550 50  0001 C CNN "manf2#"
	1    9300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3750 9100 3750
Wire Wire Line
	9100 3650 8950 3650
Wire Wire Line
	8950 3550 9100 3550
Wire Wire Line
	9100 3450 8950 3450
$Comp
L Device:LED D8
U 1 1 636A16F7
P 6000 1250
AR Path="/636A16F7" Ref="D8"  Part="1" 
AR Path="/60479334/636A16F7" Ref="D?"  Part="1" 
F 0 "D8" V 6039 1132 50  0000 R CNN
F 1 "APT1608EC" V 5948 1132 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6000 1250 50  0001 C CNN
F 3 "~" H 6000 1250 50  0001 C CNN
F 4 "APT1608EC" V 6000 1250 50  0001 C CNN "manf#"
	1    6000 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 636A16FD
P 6000 1800
AR Path="/636A16FD" Ref="R29"  Part="1" 
AR Path="/60479334/636A16FD" Ref="R?"  Part="1" 
F 0 "R29" H 5850 1850 50  0000 C CNN
F 1 "150" H 5850 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5930 1800 50  0001 C CNN
F 3 "~" H 6000 1800 50  0001 C CNN
	1    6000 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1400 6000 1650
Wire Wire Line
	6000 950  6000 1100
Wire Wire Line
	4400 2300 6000 2300
Wire Wire Line
	6000 1950 6000 2300
NoConn ~ 4400 2100
NoConn ~ 4400 2500
NoConn ~ 4400 2600
$Comp
L power:+5V #PWR035
U 1 1 636C7830
P 6000 950
F 0 "#PWR035" H 6000 800 50  0001 C CNN
F 1 "+5V" H 6015 1123 50  0000 C CNN
F 2 "" H 6000 950 50  0001 C CNN
F 3 "" H 6000 950 50  0001 C CNN
	1    6000 950 
	1    0    0    -1  
$EndComp
Text Label 4600 2300 0    50   ~ 0
STATUS
$Comp
L BritishIdeas:BMP390 U4
U 1 1 63612A1B
P 6400 5550
F 0 "U4" H 6400 5500 50  0000 L CNN
F 1 "BMP390" H 6350 6200 50  0000 L CNN
F 2 "Britishideas:LGA-2x2-10-pin" H 6400 5550 50  0001 C CNN
F 3 "" H 6400 5550 50  0001 C CNN
F 4 "BMP390" H 6400 5550 50  0001 C CNN "manf#"
	1    6400 5550
	1    0    0    -1  
$EndComp
Text Label 6100 5050 2    50   ~ 0
SCK
Text Label 6100 5250 2    50   ~ 0
MISO
Text Label 6100 5150 2    50   ~ 0
MOSI
Text Label 6100 5350 2    50   ~ 0
~CS_PRESSURE
Text Label 6100 5450 2    50   ~ 0
INT_PRESSURE
Wire Wire Line
	6100 5450 6300 5450
Wire Wire Line
	6300 5350 6100 5350
Wire Wire Line
	6100 5250 6300 5250
Wire Wire Line
	6300 5150 6100 5150
Wire Wire Line
	6100 5050 6300 5050
Text Label 4600 2000 0    50   ~ 0
~CS_PRESSURE
Wire Wire Line
	4600 2000 4400 2000
Text Label 4600 3100 0    50   ~ 0
INT_PRESSURE
Wire Wire Line
	4600 3100 4400 3100
$Comp
L power:GND #PWR036
U 1 1 63625441
P 6700 5950
F 0 "#PWR036" H 6700 5700 50  0001 C CNN
F 1 "GND" H 6705 5777 50  0000 C CNN
F 2 "" H 6700 5950 50  0001 C CNN
F 3 "" H 6700 5950 50  0001 C CNN
	1    6700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5950 6700 5850
Wire Wire Line
	6900 5650 6900 5850
Wire Wire Line
	6900 5850 6800 5850
Connection ~ 6700 5850
Wire Wire Line
	6700 5850 6700 5650
Wire Wire Line
	6800 5650 6800 5850
Connection ~ 6800 5850
Wire Wire Line
	6800 5850 6700 5850
$Comp
L Device:C C17
U 1 1 6362E39E
P 7650 5250
F 0 "C17" V 7900 5250 50  0000 C CNN
F 1 "100nF" V 7800 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7688 5100 50  0001 C CNN
F 3 "~" H 7650 5250 50  0001 C CNN
	1    7650 5250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 6362EBD1
P 8100 5250
F 0 "C18" V 8350 5250 50  0000 C CNN
F 1 "100nF" V 8250 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8138 5100 50  0001 C CNN
F 3 "~" H 8100 5250 50  0001 C CNN
	1    8100 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 5400 8100 5850
Wire Wire Line
	8100 5850 7650 5850
Connection ~ 6900 5850
Wire Wire Line
	7650 5400 7650 5850
Connection ~ 7650 5850
Wire Wire Line
	7650 5850 6900 5850
Wire Wire Line
	6850 4850 6850 4750
Wire Wire Line
	6850 4750 7650 4750
Wire Wire Line
	7650 4750 7650 5100
Wire Wire Line
	8100 5100 8100 4750
Wire Wire Line
	8100 4750 7650 4750
Connection ~ 7650 4750
Wire Wire Line
	6750 4850 6750 4750
Wire Wire Line
	6750 4750 6850 4750
Connection ~ 6850 4750
$Comp
L power:+3.3V #PWR037
U 1 1 6363EC4A
P 6750 4600
F 0 "#PWR037" H 6750 4450 50  0001 C CNN
F 1 "+3.3V" H 6765 4773 50  0000 C CNN
F 2 "" H 6750 4600 50  0001 C CNN
F 3 "" H 6750 4600 50  0001 C CNN
	1    6750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4600 6750 4750
Connection ~ 6750 4750
$Comp
L BritishIdeas:BMP390 U5
U 1 1 63C4938E
P 3550 5550
F 0 "U5" H 3550 5500 50  0000 L CNN
F 1 "BMP390" H 3500 6200 50  0000 L CNN
F 2 "Britishideas:LGA-2x2-10-pin" H 3550 5550 50  0001 C CNN
F 3 "" H 3550 5550 50  0001 C CNN
F 4 "BMP390" H 3550 5550 50  0001 C CNN "manf#"
	1    3550 5550
	1    0    0    -1  
$EndComp
Text Label 3250 5050 2    50   ~ 0
SCK
Text Label 3250 5250 2    50   ~ 0
MISO
Text Label 3250 5150 2    50   ~ 0
MOSI
Text Label 3250 5350 2    50   ~ 0
~CS_VAC_PRESSURE
Text Label 3250 5450 2    50   ~ 0
INT_VAC_PRESSURE
Wire Wire Line
	3250 5450 3450 5450
Wire Wire Line
	3450 5350 3250 5350
Wire Wire Line
	3250 5250 3450 5250
Wire Wire Line
	3450 5150 3250 5150
Wire Wire Line
	3250 5050 3450 5050
$Comp
L power:GND #PWR040
U 1 1 63C49644
P 3850 5950
F 0 "#PWR040" H 3850 5700 50  0001 C CNN
F 1 "GND" H 3855 5777 50  0000 C CNN
F 2 "" H 3850 5950 50  0001 C CNN
F 3 "" H 3850 5950 50  0001 C CNN
	1    3850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5950 3850 5850
Wire Wire Line
	4050 5650 4050 5850
Wire Wire Line
	4050 5850 3950 5850
Connection ~ 3850 5850
Wire Wire Line
	3850 5850 3850 5650
Wire Wire Line
	3950 5650 3950 5850
Connection ~ 3950 5850
Wire Wire Line
	3950 5850 3850 5850
$Comp
L Device:C C19
U 1 1 63C49656
P 4800 5250
F 0 "C19" V 5050 5250 50  0000 C CNN
F 1 "100nF" V 4950 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4838 5100 50  0001 C CNN
F 3 "~" H 4800 5250 50  0001 C CNN
	1    4800 5250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 63C49660
P 5250 5250
F 0 "C20" V 5500 5250 50  0000 C CNN
F 1 "100nF" V 5400 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5288 5100 50  0001 C CNN
F 3 "~" H 5250 5250 50  0001 C CNN
	1    5250 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5250 5400 5250 5850
Wire Wire Line
	5250 5850 4800 5850
Connection ~ 4050 5850
Wire Wire Line
	4800 5400 4800 5850
Connection ~ 4800 5850
Wire Wire Line
	4800 5850 4050 5850
Wire Wire Line
	4000 4850 4000 4750
Wire Wire Line
	4000 4750 4800 4750
Wire Wire Line
	4800 4750 4800 5100
Wire Wire Line
	5250 5100 5250 4750
Wire Wire Line
	5250 4750 4800 4750
Connection ~ 4800 4750
Wire Wire Line
	3900 4850 3900 4750
Wire Wire Line
	3900 4750 4000 4750
Connection ~ 4000 4750
$Comp
L power:+3.3V #PWR041
U 1 1 63C49679
P 3900 4600
F 0 "#PWR041" H 3900 4450 50  0001 C CNN
F 1 "+3.3V" H 3915 4773 50  0000 C CNN
F 2 "" H 3900 4600 50  0001 C CNN
F 3 "" H 3900 4600 50  0001 C CNN
	1    3900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4600 3900 4750
Connection ~ 3900 4750
Text Label 4600 3000 0    50   ~ 0
INT_VAC_PRESSURE
Wire Wire Line
	4600 3000 4400 3000
Text Label 4600 2700 0    50   ~ 0
~CS_VAC_PRESSURE
Wire Wire Line
	4600 2700 4400 2700
$Comp
L Connector:Screw_Terminal_01x04 J6
U 1 1 63C74E56
P 7000 2800
F 0 "J6" H 7080 2792 50  0000 L CNN
F 1 "GPIO" H 7080 2701 50  0000 L CNN
F 2 "Britishideas:PhoenixContact_COMBICON_PT_4" H 7000 2800 50  0001 C CNN
F 3 "~" H 7000 2800 50  0001 C CNN
F 4 "1935792" H 7000 2800 50  0001 C CNN "manf#"
F 5 "1935187" H 7000 2800 50  0001 C CNN "manf2#"
	1    7000 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR042
U 1 1 63C762C9
P 6650 2500
F 0 "#PWR042" H 6650 2350 50  0001 C CNN
F 1 "+5V" H 6665 2673 50  0000 C CNN
F 2 "" H 6650 2500 50  0001 C CNN
F 3 "" H 6650 2500 50  0001 C CNN
	1    6650 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 63C764CE
P 6650 3200
F 0 "#PWR043" H 6650 2950 50  0001 C CNN
F 1 "GND" H 6655 3027 50  0000 C CNN
F 2 "" H 6650 3200 50  0001 C CNN
F 3 "" H 6650 3200 50  0001 C CNN
	1    6650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3200 6650 3000
Wire Wire Line
	6650 3000 6800 3000
Wire Wire Line
	6800 2700 6650 2700
Wire Wire Line
	6650 2700 6650 2500
Wire Wire Line
	6800 2800 4400 2800
Wire Wire Line
	4400 2900 6800 2900
$EndSCHEMATC

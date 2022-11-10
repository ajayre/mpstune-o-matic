EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "MPS Tune-o-Matic"
Date "2022-11-10"
Rev "V1.1"
Comp "(C) andy@britishideas.com 2022"
Comment1 "For Bosch D-Jetronic MPS Type 3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MPS-Tune-o-Matic-rescue:ATmega328P-BritishIdeas U1
U 1 1 5FE91942
P 3700 4100
F 0 "U1" H 3750 4050 50  0000 C CNN
F 1 "ATmega328P" H 4900 4050 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 2450 3400 50  0001 C CNN
F 3 "" H 2450 3400 50  0001 C CNN
F 4 "ATMEGA328P-AUR" H 3700 4100 50  0001 C CNN "manf#"
	1    3700 4100
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
	5250 2200 5450 2200
Text Label 5450 2200 0    50   ~ 0
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
	5250 2100 5450 2100
Text Label 5450 2100 0    50   ~ 0
SCK
Text Label 8850 2200 2    50   ~ 0
MOSI
Wire Wire Line
	5250 2300 5450 2300
Text Label 5450 2300 0    50   ~ 0
MOSI
Text Label 8850 2100 2    50   ~ 0
~RESET
Wire Wire Line
	3600 2100 3500 2100
Text Label 3250 2100 0    50   ~ 0
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
P 3500 1800
F 0 "R1" H 3570 1846 50  0000 L CNN
F 1 "1k" H 3570 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3430 1800 50  0001 C CNN
F 3 "~" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1950 3500 2100
Connection ~ 3500 2100
Wire Wire Line
	3500 2100 3250 2100
Wire Wire Line
	3500 1650 3500 1550
$Comp
L power:+5V #PWR06
U 1 1 5FE96904
P 3500 1550
F 0 "#PWR06" H 3500 1400 50  0001 C CNN
F 1 "+5V" H 3515 1723 50  0000 C CNN
F 2 "" H 3500 1550 50  0001 C CNN
F 3 "" H 3500 1550 50  0001 C CNN
	1    3500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2200 3150 2200
Wire Wire Line
	3150 2200 3150 2000
$Comp
L Device:C C4
U 1 1 5FE98587
P 2450 2000
F 0 "C4" V 2400 2100 50  0000 C CNN
F 1 "18pF" V 2400 1850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2488 1850 50  0001 C CNN
F 3 "~" H 2450 2000 50  0001 C CNN
	1    2450 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5FE98E8C
P 2450 2300
F 0 "C5" V 2700 2300 50  0000 C CNN
F 1 "18pF" V 2600 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2488 2150 50  0001 C CNN
F 3 "~" H 2450 2300 50  0001 C CNN
	1    2450 2300
	0    -1   1    0   
$EndComp
Wire Wire Line
	2300 2000 2300 2150
Wire Wire Line
	2300 2150 2050 2150
Wire Wire Line
	2050 2150 2050 2300
Connection ~ 2300 2150
Wire Wire Line
	2300 2150 2300 2300
$Comp
L power:GND #PWR01
U 1 1 5FE9B28C
P 2050 2300
F 0 "#PWR01" H 2050 2050 50  0001 C CNN
F 1 "GND" H 2055 2127 50  0000 C CNN
F 2 "" H 2050 2300 50  0001 C CNN
F 3 "" H 2050 2300 50  0001 C CNN
	1    2050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2600 3450 2600
Wire Wire Line
	3450 2600 3450 2700
Wire Wire Line
	3450 2700 3600 2700
Wire Wire Line
	3450 2700 3450 2800
Wire Wire Line
	3450 2800 3600 2800
Connection ~ 3450 2700
Wire Wire Line
	3450 2700 3100 2700
Wire Wire Line
	3100 2700 3100 2800
$Comp
L power:GND #PWR05
U 1 1 5FE9CC49
P 3100 2800
F 0 "#PWR05" H 3100 2550 50  0001 C CNN
F 1 "GND" H 3105 2627 50  0000 C CNN
F 2 "" H 3100 2800 50  0001 C CNN
F 3 "" H 3100 2800 50  0001 C CNN
	1    3100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2500 2850 2500
Wire Wire Line
	2850 2500 2850 3100
Wire Wire Line
	3600 2900 3250 2900
Wire Wire Line
	3250 2900 3250 3000
Wire Wire Line
	3250 3100 2850 3100
Wire Wire Line
	3600 3000 3250 3000
Connection ~ 3250 3000
Wire Wire Line
	3250 3000 3250 3100
Wire Wire Line
	2850 3100 2600 3100
Wire Wire Line
	2600 3100 2600 3000
Connection ~ 2850 3100
$Comp
L power:+5V #PWR04
U 1 1 5FE9F8D3
P 2600 3000
F 0 "#PWR04" H 2600 2850 50  0001 C CNN
F 1 "+5V" H 2615 3173 50  0000 C CNN
F 2 "" H 2600 3000 50  0001 C CNN
F 3 "" H 2600 3000 50  0001 C CNN
	1    2600 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5FEA003C
P 2850 3350
F 0 "C6" V 3100 3350 50  0000 C CNN
F 1 "1uF" V 3000 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2888 3200 50  0001 C CNN
F 3 "~" H 2850 3350 50  0001 C CNN
	1    2850 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FEA0A8C
P 2400 3350
F 0 "C3" V 2650 3350 50  0000 C CNN
F 1 "1uF" V 2550 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2438 3200 50  0001 C CNN
F 3 "~" H 2400 3350 50  0001 C CNN
	1    2400 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5FEA144B
P 1850 3350
F 0 "C1" V 2000 3300 50  0000 L CNN
F 1 "4.7uF" V 1700 3200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1888 3200 50  0001 C CNN
F 3 "~" H 1850 3350 50  0001 C CNN
	1    1850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3100 2850 3200
Wire Wire Line
	2850 3200 2400 3200
Connection ~ 2850 3200
Wire Wire Line
	2400 3200 1850 3200
Connection ~ 2400 3200
Wire Wire Line
	1850 3500 2400 3500
Wire Wire Line
	2400 3500 2850 3500
Connection ~ 2400 3500
$Comp
L power:GND #PWR03
U 1 1 5FEA57C4
P 2400 3700
F 0 "#PWR03" H 2400 3450 50  0001 C CNN
F 1 "GND" H 2405 3527 50  0000 C CNN
F 2 "" H 2400 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3500 2400 3700
$Comp
L Device:R R3
U 1 1 5FEBD228
P 6300 4250
F 0 "R3" V 6507 4250 50  0000 C CNN
F 1 "1k" V 6416 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 4250 50  0001 C CNN
F 3 "~" H 6300 4250 50  0001 C CNN
	1    6300 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FEBDAAE
P 6300 4550
F 0 "R4" V 6507 4550 50  0000 C CNN
F 1 "1k" V 6416 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 4550 50  0001 C CNN
F 3 "~" H 6300 4550 50  0001 C CNN
	1    6300 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 4250 6550 4250
Wire Wire Line
	6450 4550 6550 4550
Text Label 6550 4250 0    50   ~ 0
TX
Text Label 6550 4550 0    50   ~ 0
RX
$Comp
L Device:R R2
U 1 1 5FF87B20
P 5800 1800
F 0 "R2" H 5870 1846 50  0000 L CNN
F 1 "1k" H 5870 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5730 1800 50  0001 C CNN
F 3 "~" H 5800 1800 50  0001 C CNN
	1    5800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2400 5800 2400
Wire Wire Line
	5800 2400 5800 1950
$Comp
L power:+5V #PWR07
U 1 1 5FF8D02A
P 5800 1550
F 0 "#PWR07" H 5800 1400 50  0001 C CNN
F 1 "+5V" H 5815 1723 50  0000 C CNN
F 2 "" H 5800 1550 50  0001 C CNN
F 3 "" H 5800 1550 50  0001 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1550 5800 1650
$Comp
L Device:C C2
U 1 1 5FFB500E
P 2050 2800
F 0 "C2" V 2300 2800 50  0000 C CNN
F 1 "100nF" V 2200 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2088 2650 50  0001 C CNN
F 3 "~" H 2050 2800 50  0001 C CNN
	1    2050 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 2400 2600 2400
Wire Wire Line
	2600 2400 2600 2650
Wire Wire Line
	2600 2650 2050 2650
$Comp
L power:GND #PWR02
U 1 1 5FFBB497
P 2050 2950
F 0 "#PWR02" H 2050 2700 50  0001 C CNN
F 1 "GND" H 2055 2777 50  0000 C CNN
F 2 "" H 2050 2950 50  0001 C CNN
F 3 "" H 2050 2950 50  0001 C CNN
	1    2050 2950
	1    0    0    -1  
$EndComp
$Sheet
S 1600 5850 900  300 
U 60479334
F0 "USB and Power" 50
F1 "USBandPower.sch" 50
F2 "~RESET" O R 2500 5950 50 
F3 "RX" I L 1600 6050 50 
F4 "TX" O R 2500 6050 50 
$EndSheet
Text Label 2600 5950 0    50   ~ 0
~RESET
Wire Wire Line
	2600 5950 2500 5950
Text Label 1500 6050 2    50   ~ 0
TX
Text Label 2600 6050 0    50   ~ 0
RX
Wire Wire Line
	5450 3900 5250 3900
Wire Wire Line
	5250 4000 5350 4000
Wire Wire Line
	5350 4000 5350 4550
Wire Wire Line
	1600 6050 1500 6050
Wire Wire Line
	2500 6050 2600 6050
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
P 2800 2150
F 0 "Y1" V 2754 2394 50  0000 L CNN
F 1 "FA-238 16.0000MB-C3" V 2500 1800 50  0000 L CNN
F 2 "Britishideas:FA-238" H 2800 2150 50  0001 C CNN
F 3 "~" H 2800 2150 50  0001 C CNN
F 4 "FA-238 16.0000MB-C3" H 2800 2150 50  0001 C CNN "manf#"
	1    2800 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2300 2800 2300
Wire Wire Line
	2600 2000 2800 2000
Connection ~ 2800 2000
Wire Wire Line
	2800 2000 3150 2000
Connection ~ 2800 2300
Wire Wire Line
	2800 2300 3600 2300
Wire Wire Line
	2600 2150 2300 2150
Wire Wire Line
	3000 2150 3100 2150
Wire Wire Line
	3100 2150 3100 2700
Connection ~ 3100 2700
Wire Wire Line
	5450 3900 5450 4250
Wire Wire Line
	5450 4250 6150 4250
Wire Wire Line
	5350 4550 6150 4550
$Sheet
S 4150 5850 900  650 
U 6211F24D
F0 "MPS Stimulator" 50
F1 "MPSStimulator.sch" 50
F2 "IN" I L 4150 5950 50 
F3 "OUT" O R 5050 5950 50 
F4 "MPS-7" O R 5050 6100 50 
F5 "MPS-8" O R 5050 6200 50 
F6 "MPS-10" O R 5050 6300 50 
F7 "MPS-15" O R 5050 6400 50 
$EndSheet
Text Label 4050 5950 2    50   ~ 0
MPS_STIMULUS
Wire Wire Line
	4050 5950 4150 5950
Text Label 5150 5950 0    50   ~ 0
MPS_PULSE
Wire Wire Line
	5150 5950 5050 5950
Text Label 5450 2500 0    50   ~ 0
MPS_STIMULUS
Text Label 5450 3800 0    50   ~ 0
MPS_PULSE
Text Label 5150 6100 0    50   ~ 0
MPS-7
Text Label 5150 6200 0    50   ~ 0
MPS-8
Text Label 5150 6300 0    50   ~ 0
MPS-10
Text Label 5150 6400 0    50   ~ 0
MPS-15
Wire Wire Line
	5150 6400 5050 6400
Wire Wire Line
	5050 6300 5150 6300
Wire Wire Line
	5150 6200 5050 6200
Wire Wire Line
	5050 6100 5150 6100
Wire Wire Line
	5450 2500 5250 2500
Wire Wire Line
	5450 3800 5250 3800
NoConn ~ 5250 2800
NoConn ~ 5250 3000
NoConn ~ 3600 3200
NoConn ~ 3600 3100
NoConn ~ 5250 3500
NoConn ~ 5250 3600
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
P 6850 1850
AR Path="/636A16F7" Ref="D8"  Part="1" 
AR Path="/60479334/636A16F7" Ref="D?"  Part="1" 
F 0 "D8" V 6889 1732 50  0000 R CNN
F 1 "APT1608EC" V 6798 1732 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6850 1850 50  0001 C CNN
F 3 "~" H 6850 1850 50  0001 C CNN
F 4 "APT1608EC" V 6850 1850 50  0001 C CNN "manf#"
	1    6850 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 636A16FD
P 6850 2400
AR Path="/636A16FD" Ref="R29"  Part="1" 
AR Path="/60479334/636A16FD" Ref="R?"  Part="1" 
F 0 "R29" H 6700 2450 50  0000 C CNN
F 1 "150" H 6700 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6780 2400 50  0001 C CNN
F 3 "~" H 6850 2400 50  0001 C CNN
	1    6850 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 2000 6850 2250
Wire Wire Line
	6850 1550 6850 1700
Wire Wire Line
	5250 2900 6850 2900
Wire Wire Line
	6850 2550 6850 2900
NoConn ~ 5250 2700
NoConn ~ 5250 3100
NoConn ~ 5250 3200
NoConn ~ 5250 3300
NoConn ~ 5250 3400
$Comp
L power:+5V #PWR035
U 1 1 636C7830
P 6850 1550
F 0 "#PWR035" H 6850 1400 50  0001 C CNN
F 1 "+5V" H 6865 1723 50  0000 C CNN
F 2 "" H 6850 1550 50  0001 C CNN
F 3 "" H 6850 1550 50  0001 C CNN
	1    6850 1550
	1    0    0    -1  
$EndComp
Text Label 5450 2900 0    50   ~ 0
STATUS
$Comp
L BritishIdeas:BMP390 U4
U 1 1 63612A1B
P 8100 5600
F 0 "U4" H 8100 5550 50  0000 L CNN
F 1 "BMP390" H 8050 6250 50  0000 L CNN
F 2 "Britishideas:LGA-2x2-10-pin" H 8100 5600 50  0001 C CNN
F 3 "" H 8100 5600 50  0001 C CNN
F 4 "BMP390" H 8100 5600 50  0001 C CNN "manf#"
	1    8100 5600
	1    0    0    -1  
$EndComp
Text Label 7800 5100 2    50   ~ 0
SCK
Text Label 7800 5300 2    50   ~ 0
MISO
Text Label 7800 5200 2    50   ~ 0
MOSI
Text Label 7800 5400 2    50   ~ 0
~CS_PRESSURE
Text Label 7800 5500 2    50   ~ 0
INT_PRESSURE
Wire Wire Line
	7800 5500 8000 5500
Wire Wire Line
	8000 5400 7800 5400
Wire Wire Line
	7800 5300 8000 5300
Wire Wire Line
	8000 5200 7800 5200
Wire Wire Line
	7800 5100 8000 5100
Text Label 5450 2600 0    50   ~ 0
~CS_PRESSURE
Wire Wire Line
	5450 2600 5250 2600
Text Label 5450 3700 0    50   ~ 0
INT_PRESSURE
Wire Wire Line
	5450 3700 5250 3700
$Comp
L power:GND #PWR036
U 1 1 63625441
P 8400 6000
F 0 "#PWR036" H 8400 5750 50  0001 C CNN
F 1 "GND" H 8405 5827 50  0000 C CNN
F 2 "" H 8400 6000 50  0001 C CNN
F 3 "" H 8400 6000 50  0001 C CNN
	1    8400 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 6000 8400 5900
Wire Wire Line
	8600 5700 8600 5900
Wire Wire Line
	8600 5900 8500 5900
Connection ~ 8400 5900
Wire Wire Line
	8400 5900 8400 5700
Wire Wire Line
	8500 5700 8500 5900
Connection ~ 8500 5900
Wire Wire Line
	8500 5900 8400 5900
$Comp
L Device:C C17
U 1 1 6362E39E
P 9350 5300
F 0 "C17" V 9600 5300 50  0000 C CNN
F 1 "100nF" V 9500 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9388 5150 50  0001 C CNN
F 3 "~" H 9350 5300 50  0001 C CNN
	1    9350 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 6362EBD1
P 9800 5300
F 0 "C18" V 10050 5300 50  0000 C CNN
F 1 "100nF" V 9950 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9838 5150 50  0001 C CNN
F 3 "~" H 9800 5300 50  0001 C CNN
	1    9800 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 5450 9800 5900
Wire Wire Line
	9800 5900 9350 5900
Connection ~ 8600 5900
Wire Wire Line
	9350 5450 9350 5900
Connection ~ 9350 5900
Wire Wire Line
	9350 5900 8600 5900
Wire Wire Line
	8550 4900 8550 4800
Wire Wire Line
	8550 4800 9350 4800
Wire Wire Line
	9350 4800 9350 5150
Wire Wire Line
	9800 5150 9800 4800
Wire Wire Line
	9800 4800 9350 4800
Connection ~ 9350 4800
Wire Wire Line
	8450 4900 8450 4800
Wire Wire Line
	8450 4800 8550 4800
Connection ~ 8550 4800
$Comp
L power:+3.3V #PWR037
U 1 1 6363EC4A
P 8450 4650
F 0 "#PWR037" H 8450 4500 50  0001 C CNN
F 1 "+3.3V" H 8465 4823 50  0000 C CNN
F 2 "" H 8450 4650 50  0001 C CNN
F 3 "" H 8450 4650 50  0001 C CNN
	1    8450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4650 8450 4800
Connection ~ 8450 4800
$EndSCHEMATC

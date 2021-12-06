EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "MPS Tune-o-Matic"
Date "2021-12-05"
Rev "V1.0"
Comp "(C) andy@britishideas.com 2021"
Comment1 "For Bosch D-Jetronic MPS Type 3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BritishIdeas:ATmega328P U?
U 1 1 5FE91942
P 3000 3400
F 0 "U?" H 3050 3350 50  0000 C CNN
F 1 "ATmega328P" H 4200 3350 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 1750 2700 50  0001 C CNN
F 3 "" H 1750 2700 50  0001 C CNN
F 4 "ATMEGA328P-AUR" H 3000 3400 50  0001 C CNN "manf#"
	1    3000 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5FE92E63
P 6500 1800
F 0 "J?" H 6550 2100 50  0000 R CNN
F 1 "ISP" H 6550 1400 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 6500 1800 50  0001 C CNN
F 3 "~" H 6500 1800 50  0001 C CNN
	1    6500 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 1600 6950 1600
Wire Wire Line
	6700 1700 6950 1700
Wire Wire Line
	6700 1800 6950 1800
Wire Wire Line
	6700 2000 6950 2000
Text Label 6950 2000 0    50   ~ 0
MISO
Wire Wire Line
	4550 1500 4750 1500
Text Label 4750 1500 0    50   ~ 0
MISO
Wire Wire Line
	7350 1900 7350 1150
Wire Wire Line
	6700 1900 7350 1900
$Comp
L power:+5V #PWR?
U 1 1 5FE94D36
P 7350 1150
F 0 "#PWR?" H 7350 1000 50  0001 C CNN
F 1 "+5V" H 7365 1323 50  0000 C CNN
F 2 "" H 7350 1150 50  0001 C CNN
F 3 "" H 7350 1150 50  0001 C CNN
	1    7350 1150
	1    0    0    -1  
$EndComp
Text Label 6950 1800 0    50   ~ 0
SCK
Wire Wire Line
	4550 1400 4750 1400
Text Label 4750 1400 0    50   ~ 0
SCK
Text Label 6950 1700 0    50   ~ 0
MOSI
Wire Wire Line
	4550 1600 4750 1600
Text Label 4750 1600 0    50   ~ 0
MOSI
Text Label 6950 1600 0    50   ~ 0
~RESET
Wire Wire Line
	2900 1400 2800 1400
Text Label 2550 1400 0    50   ~ 0
~RESET
Wire Wire Line
	7250 1500 7250 2100
Wire Wire Line
	6700 1500 7250 1500
$Comp
L power:GND #PWR?
U 1 1 5FE95B1A
P 7250 2100
F 0 "#PWR?" H 7250 1850 50  0001 C CNN
F 1 "GND" H 7255 1927 50  0000 C CNN
F 2 "" H 7250 2100 50  0001 C CNN
F 3 "" H 7250 2100 50  0001 C CNN
	1    7250 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE95CF7
P 2800 1100
F 0 "R?" H 2870 1146 50  0000 L CNN
F 1 "1K" H 2870 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2730 1100 50  0001 C CNN
F 3 "~" H 2800 1100 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1250 2800 1400
Connection ~ 2800 1400
Wire Wire Line
	2800 1400 2550 1400
Wire Wire Line
	2800 950  2800 850 
$Comp
L power:+5V #PWR?
U 1 1 5FE96904
P 2800 850
F 0 "#PWR?" H 2800 700 50  0001 C CNN
F 1 "+5V" H 2815 1023 50  0000 C CNN
F 2 "" H 2800 850 50  0001 C CNN
F 3 "" H 2800 850 50  0001 C CNN
	1    2800 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1500 2450 1500
Wire Wire Line
	2450 1500 2450 1300
$Comp
L Device:C C?
U 1 1 5FE98587
P 1750 1300
F 0 "C?" V 1700 1400 50  0000 C CNN
F 1 "18pF" V 1700 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1788 1150 50  0001 C CNN
F 3 "~" H 1750 1300 50  0001 C CNN
	1    1750 1300
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FE98E8C
P 1750 1600
F 0 "C?" V 2000 1600 50  0000 C CNN
F 1 "18pF" V 1900 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1788 1450 50  0001 C CNN
F 3 "~" H 1750 1600 50  0001 C CNN
	1    1750 1600
	0    -1   1    0   
$EndComp
Wire Wire Line
	1600 1300 1600 1450
Wire Wire Line
	1600 1450 1350 1450
Wire Wire Line
	1350 1450 1350 1600
Connection ~ 1600 1450
Wire Wire Line
	1600 1450 1600 1600
$Comp
L power:GND #PWR?
U 1 1 5FE9B28C
P 1350 1600
F 0 "#PWR?" H 1350 1350 50  0001 C CNN
F 1 "GND" H 1355 1427 50  0000 C CNN
F 2 "" H 1350 1600 50  0001 C CNN
F 3 "" H 1350 1600 50  0001 C CNN
	1    1350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1900 2750 1900
Wire Wire Line
	2750 1900 2750 2000
Wire Wire Line
	2750 2000 2900 2000
Wire Wire Line
	2750 2000 2750 2100
Wire Wire Line
	2750 2100 2900 2100
Connection ~ 2750 2000
Wire Wire Line
	2750 2000 2400 2000
Wire Wire Line
	2400 2000 2400 2100
$Comp
L power:GND #PWR?
U 1 1 5FE9CC49
P 2400 2100
F 0 "#PWR?" H 2400 1850 50  0001 C CNN
F 1 "GND" H 2405 1927 50  0000 C CNN
F 2 "" H 2400 2100 50  0001 C CNN
F 3 "" H 2400 2100 50  0001 C CNN
	1    2400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1800 2150 1800
Wire Wire Line
	2150 1800 2150 2400
Wire Wire Line
	2900 2200 2550 2200
Wire Wire Line
	2550 2200 2550 2300
Wire Wire Line
	2550 2400 2150 2400
Wire Wire Line
	2900 2300 2550 2300
Connection ~ 2550 2300
Wire Wire Line
	2550 2300 2550 2400
Wire Wire Line
	2150 2400 1900 2400
Wire Wire Line
	1900 2400 1900 2300
Connection ~ 2150 2400
$Comp
L power:+5V #PWR?
U 1 1 5FE9F8D3
P 1900 2300
F 0 "#PWR?" H 1900 2150 50  0001 C CNN
F 1 "+5V" H 1915 2473 50  0000 C CNN
F 2 "" H 1900 2300 50  0001 C CNN
F 3 "" H 1900 2300 50  0001 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEA003C
P 2150 2650
F 0 "C?" V 2400 2650 50  0000 C CNN
F 1 "1uF" V 2300 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2188 2500 50  0001 C CNN
F 3 "~" H 2150 2650 50  0001 C CNN
	1    2150 2650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEA0A8C
P 1700 2650
F 0 "C?" V 1950 2650 50  0000 C CNN
F 1 "1uF" V 1850 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1738 2500 50  0001 C CNN
F 3 "~" H 1700 2650 50  0001 C CNN
	1    1700 2650
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5FEA144B
P 1150 2650
F 0 "C?" V 1300 2600 50  0000 L CNN
F 1 "4.7uF e" V 1000 2500 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 1188 2500 50  0001 C CNN
F 3 "~" H 1150 2650 50  0001 C CNN
	1    1150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2400 2150 2500
Wire Wire Line
	2150 2500 1700 2500
Connection ~ 2150 2500
Wire Wire Line
	1700 2500 1150 2500
Connection ~ 1700 2500
Wire Wire Line
	1150 2800 1700 2800
Wire Wire Line
	1700 2800 2150 2800
Connection ~ 1700 2800
$Comp
L power:GND #PWR?
U 1 1 5FEA57C4
P 1700 3000
F 0 "#PWR?" H 1700 2750 50  0001 C CNN
F 1 "GND" H 1705 2827 50  0000 C CNN
F 2 "" H 1700 3000 50  0001 C CNN
F 3 "" H 1700 3000 50  0001 C CNN
	1    1700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2800 1700 3000
$Comp
L Device:R R?
U 1 1 5FEBD228
P 5600 3550
F 0 "R?" V 5807 3550 50  0000 C CNN
F 1 "1K" V 5716 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5530 3550 50  0001 C CNN
F 3 "~" H 5600 3550 50  0001 C CNN
	1    5600 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FEBDAAE
P 5600 3850
F 0 "R?" V 5807 3850 50  0000 C CNN
F 1 "1K" V 5716 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5530 3850 50  0001 C CNN
F 3 "~" H 5600 3850 50  0001 C CNN
	1    5600 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 3550 5850 3550
Wire Wire Line
	5750 3850 5850 3850
Text Label 5850 3550 0    50   ~ 0
TX
Text Label 5850 3850 0    50   ~ 0
RX
$Comp
L Device:R R?
U 1 1 5FF87B20
P 5100 1100
F 0 "R?" H 5170 1146 50  0000 L CNN
F 1 "1K" H 5170 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 1100 50  0001 C CNN
F 3 "~" H 5100 1100 50  0001 C CNN
	1    5100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1700 5100 1700
Wire Wire Line
	5100 1700 5100 1250
$Comp
L power:+5V #PWR?
U 1 1 5FF8D02A
P 5100 850
F 0 "#PWR?" H 5100 700 50  0001 C CNN
F 1 "+5V" H 5115 1023 50  0000 C CNN
F 2 "" H 5100 850 50  0001 C CNN
F 3 "" H 5100 850 50  0001 C CNN
	1    5100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 850  5100 950 
$Comp
L Device:C C?
U 1 1 5FFB500E
P 1350 2100
F 0 "C?" V 1600 2100 50  0000 C CNN
F 1 "100nF" V 1500 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1388 1950 50  0001 C CNN
F 3 "~" H 1350 2100 50  0001 C CNN
	1    1350 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 1700 1900 1700
Wire Wire Line
	1900 1700 1900 1950
Wire Wire Line
	1900 1950 1350 1950
$Comp
L power:GND #PWR?
U 1 1 5FFBB497
P 1350 2250
F 0 "#PWR?" H 1350 2000 50  0001 C CNN
F 1 "GND" H 1355 2077 50  0000 C CNN
F 2 "" H 1350 2250 50  0001 C CNN
F 3 "" H 1350 2250 50  0001 C CNN
	1    1350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2200 4750 2200
Text Label 4750 2200 0    50   ~ 0
STATUS
$Comp
L Device:LED D?
U 1 1 6003C913
P 9350 1500
F 0 "D?" V 9389 1382 50  0000 R CNN
F 1 "RED" V 9298 1382 50  0000 R CNN
F 2 "LED_SMD:LED_PLCC-2" H 9350 1500 50  0001 C CNN
F 3 "~" H 9350 1500 50  0001 C CNN
	1    9350 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6003D307
P 9000 1800
F 0 "R?" V 8793 1800 50  0000 C CNN
F 1 "1K" V 8884 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8930 1800 50  0001 C CNN
F 3 "~" H 9000 1800 50  0001 C CNN
	1    9000 1800
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6003D830
P 9350 1350
F 0 "#PWR?" H 9350 1200 50  0001 C CNN
F 1 "+5V" H 9365 1523 50  0000 C CNN
F 2 "" H 9350 1350 50  0001 C CNN
F 3 "" H 9350 1350 50  0001 C CNN
	1    9350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1650 9350 1800
Wire Wire Line
	9350 1800 9150 1800
Wire Wire Line
	8850 1800 8350 1800
Text Label 8350 1800 0    50   ~ 0
STATUS
$Sheet
S 1550 4650 900  300 
U 60479334
F0 "USB and Power" 50
F1 "USBandPower.sch" 50
F2 "~RESET" O R 2450 4750 50 
F3 "RX" I L 1550 4850 50 
F4 "TX" O R 2450 4850 50 
$EndSheet
Text Label 2550 4750 0    50   ~ 0
~RESET
Wire Wire Line
	2550 4750 2450 4750
Text Label 850  4850 0    50   ~ 0
TX
Text Label 2550 4850 0    50   ~ 0
RX
Wire Wire Line
	4550 1800 4750 1800
Wire Wire Line
	4550 1900 4750 1900
Wire Wire Line
	4550 2300 4750 2300
Wire Wire Line
	4550 2400 4750 2400
Wire Wire Line
	4750 3200 4550 3200
Wire Wire Line
	4550 3300 4650 3300
Wire Wire Line
	4650 3300 4650 3850
$Sheet
S 1550 5300 1650 500 
U 60517480
F0 "Temperature" 50
F1 "Temperature.sch" 50
F2 "SCK" I L 1550 5400 50 
F3 "~AIRTEMP_CS" I L 1550 5500 50 
F4 "MOSI" I L 1550 5600 50 
F5 "MISO" O R 3200 5400 50 
F6 "ECU_AIRTEMP" O R 3200 5500 50 
$EndSheet
Wire Wire Line
	1550 4850 850  4850
Wire Wire Line
	2450 4850 2550 4850
Wire Wire Line
	1550 5400 850  5400
Wire Wire Line
	1550 5500 850  5500
Wire Wire Line
	1550 5600 850  5600
Wire Wire Line
	3200 5400 3300 5400
Text Label 850  5400 0    50   ~ 0
SCK
Text Label 850  5600 0    50   ~ 0
MOSI
Text Label 3300 5400 0    50   ~ 0
MISO
Text Label 4500 5500 2    50   ~ 0
ECU_AIRTEMP
Text Label 850  5500 0    50   ~ 0
~AIRTEMP_CS
Text Label 4750 2000 0    50   ~ 0
~AIRTEMP_CS
Wire Wire Line
	4550 2000 4750 2000
Wire Wire Line
	4550 2100 4750 2100
Wire Wire Line
	4550 2500 4750 2500
Wire Wire Line
	4550 2700 4750 2700
Wire Wire Line
	4550 2800 4750 2800
Wire Wire Line
	4550 3000 4750 3000
Wire Wire Line
	4550 3100 4750 3100
Wire Wire Line
	4550 2900 4750 2900
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 6044C452
P 9100 2900
F 0 "J?" H 9180 2892 50  0000 L CNN
F 1 "MPS" H 9180 2801 50  0000 L CNN
F 2 "Britishideas:PhoenixContact_COMBICON_PT_4" H 9100 2900 50  0001 C CNN
F 3 "~" H 9100 2900 50  0001 C CNN
F 4 "1935792" H 9100 2900 50  0001 C CNN "manf#"
	1    9100 2900
	1    0    0    -1  
$EndComp
Text Label 8550 2800 0    50   ~ 0
MPS-7
Text Label 8550 3100 0    50   ~ 0
MPS-15
Text Label 8550 3000 0    50   ~ 0
MPS-10
Text Label 8550 2900 0    50   ~ 0
MPS-8
Wire Wire Line
	8550 3100 8900 3100
Wire Wire Line
	8900 3000 8550 3000
Wire Wire Line
	8550 2900 8900 2900
Wire Wire Line
	8900 2800 8550 2800
Text Notes 8750 2650 0    50   ~ 0
7 - grey/green\n8 - grey/blue\n10 - grey/red\n15 - grey/black
Wire Wire Line
	4550 2600 4750 2600
$Comp
L Device:Crystal_GND24 Y?
U 1 1 605627C0
P 2100 1450
F 0 "Y?" V 2054 1694 50  0000 L CNN
F 1 "FA-238 16.0000MB-C3" V 1800 1100 50  0000 L CNN
F 2 "Britishideas:FA-238" H 2100 1450 50  0001 C CNN
F 3 "~" H 2100 1450 50  0001 C CNN
F 4 "FA-238 16.0000MB-C3" H 2100 1450 50  0001 C CNN "manf#"
	1    2100 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 1600 2100 1600
Wire Wire Line
	1900 1300 2100 1300
Connection ~ 2100 1300
Wire Wire Line
	2100 1300 2450 1300
Connection ~ 2100 1600
Wire Wire Line
	2100 1600 2900 1600
Wire Wire Line
	1900 1450 1600 1450
Wire Wire Line
	2300 1450 2400 1450
Wire Wire Line
	2400 1450 2400 2000
Connection ~ 2400 2000
$Comp
L power:+12V #PWR?
U 1 1 606CBA90
P 9350 3900
AR Path="/606CBA90" Ref="#PWR?"  Part="1" 
AR Path="/60479334/606CBA90" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 3750 50  0001 C CNN
F 1 "+12V" H 9365 4073 50  0000 C CNN
F 2 "" H 9350 3900 50  0001 C CNN
F 3 "" H 9350 3900 50  0001 C CNN
	1    9350 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606CBA96
P 9350 3950
AR Path="/606CBA96" Ref="#FLG?"  Part="1" 
AR Path="/60479334/606CBA96" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 9350 4025 50  0001 C CNN
F 1 "PWR_FLAG" V 9350 4078 50  0000 L CNN
F 2 "" H 9350 3950 50  0001 C CNN
F 3 "~" H 9350 3950 50  0001 C CNN
	1    9350 3950
	0    1    -1   0   
$EndComp
Wire Wire Line
	9350 3950 9350 3900
Connection ~ 9350 3950
Wire Wire Line
	9150 4350 9450 4350
Wire Wire Line
	9450 4450 9150 4450
Wire Wire Line
	9150 4550 9450 4550
Wire Wire Line
	9450 4650 9150 4650
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 607499F9
P 7850 4050
F 0 "J?" H 7930 4042 50  0000 L CNN
F 1 "12V IN" H 7930 3951 50  0000 L CNN
F 2 "Britishideas:PhoenixContact_COMBICON_MKDSN_2" H 7850 4050 50  0001 C CNN
F 3 "~" H 7850 4050 50  0001 C CNN
F 4 "1729018" H 7850 4050 50  0001 C CNN "manf#"
	1    7850 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	8050 3950 9350 3950
$Comp
L power:GND #PWR?
U 1 1 60774D44
P 8100 4250
AR Path="/60774D44" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60774D44" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 4000 50  0001 C CNN
F 1 "GND" H 8105 4077 50  0000 C CNN
F 2 "" H 8100 4250 50  0001 C CNN
F 3 "" H 8100 4250 50  0001 C CNN
	1    8100 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 4250 8100 4050
Wire Wire Line
	8100 4050 8050 4050
Text Notes 7600 3800 0    50   ~ 0
Min 3A connector
Wire Wire Line
	4750 3200 4750 3550
Wire Wire Line
	4750 3550 5450 3550
Wire Wire Line
	4650 3850 5450 3850
Text Label 9150 4350 2    50   ~ 0
MPS-7
Text Label 9150 4450 2    50   ~ 0
MPS-8
Text Label 9150 4550 2    50   ~ 0
MPS-10
Text Label 9150 4650 2    50   ~ 0
MPS-15
Text Label 4750 1800 0    50   ~ 0
SPEED_SENSOR_PULSE
Text Label 4750 1900 0    50   ~ 0
BASE_INJECTOR_PULSE
$Sheet
S 4750 5400 1500 650 
U 60469920
F0 "MPS Driver" 50
F1 "MPS Driver.sch" 50
F2 "ECU_AIRTEMP" I L 4750 5500 50 
F3 "SPEED_SENSOR_PULSE" I L 4750 5600 50 
F4 "BASE_INJECTOR_PULSE" I L 4750 5700 50 
F5 "MPS-7" B R 6250 5500 50 
F6 "MPS-8" B R 6250 5600 50 
F7 "MPS-10" B R 6250 5700 50 
F8 "MPS-15" B R 6250 5800 50 
$EndSheet
Wire Wire Line
	6250 5500 6700 5500
Wire Wire Line
	3200 5500 4750 5500
Text Label 4500 5600 2    50   ~ 0
SPEED_SENSOR_PULSE
Text Label 4500 5700 2    50   ~ 0
BASE_INJECTOR_PULSE
Wire Wire Line
	4500 5700 4750 5700
Wire Wire Line
	4750 5600 4500 5600
Text Label 6700 5500 0    50   ~ 0
MPS-7
Text Label 6700 5600 0    50   ~ 0
MPS-8
Text Label 6700 5700 0    50   ~ 0
MPS-10
Text Label 6700 5800 0    50   ~ 0
MPS-15
Wire Wire Line
	6700 5800 6250 5800
Wire Wire Line
	6250 5700 6700 5700
Wire Wire Line
	6700 5600 6250 5600
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61B17908
P 9650 4450
F 0 "J?" H 9730 4442 50  0000 L CNN
F 1 "MPS BREAKOUT" H 9730 4351 50  0000 L CNN
F 2 "" H 9650 4450 50  0001 C CNN
F 3 "~" H 9650 4450 50  0001 C CNN
	1    9650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3950 9350 4250
Wire Wire Line
	9350 4250 9450 4250
Wire Wire Line
	9450 4750 9300 4750
Wire Wire Line
	9300 4750 9300 4950
$Comp
L power:GND #PWR?
U 1 1 606CB304
P 9300 4950
AR Path="/606CB304" Ref="#PWR?"  Part="1" 
AR Path="/60479334/606CB304" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9300 4700 50  0001 C CNN
F 1 "GND" H 9305 4777 50  0000 C CNN
F 2 "" H 9300 4950 50  0001 C CNN
F 3 "" H 9300 4950 50  0001 C CNN
	1    9300 4950
	-1   0    0    -1  
$EndComp
Text Notes 8800 3300 0    50   ~ 0
Min 3A connector
Text Notes 12100 3150 0    50   ~ 0
Add 10V regulator\n
$EndSCHEMATC

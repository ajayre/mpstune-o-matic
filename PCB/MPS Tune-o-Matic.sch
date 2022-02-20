EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "MPS Tune-o-Matic"
Date "2022-02-19"
Rev "V1.0"
Comp "(C) andy@britishideas.com 2022"
Comment1 "For Bosch D-Jetronic MPS Type 3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BritishIdeas:ATmega328P U?
U 1 1 5FE91942
P 3700 4100
F 0 "U?" H 3750 4050 50  0000 C CNN
F 1 "ATmega328P" H 4900 4050 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 2450 3400 50  0001 C CNN
F 3 "" H 2450 3400 50  0001 C CNN
F 4 "ATMEGA328P-AUR" H 3700 4100 50  0001 C CNN "manf#"
	1    3700 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5FE92E63
P 9200 1950
F 0 "J?" H 9250 2250 50  0000 R CNN
F 1 "ISP" H 9250 1550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9200 1950 50  0001 C CNN
F 3 "~" H 9200 1950 50  0001 C CNN
	1    9200 1950
	1    0    0    1   
$EndComp
Wire Wire Line
	9000 1750 8750 1750
Wire Wire Line
	9000 1850 8750 1850
Wire Wire Line
	9000 1950 8750 1950
Wire Wire Line
	9000 2150 8750 2150
Text Label 8750 2150 2    50   ~ 0
MISO
Wire Wire Line
	5250 2200 5450 2200
Text Label 5450 2200 0    50   ~ 0
MISO
Wire Wire Line
	8350 2050 8350 1300
Wire Wire Line
	9000 2050 8350 2050
$Comp
L power:+5V #PWR?
U 1 1 5FE94D36
P 8350 1300
F 0 "#PWR?" H 8350 1150 50  0001 C CNN
F 1 "+5V" H 8365 1473 50  0000 C CNN
F 2 "" H 8350 1300 50  0001 C CNN
F 3 "" H 8350 1300 50  0001 C CNN
	1    8350 1300
	-1   0    0    -1  
$EndComp
Text Label 8750 1950 2    50   ~ 0
SCK
Wire Wire Line
	5250 2100 5450 2100
Text Label 5450 2100 0    50   ~ 0
SCK
Text Label 8750 1850 2    50   ~ 0
MOSI
Wire Wire Line
	5250 2300 5450 2300
Text Label 5450 2300 0    50   ~ 0
MOSI
Text Label 8750 1750 2    50   ~ 0
~RESET
Wire Wire Line
	3600 2100 3500 2100
Text Label 3250 2100 0    50   ~ 0
~RESET
Wire Wire Line
	8450 1650 8450 2250
Wire Wire Line
	9000 1650 8450 1650
$Comp
L power:GND #PWR?
U 1 1 5FE95B1A
P 8450 2250
F 0 "#PWR?" H 8450 2000 50  0001 C CNN
F 1 "GND" H 8455 2077 50  0000 C CNN
F 2 "" H 8450 2250 50  0001 C CNN
F 3 "" H 8450 2250 50  0001 C CNN
	1    8450 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE95CF7
P 3500 1800
F 0 "R?" H 3570 1846 50  0000 L CNN
F 1 "1K" H 3570 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3430 1800 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5FE96904
P 3500 1550
F 0 "#PWR?" H 3500 1400 50  0001 C CNN
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
L Device:C C?
U 1 1 5FE98587
P 2450 2000
F 0 "C?" V 2400 2100 50  0000 C CNN
F 1 "18pF" V 2400 1850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 1850 50  0001 C CNN
F 3 "~" H 2450 2000 50  0001 C CNN
	1    2450 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FE98E8C
P 2450 2300
F 0 "C?" V 2700 2300 50  0000 C CNN
F 1 "18pF" V 2600 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 2150 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FE9B28C
P 2050 2300
F 0 "#PWR?" H 2050 2050 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FE9CC49
P 3100 2800
F 0 "#PWR?" H 3100 2550 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5FE9F8D3
P 2600 3000
F 0 "#PWR?" H 2600 2850 50  0001 C CNN
F 1 "+5V" H 2615 3173 50  0000 C CNN
F 2 "" H 2600 3000 50  0001 C CNN
F 3 "" H 2600 3000 50  0001 C CNN
	1    2600 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEA003C
P 2850 3350
F 0 "C?" V 3100 3350 50  0000 C CNN
F 1 "1uF" V 3000 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 3200 50  0001 C CNN
F 3 "~" H 2850 3350 50  0001 C CNN
	1    2850 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEA0A8C
P 2400 3350
F 0 "C?" V 2650 3350 50  0000 C CNN
F 1 "1uF" V 2550 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2438 3200 50  0001 C CNN
F 3 "~" H 2400 3350 50  0001 C CNN
	1    2400 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5FEA144B
P 1850 3350
F 0 "C?" V 2000 3300 50  0000 L CNN
F 1 "4.7uF e" V 1700 3200 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 1888 3200 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FEA57C4
P 2400 3700
F 0 "#PWR?" H 2400 3450 50  0001 C CNN
F 1 "GND" H 2405 3527 50  0000 C CNN
F 2 "" H 2400 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3500 2400 3700
$Comp
L Device:R R?
U 1 1 5FEBD228
P 6300 4250
F 0 "R?" V 6507 4250 50  0000 C CNN
F 1 "1K" V 6416 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6230 4250 50  0001 C CNN
F 3 "~" H 6300 4250 50  0001 C CNN
	1    6300 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FEBDAAE
P 6300 4550
F 0 "R?" V 6507 4550 50  0000 C CNN
F 1 "1K" V 6416 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6230 4550 50  0001 C CNN
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
L Device:R R?
U 1 1 5FF87B20
P 5800 1800
F 0 "R?" H 5870 1846 50  0000 L CNN
F 1 "1K" H 5870 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5730 1800 50  0001 C CNN
F 3 "~" H 5800 1800 50  0001 C CNN
	1    5800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2400 5800 2400
Wire Wire Line
	5800 2400 5800 1950
$Comp
L power:+5V #PWR?
U 1 1 5FF8D02A
P 5800 1550
F 0 "#PWR?" H 5800 1400 50  0001 C CNN
F 1 "+5V" H 5815 1723 50  0000 C CNN
F 2 "" H 5800 1550 50  0001 C CNN
F 3 "" H 5800 1550 50  0001 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1550 5800 1650
$Comp
L Device:C C?
U 1 1 5FFB500E
P 2050 2800
F 0 "C?" V 2300 2800 50  0000 C CNN
F 1 "100nF" V 2200 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2088 2650 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FFBB497
P 2050 2950
F 0 "#PWR?" H 2050 2700 50  0001 C CNN
F 1 "GND" H 2055 2777 50  0000 C CNN
F 2 "" H 2050 2950 50  0001 C CNN
F 3 "" H 2050 2950 50  0001 C CNN
	1    2050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2900 5450 2900
$Sheet
S 1150 6450 900  300 
U 60479334
F0 "USB and Power" 50
F1 "USBandPower.sch" 50
F2 "~RESET" O R 2050 6550 50 
F3 "RX" I L 1150 6650 50 
F4 "TX" O R 2050 6650 50 
$EndSheet
Text Label 2150 6550 0    50   ~ 0
~RESET
Wire Wire Line
	2150 6550 2050 6550
Text Label 1050 6650 2    50   ~ 0
TX
Text Label 2150 6650 0    50   ~ 0
RX
Wire Wire Line
	5250 3100 5450 3100
Wire Wire Line
	5450 3900 5250 3900
Wire Wire Line
	5250 4000 5350 4000
Wire Wire Line
	5350 4000 5350 4550
Wire Wire Line
	1150 6650 1050 6650
Wire Wire Line
	2050 6650 2150 6650
Wire Wire Line
	5250 3200 5450 3200
Wire Wire Line
	5250 3400 5450 3400
Text Label 9850 4850 2    50   ~ 0
MPS-7
Text Label 9850 5150 2    50   ~ 0
MPS-15
Text Label 9850 5050 2    50   ~ 0
MPS-10
Text Label 9850 4950 2    50   ~ 0
MPS-8
Wire Wire Line
	9850 5150 10000 5150
Wire Wire Line
	9850 4950 10000 4950
Wire Wire Line
	10000 4850 9850 4850
Text Notes 9950 5700 0    50   ~ 0
7 - grey/green\n8 - grey/blue\n10 - grey/red\n15 - grey/black
Wire Wire Line
	5250 3300 5450 3300
$Comp
L Device:Crystal_GND24 Y?
U 1 1 605627C0
P 2800 2150
F 0 "Y?" V 2754 2394 50  0000 L CNN
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
Wire Wire Line
	9850 5050 10000 5050
Text Label 5450 2900 0    50   ~ 0
~LCD_CS
Text Label 5450 2600 0    50   ~ 0
~SD_CS
Text Label 5450 3300 0    50   ~ 0
LCD_DC_X+
Text Label 5450 3400 0    50   ~ 0
Y-
Text Label 5450 3100 0    50   ~ 0
Y+
Text Label 5450 3200 0    50   ~ 0
X-
Text Label 10350 2050 2    50   ~ 0
~LCD_CS
Text Label 10350 2450 2    50   ~ 0
SCK
Text Label 10350 2350 2    50   ~ 0
MISO
Text Label 10350 2150 2    50   ~ 0
MOSI
Text Label 10350 1850 2    50   ~ 0
Y+
Text Label 10350 1450 2    50   ~ 0
~SD_CS
Text Label 10350 1550 2    50   ~ 0
X-
Text Label 10350 1750 2    50   ~ 0
LCD_DC_X+
Text Label 10350 1650 2    50   ~ 0
Y-
$Comp
L power:+5V #PWR?
U 1 1 61AFDEC3
P 9800 1200
F 0 "#PWR?" H 9800 1050 50  0001 C CNN
F 1 "+5V" H 9815 1373 50  0000 C CNN
F 2 "" H 9800 1200 50  0001 C CNN
F 3 "" H 9800 1200 50  0001 C CNN
	1    9800 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AFE287
P 9800 2900
F 0 "#PWR?" H 9800 2650 50  0001 C CNN
F 1 "GND" H 9805 2727 50  0000 C CNN
F 2 "" H 9800 2900 50  0001 C CNN
F 3 "" H 9800 2900 50  0001 C CNN
	1    9800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2900 9800 2650
Wire Wire Line
	9800 2650 10350 2650
Text Label 10350 1950 2    50   ~ 0
LCD_DC_X+
Wire Wire Line
	9800 2550 10350 2550
Wire Wire Line
	5450 2600 5250 2600
Text Notes 6050 3250 0    50   ~ 0
Y+ and X- are analog\nY- and X+ are digital
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 61AF45AA
P 10550 1750
F 0 "J?" H 10630 1742 50  0000 L CNN
F 1 "UI1" H 10630 1651 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B8B-PH-K_1x08_P2.00mm_Vertical" H 10550 1750 50  0001 C CNN
F 3 "~" H 10550 1750 50  0001 C CNN
	1    10550 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 61AF519E
P 10550 2450
F 0 "J?" H 10630 2442 50  0000 L CNN
F 1 "UI2" H 10630 2351 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 10550 2450 50  0001 C CNN
F 3 "~" H 10550 2450 50  0001 C CNN
	1    10550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1200 9800 2550
$Sheet
S 3700 6450 900  650 
U 6211F24D
F0 "MPS Stimulator" 50
F1 "MPSStimulator.sch" 50
F2 "IN" I L 3700 6550 50 
F3 "OUT" O R 4600 6550 50 
F4 "MPS-7" O R 4600 6700 50 
F5 "MPS-8" O R 4600 6800 50 
F6 "MPS-10" O R 4600 6900 50 
F7 "MPS-15" O R 4600 7000 50 
$EndSheet
$Comp
L Connector:DB9_Male J?
U 1 1 6213A557
P 10300 4750
F 0 "J?" H 10480 4796 50  0000 L CNN
F 1 "DB9_Male" H 10480 4705 50  0000 L CNN
F 2 "" H 10300 4750 50  0001 C CNN
F 3 " ~" H 10300 4750 50  0001 C CNN
	1    10300 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621455EE
P 9450 5300
AR Path="/621455EE" Ref="#PWR?"  Part="1" 
AR Path="/60479334/621455EE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9450 5050 50  0001 C CNN
F 1 "GND" H 9455 5127 50  0000 C CNN
F 2 "" H 9450 5300 50  0001 C CNN
F 3 "" H 9450 5300 50  0001 C CNN
	1    9450 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 4150 9450 4350
Wire Wire Line
	9450 4350 10000 4350
Wire Wire Line
	9450 5300 9450 4750
Wire Wire Line
	9450 4750 10000 4750
$Comp
L power:+5V #PWR?
U 1 1 6214D24D
P 9450 4150
F 0 "#PWR?" H 9450 4000 50  0001 C CNN
F 1 "+5V" H 9465 4323 50  0000 C CNN
F 2 "" H 9450 4150 50  0001 C CNN
F 3 "" H 9450 4150 50  0001 C CNN
	1    9450 4150
	-1   0    0    -1  
$EndComp
Text Label 3600 6550 2    50   ~ 0
MPS_STIMULUS
Wire Wire Line
	3600 6550 3700 6550
Text Label 4700 6550 0    50   ~ 0
MPS_PULSE
Wire Wire Line
	4700 6550 4600 6550
Text Label 5450 2500 0    50   ~ 0
MPS_STIMULUS
Text Label 5450 3800 0    50   ~ 0
MPS_PULSE
Text Label 4700 6700 0    50   ~ 0
MPS-7
Text Label 4700 6800 0    50   ~ 0
MPS-8
Text Label 4700 6900 0    50   ~ 0
MPS-10
Text Label 4700 7000 0    50   ~ 0
MPS-15
Wire Wire Line
	4700 7000 4600 7000
Wire Wire Line
	4600 6900 4700 6900
Wire Wire Line
	4700 6800 4600 6800
Wire Wire Line
	4600 6700 4700 6700
Text Label 9850 4450 2    50   ~ 0
IO0
Text Label 9850 4550 2    50   ~ 0
IO1
Text Label 9850 4650 2    50   ~ 0
IO2
Wire Wire Line
	9850 4650 10000 4650
Wire Wire Line
	10000 4550 9850 4550
Wire Wire Line
	9850 4450 10000 4450
Text Label 5450 3700 0    50   ~ 0
IO0
Text Label 5450 3600 0    50   ~ 0
IO1
Text Label 5450 3500 0    50   ~ 0
IO2
Wire Wire Line
	5450 2500 5250 2500
Wire Wire Line
	5450 3800 5250 3800
Wire Wire Line
	5450 3500 5250 3500
Wire Wire Line
	5250 3600 5450 3600
Wire Wire Line
	5450 3700 5250 3700
NoConn ~ 5250 2700
NoConn ~ 5250 2800
NoConn ~ 5250 3000
NoConn ~ 3600 3200
NoConn ~ 3600 3100
$EndSCHEMATC

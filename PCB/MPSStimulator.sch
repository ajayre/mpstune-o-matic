EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Simulation_SPICE:DIODE D?
U 1 1 62457901
P 3900 6250
F 0 "D?" H 3850 6150 50  0000 L CNN
F 1 "DIODE" V 3945 6330 50  0001 L CNN
F 2 "" H 3900 6250 50  0001 C CNN
F 3 "~" H 3900 6250 50  0001 C CNN
F 4 "Y" H 3900 6250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 3900 6250 50  0001 L CNN "Spice_Primitive"
	1    3900 6250
	-1   0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D?
U 1 1 62458057
P 4450 6250
F 0 "D?" H 4400 6150 50  0000 L CNN
F 1 "DIODE" V 4495 6330 50  0001 L CNN
F 2 "" H 4450 6250 50  0001 C CNN
F 3 "~" H 4450 6250 50  0001 C CNN
F 4 "Y" H 4450 6250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 4450 6250 50  0001 L CNN "Spice_Primitive"
	1    4450 6250
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 6250 4200 6250
Wire Wire Line
	4200 6500 4200 6250
Connection ~ 4200 6250
Wire Wire Line
	4200 6250 4300 6250
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 624A5495
P 5000 6250
F 0 "Q?" H 5190 6296 50  0000 L CNN
F 1 "BCY58" H 5190 6205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5200 6175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5000 6250 50  0001 L CNN
F 4 "Center K" H 5000 6250 50  0001 C CNN "Notes"
	1    5000 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6250 4700 6250
$Comp
L Device:R R?
U 1 1 624C0ACD
P 4700 6750
F 0 "R?" H 4500 6800 50  0000 L CNN
F 1 "180k" H 4450 6700 50  0000 L CNN
F 2 "" V 4740 6740 50  0001 C CNN
F 3 "~" H 4700 6750 50  0001 C CNN
F 4 "" H 4700 6750 50  0001 C CNN "Notes"
	1    4700 6750
	1    0    0    1   
$EndComp
Wire Wire Line
	4700 6600 4700 6550
Connection ~ 4700 6250
Wire Wire Line
	4700 6250 4600 6250
Wire Wire Line
	4700 6900 4700 7100
Wire Wire Line
	4700 7100 5100 7100
Wire Wire Line
	5100 6450 5100 7100
Connection ~ 5100 7100
$Comp
L Device:R R?
U 1 1 625125B1
P 5400 6550
F 0 "R?" V 5500 6600 50  0000 L CNN
F 1 "300" V 5500 6400 50  0000 L CNN
F 2 "" V 5440 6540 50  0001 C CNN
F 3 "~" H 5400 6550 50  0001 C CNN
F 4 "" H 5400 6550 50  0001 C CNN "Notes"
	1    5400 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 6550 4700 6550
Connection ~ 4700 6550
Wire Wire Line
	4700 6550 4700 6250
$Comp
L Device:C C?
U 1 1 6252E59E
P 5800 6250
F 0 "C?" H 5600 6300 50  0000 L CNN
F 1 "1.0n" H 5550 6200 50  0000 L CNN
F 2 "Right D Line" H 5838 6100 50  0001 C CNN
F 3 "~" H 5800 6250 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 5800 6250 50  0001 C CNN "Notes"
	1    5800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6400 5800 6550
Wire Wire Line
	5800 6550 5550 6550
$Comp
L Device:R R?
U 1 1 6254B02E
P 5400 5800
F 0 "R?" V 5500 5850 50  0000 L CNN
F 1 "2k4" V 5500 5700 50  0000 L CNN
F 2 "" V 5440 5790 50  0001 C CNN
F 3 "~" H 5400 5800 50  0001 C CNN
F 4 "" H 5400 5800 50  0001 C CNN "Notes"
	1    5400 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 5800 5100 5800
Wire Wire Line
	5100 5800 5100 6050
Wire Wire Line
	5550 5800 5800 5800
Wire Wire Line
	5800 5800 5800 6100
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 625847C0
P 6200 5800
F 0 "Q?" H 6390 5846 50  0000 L CNN
F 1 "BCY58" H 6390 5755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 5725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6200 5800 50  0001 L CNN
F 4 "Center K" H 6200 5800 50  0001 C CNN "Notes"
	1    6200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5800 5800 5800
Connection ~ 5800 5800
Wire Wire Line
	6300 6000 6300 7100
Wire Wire Line
	5100 7100 6300 7100
$Comp
L Device:R R?
U 1 1 625BF40D
P 5100 5250
F 0 "R?" H 4900 5300 50  0000 L CNN
F 1 "2k" H 4900 5200 50  0000 L CNN
F 2 "" V 5140 5240 50  0001 C CNN
F 3 "~" H 5100 5250 50  0001 C CNN
F 4 "" H 5100 5250 50  0001 C CNN "Notes"
	1    5100 5250
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 625C0721
P 6300 5250
F 0 "R?" H 6100 5300 50  0000 L CNN
F 1 "1k" H 6100 5200 50  0000 L CNN
F 2 "" V 6340 5240 50  0001 C CNN
F 3 "~" H 6300 5250 50  0001 C CNN
F 4 "" H 6300 5250 50  0001 C CNN "Notes"
	1    6300 5250
	1    0    0    1   
$EndComp
Wire Wire Line
	6300 5400 6300 5550
Wire Wire Line
	5100 5400 5100 5800
Connection ~ 5100 5800
Wire Wire Line
	5100 5100 5100 4650
Wire Wire Line
	5100 4650 6300 4650
Wire Wire Line
	6300 5100 6300 4650
Connection ~ 6300 4650
Connection ~ 6300 5550
Wire Wire Line
	6300 5550 6300 5600
Connection ~ 6300 7100
$Comp
L Device:R R?
U 1 1 6270DFA3
P 3250 4850
F 0 "R?" H 3050 4900 50  0000 L CNN
F 1 "510" H 3050 4800 50  0000 L CNN
F 2 "" V 3290 4840 50  0001 C CNN
F 3 "~" H 3250 4850 50  0001 C CNN
F 4 "" H 3250 4850 50  0001 C CNN "Notes"
	1    3250 4850
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6270E783
P 2900 5100
F 0 "R?" V 3000 5150 50  0000 L CNN
F 1 "2k2" V 3000 5000 50  0000 L CNN
F 2 "" V 2940 5090 50  0001 C CNN
F 3 "~" H 2900 5100 50  0001 C CNN
F 4 "" H 2900 5100 50  0001 C CNN "Notes"
	1    2900 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 4700 3250 4650
Wire Wire Line
	3250 5000 3250 5100
Wire Wire Line
	3250 5100 3050 5100
$Comp
L Simulation_SPICE:DIODE D?
U 1 1 6278C325
P 2450 5100
F 0 "D?" H 2400 5000 50  0000 L CNN
F 1 "DIODE" V 2495 5180 50  0001 L CNN
F 2 "" H 2450 5100 50  0001 C CNN
F 3 "~" H 2450 5100 50  0001 C CNN
F 4 "Y" H 2450 5100 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 2450 5100 50  0001 L CNN "Spice_Primitive"
	1    2450 5100
	1    0    0    1   
$EndComp
Wire Wire Line
	2600 5100 2750 5100
$Comp
L Device:R R?
U 1 1 627AC88D
P 2150 4850
F 0 "R?" H 1950 4900 50  0000 L CNN
F 1 "1k2" H 1950 4800 50  0000 L CNN
F 2 "" V 2190 4840 50  0001 C CNN
F 3 "~" H 2150 4850 50  0001 C CNN
F 4 "" H 2150 4850 50  0001 C CNN "Notes"
	1    2150 4850
	1    0    0    1   
$EndComp
Wire Wire Line
	2150 4700 2150 4650
Wire Wire Line
	2150 4650 3250 4650
Wire Wire Line
	2300 5100 2150 5100
Wire Wire Line
	2150 5100 2150 5000
$Comp
L Device:R R?
U 1 1 627EDB3A
P 1750 5100
F 0 "R?" V 1850 5150 50  0000 L CNN
F 1 "240" V 1850 4950 50  0000 L CNN
F 2 "" V 1790 5090 50  0001 C CNN
F 3 "~" H 1750 5100 50  0001 C CNN
F 4 "" H 1750 5100 50  0001 C CNN "Notes"
	1    1750 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 5100 2150 5100
Connection ~ 2150 5100
Wire Wire Line
	1600 5100 1100 5100
Wire Wire Line
	1100 5100 1100 5350
Wire Wire Line
	1100 7100 1100 5650
Text Notes 1200 5700 0    50   ~ 0
Air temp sensor
Wire Wire Line
	4400 5550 4800 5550
Wire Wire Line
	3600 6250 3750 6250
Wire Wire Line
	8850 5700 9650 5700
Wire Wire Line
	8850 4100 8850 4000
Connection ~ 8850 4100
Wire Wire Line
	8850 4200 8850 4100
Wire Wire Line
	8300 4400 8450 4400
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 6211D288
P 8750 4400
F 0 "Q?" H 8940 4446 50  0000 L CNN
F 1 "BCY58" H 8940 4355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8950 4325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8750 4400 50  0001 L CNN
F 4 "Center K" H 8750 4400 50  0001 C CNN "Notes"
	1    8750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4400 8000 4400
$Comp
L Device:R R?
U 1 1 6213D2E2
P 8150 4400
F 0 "R?" H 8000 4450 50  0000 L CNN
F 1 "20k" H 8000 4350 50  0000 L CNN
F 2 "" V 8190 4390 50  0001 C CNN
F 3 "~" H 8150 4400 50  0001 C CNN
F 4 "" H 8150 4400 50  0001 C CNN "Notes"
	1    8150 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 4600 8850 5700
$Comp
L Device:R R?
U 1 1 6211D27D
P 8850 3850
F 0 "R?" H 8700 3900 50  0000 L CNN
F 1 "2k" H 8700 3800 50  0000 L CNN
F 2 "" V 8890 3840 50  0001 C CNN
F 3 "~" H 8850 3850 50  0001 C CNN
F 4 "" H 8850 3850 50  0001 C CNN "Notes"
	1    8850 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6213E6B1
P 8450 4950
F 0 "R?" H 8300 5000 50  0000 L CNN
F 1 "10k" H 8300 4900 50  0000 L CNN
F 2 "" V 8490 4940 50  0001 C CNN
F 3 "~" H 8450 4950 50  0001 C CNN
F 4 "" H 8450 4950 50  0001 C CNN "Notes"
	1    8450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4800 8450 4400
Connection ~ 8450 4400
Wire Wire Line
	8450 4400 8550 4400
Wire Wire Line
	8450 5100 8450 5700
Wire Wire Line
	8450 5700 8850 5700
Connection ~ 8850 5700
$Comp
L Device:R R?
U 1 1 6214A30B
P 9650 4350
F 0 "R?" H 9500 4400 50  0000 L CNN
F 1 "10k" H 9450 4300 50  0000 L CNN
F 2 "" V 9690 4340 50  0001 C CNN
F 3 "~" H 9650 4350 50  0001 C CNN
F 4 "" H 9650 4350 50  0001 C CNN "Notes"
	1    9650 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6214AC60
P 9650 5050
F 0 "R?" H 9500 5100 50  0000 L CNN
F 1 "12k" H 9450 5000 50  0000 L CNN
F 2 "" V 9690 5040 50  0001 C CNN
F 3 "~" H 9650 5050 50  0001 C CNN
F 4 "" H 9650 5050 50  0001 C CNN "Notes"
	1    9650 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 5200 9650 5700
Wire Wire Line
	9650 4900 9650 4700
Wire Wire Line
	9650 4200 9650 4100
Wire Wire Line
	8850 4100 9650 4100
Wire Wire Line
	10050 4700 9650 4700
Connection ~ 9650 4700
Wire Wire Line
	9650 4700 9650 4500
Wire Wire Line
	7800 2750 7800 3100
Wire Wire Line
	7800 1800 7800 1700
Wire Wire Line
	7800 2250 7800 2450
Connection ~ 7800 2250
Wire Wire Line
	7800 2100 7800 2250
$Comp
L Device:R R?
U 1 1 62182801
P 7800 2600
F 0 "R?" V 7700 2500 50  0000 L CNN
F 1 "1k" V 7900 2500 50  0000 L CNN
F 2 "" V 7840 2590 50  0001 C CNN
F 3 "~" H 7800 2600 50  0001 C CNN
F 4 "" H 7800 2600 50  0001 C CNN "Notes"
	1    7800 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:Varistor RV?
U 1 1 621ABE67
P 7800 1950
F 0 "RV?" H 7903 1996 50  0000 L CNN
F 1 "5k" H 7903 1905 50  0000 L CNN
F 2 "" V 7730 1950 50  0001 C CNN
F 3 "~" H 7800 1950 50  0001 C CNN
	1    7800 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV?
U 1 1 621AEB7C
P 1100 5500
F 0 "RV?" H 1203 5546 50  0000 L CNN
F 1 "1k" H 1203 5455 50  0000 L CNN
F 2 "" V 1030 5500 50  0001 C CNN
F 3 "~" H 1100 5500 50  0001 C CNN
	1    1100 5500
	1    0    0    -1  
$EndComp
Text HLabel 10050 4700 2    50   Output ~ 0
OUT
Text Label 7850 4400 2    50   ~ 0
BASE_PULSE
Text Label 4400 5400 2    50   ~ 0
BASE_PULSE
$Comp
L power:+5V #PWR?
U 1 1 6218C244
P 7800 1700
F 0 "#PWR?" H 7800 1550 50  0001 C CNN
F 1 "+5V" H 7815 1873 50  0000 C CNN
F 2 "" H 7800 1700 50  0001 C CNN
F 3 "" H 7800 1700 50  0001 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
Text Label 8050 2250 0    50   ~ 0
MPS-10
Text Label 3450 5100 0    50   ~ 0
MPS-15
Text Label 4400 5550 2    50   ~ 0
MPS-7
Text Label 3600 6250 2    50   ~ 0
MPS-8
Wire Wire Line
	7800 2250 8050 2250
Text Label 4200 6500 3    50   ~ 0
EDGES
$Comp
L power:GND #PWR?
U 1 1 62196838
P 8850 5900
F 0 "#PWR?" H 8850 5650 50  0001 C CNN
F 1 "GND" H 8855 5727 50  0000 C CNN
F 2 "" H 8850 5900 50  0001 C CNN
F 3 "" H 8850 5900 50  0001 C CNN
	1    8850 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6219C788
P 6300 7300
F 0 "#PWR?" H 6300 7050 50  0001 C CNN
F 1 "GND" H 6305 7127 50  0000 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    6300 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 7300 6300 7100
$Comp
L power:+10V #PWR?
U 1 1 621C0D05
P 6300 4450
F 0 "#PWR?" H 6300 4300 50  0001 C CNN
F 1 "+10V" H 6315 4623 50  0000 C CNN
F 2 "" H 6300 4450 50  0001 C CNN
F 3 "" H 6300 4450 50  0001 C CNN
	1    6300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4450 6300 4650
$Comp
L power:+10V #PWR?
U 1 1 621C645C
P 8850 3550
F 0 "#PWR?" H 8850 3400 50  0001 C CNN
F 1 "+10V" H 8865 3723 50  0000 C CNN
F 2 "" H 8850 3550 50  0001 C CNN
F 3 "" H 8850 3550 50  0001 C CNN
	1    8850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3550 8850 3700
Wire Wire Line
	8850 5900 8850 5700
Connection ~ 4700 7100
Wire Wire Line
	3250 4650 5100 4650
Connection ~ 3250 4650
Connection ~ 5100 4650
Wire Wire Line
	4400 5400 4800 5400
Wire Wire Line
	4800 5400 4800 5550
Connection ~ 4800 5550
Wire Wire Line
	4800 5550 6300 5550
Wire Wire Line
	3250 5100 3450 5100
Connection ~ 3250 5100
$Comp
L Device:R R?
U 1 1 61B7C36B
P 1800 2100
F 0 "R?" H 1650 2150 50  0000 L CNN
F 1 "1k" H 1650 2050 50  0000 L CNN
F 2 "" V 1840 2090 50  0001 C CNN
F 3 "~" H 1800 2100 50  0001 C CNN
F 4 "" H 1800 2100 50  0001 C CNN "Notes"
	1    1800 2100
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 61B7C79E
P 1700 2650
F 0 "Q?" H 1890 2696 50  0000 L CNN
F 1 "BCY58" H 1890 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 2575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1700 2650 50  0001 L CNN
F 4 "Center K" H 1700 2650 50  0001 C CNN "Notes"
	1    1700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2650 1500 2650
Wire Wire Line
	1800 2450 1800 2350
Wire Wire Line
	1800 1550 1800 1950
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 61B8CA77
P 3150 2900
F 0 "Q?" H 3340 2946 50  0000 L CNN
F 1 "BCY58" H 3340 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3350 2825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3150 2900 50  0001 L CNN
F 4 "Center K" H 3150 2900 50  0001 C CNN "Notes"
	1    3150 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61B8D9D0
P 2600 2900
F 0 "R?" V 2700 2950 50  0000 L CNN
F 1 "10k" V 2700 2800 50  0000 L CNN
F 2 "" V 2640 2890 50  0001 C CNN
F 3 "~" H 2600 2900 50  0001 C CNN
F 4 "" H 2600 2900 50  0001 C CNN "Notes"
	1    2600 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2350 2250 2350
Wire Wire Line
	2250 2350 2250 2900
Wire Wire Line
	2250 2900 2450 2900
Connection ~ 1800 2350
Wire Wire Line
	1800 2350 1800 2250
Wire Wire Line
	2750 2900 2950 2900
$Comp
L Device:R R?
U 1 1 61BA3F02
P 3250 1850
F 0 "R?" H 3050 1900 50  0000 L CNN
F 1 "1k" H 3100 1800 50  0000 L CNN
F 2 "" V 3290 1840 50  0001 C CNN
F 3 "~" H 3250 1850 50  0001 C CNN
F 4 "" H 3250 1850 50  0001 C CNN "Notes"
	1    3250 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1700 3250 1550
Connection ~ 3250 1550
Wire Wire Line
	3250 1550 1800 1550
Wire Wire Line
	3250 3500 1800 3500
Connection ~ 3250 3500
Wire Wire Line
	3250 3100 3250 3500
Wire Wire Line
	1800 2850 1800 3500
$Comp
L Device:C C?
U 1 1 6206C36B
P 4650 2850
F 0 "C?" V 4500 2900 50  0000 L CNN
F 1 "6.8n" V 4500 2700 50  0000 L CNN
F 2 "Right D Line" H 4688 2700 50  0001 C CNN
F 3 "~" H 4650 2850 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 4650 2850 50  0001 C CNN "Notes"
	1    4650 2850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6207DDA2
P 5100 1900
F 0 "R?" H 4900 1950 50  0000 L CNN
F 1 "130k" H 4850 1850 50  0000 L CNN
F 2 "" V 5140 1890 50  0001 C CNN
F 3 "~" H 5100 1900 50  0001 C CNN
F 4 "" H 5100 1900 50  0001 C CNN "Notes"
	1    5100 1900
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6207E46F
P 5100 3200
F 0 "R?" H 4900 3250 50  0000 L CNN
F 1 "68k" H 4850 3150 50  0000 L CNN
F 2 "" V 5140 3190 50  0001 C CNN
F 3 "~" H 5100 3200 50  0001 C CNN
F 4 "" H 5100 3200 50  0001 C CNN "Notes"
	1    5100 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	5100 2200 5100 2050
Wire Wire Line
	5100 2200 5100 3050
Connection ~ 5100 2200
$Comp
L Simulation_SPICE:DIODE D?
U 1 1 620A24B9
P 5750 2200
F 0 "D?" H 5700 2100 50  0000 L CNN
F 1 "DIODE" V 5795 2280 50  0001 L CNN
F 2 "" H 5750 2200 50  0001 C CNN
F 3 "~" H 5750 2200 50  0001 C CNN
F 4 "Y" H 5750 2200 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 5750 2200 50  0001 L CNN "Spice_Primitive"
	1    5750 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5600 2200 5100 2200
$Comp
L Device:R R?
U 1 1 620C6553
P 5450 3200
F 0 "R?" H 5250 3250 50  0000 L CNN
F 1 "68k" H 5200 3150 50  0000 L CNN
F 2 "" V 5490 3190 50  0001 C CNN
F 3 "~" H 5450 3200 50  0001 C CNN
F 4 "" H 5450 3200 50  0001 C CNN "Notes"
	1    5450 3200
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 620C69DA
P 5450 1900
F 0 "R?" H 5250 1950 50  0000 L CNN
F 1 "130k" H 5200 1850 50  0000 L CNN
F 2 "" V 5490 1890 50  0001 C CNN
F 3 "~" H 5450 1900 50  0001 C CNN
F 4 "" H 5450 1900 50  0001 C CNN "Notes"
	1    5450 1900
	1    0    0    1   
$EndComp
Wire Wire Line
	5450 2050 5450 2850
Wire Wire Line
	4800 2850 5450 2850
Connection ~ 5450 2850
Wire Wire Line
	5450 2850 5450 3050
$Comp
L Simulation_SPICE:DIODE D?
U 1 1 620FD22E
P 5750 2850
F 0 "D?" H 5700 2750 50  0000 L CNN
F 1 "DIODE" V 5795 2930 50  0001 L CNN
F 2 "" H 5750 2850 50  0001 C CNN
F 3 "~" H 5750 2850 50  0001 C CNN
F 4 "Y" H 5750 2850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 5750 2850 50  0001 L CNN "Spice_Primitive"
	1    5750 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5600 2850 5450 2850
Wire Wire Line
	4050 2850 4500 2850
$Comp
L Device:R R?
U 1 1 6217D9BB
P 6100 1900
F 0 "R?" H 5900 1950 50  0000 L CNN
F 1 "100k" H 5850 1850 50  0000 L CNN
F 2 "" V 6140 1890 50  0001 C CNN
F 3 "~" H 6100 1900 50  0001 C CNN
F 4 "" H 6100 1900 50  0001 C CNN "Notes"
	1    6100 1900
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 2050 6100 2200
Wire Wire Line
	6100 2850 5900 2850
Wire Wire Line
	5900 2200 6100 2200
Connection ~ 6100 2200
Wire Wire Line
	6100 2200 6100 2850
Wire Wire Line
	6100 1750 6100 1550
Wire Wire Line
	6100 1550 5450 1550
Wire Wire Line
	5450 1750 5450 1550
Connection ~ 5450 1550
Wire Wire Line
	5100 1550 5100 1750
Wire Wire Line
	5450 1550 5100 1550
Connection ~ 5100 1550
Wire Wire Line
	5450 3350 5450 3500
Wire Wire Line
	5450 3500 5100 3500
Wire Wire Line
	5100 3350 5100 3500
Connection ~ 5100 3500
Wire Wire Line
	6100 2850 6500 2850
Connection ~ 6100 2850
Wire Wire Line
	4800 2200 5100 2200
$Comp
L Device:C C?
U 1 1 6206BC92
P 4650 2200
F 0 "C?" V 4500 2250 50  0000 L CNN
F 1 "6.8n" V 4500 2050 50  0000 L CNN
F 2 "Right D Line" H 4688 2050 50  0001 C CNN
F 3 "~" H 4650 2200 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 4650 2200 50  0001 C CNN "Notes"
	1    4650 2200
	0    -1   1    0   
$EndComp
Text HLabel 1250 2650 0    50   Input ~ 0
IN
Wire Wire Line
	3250 2000 3250 2600
Text Label 4050 2200 2    50   ~ 0
AUX12-TGL
Text Label 4050 2600 2    50   ~ 0
AUX11-TGL
Text Label 6500 2850 0    50   ~ 0
EDGES
$Comp
L power:GND #PWR?
U 1 1 621A2318
P 3250 3700
F 0 "#PWR?" H 3250 3450 50  0001 C CNN
F 1 "GND" H 3255 3527 50  0000 C CNN
F 2 "" H 3250 3700 50  0001 C CNN
F 3 "" H 3250 3700 50  0001 C CNN
	1    3250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3700 3250 3500
$Comp
L power:+12V #PWR?
U 1 1 621B4199
P 3250 1300
F 0 "#PWR?" H 3250 1150 50  0001 C CNN
F 1 "+12V" H 3265 1473 50  0000 C CNN
F 2 "" H 3250 1300 50  0001 C CNN
F 3 "" H 3250 1300 50  0001 C CNN
	1    3250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1300 3250 1550
$Comp
L power:+10V #PWR?
U 1 1 621BAFE2
P 5100 1350
F 0 "#PWR?" H 5100 1200 50  0001 C CNN
F 1 "+10V" H 5115 1523 50  0000 C CNN
F 2 "" H 5100 1350 50  0001 C CNN
F 3 "" H 5100 1350 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1350 5100 1550
Wire Wire Line
	2250 2200 2250 2350
Wire Wire Line
	2250 2200 4500 2200
Connection ~ 2250 2350
Wire Wire Line
	4050 2850 4050 2600
Wire Wire Line
	4050 2600 3250 2600
Connection ~ 3250 2600
Wire Wire Line
	3250 2600 3250 2700
Wire Wire Line
	3250 3500 5100 3500
Text Label 9750 2450 2    50   ~ 0
MPS-7
Text Label 9750 2550 2    50   ~ 0
MPS-8
Text Label 9750 2650 2    50   ~ 0
MPS-10
Text Label 9750 2750 2    50   ~ 0
MPS-15
Text HLabel 10000 2450 2    50   Output ~ 0
MPS-7
Text HLabel 10000 2550 2    50   Output ~ 0
MPS-8
Text HLabel 10000 2650 2    50   Output ~ 0
MPS-10
Text HLabel 10000 2750 2    50   Output ~ 0
MPS-15
Wire Wire Line
	10000 2450 9750 2450
Wire Wire Line
	9750 2550 10000 2550
Wire Wire Line
	10000 2650 9750 2650
Wire Wire Line
	9750 2750 10000 2750
Wire Wire Line
	1100 7100 4700 7100
$Comp
L power:GND #PWR?
U 1 1 6230BBE6
P 7800 3100
F 0 "#PWR?" H 7800 2850 50  0001 C CNN
F 1 "GND" H 7805 2927 50  0000 C CNN
F 2 "" H 7800 3100 50  0001 C CNN
F 3 "" H 7800 3100 50  0001 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
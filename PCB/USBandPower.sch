EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Device:D D?
U 1 1 604917B5
P 9350 1900
AR Path="/604917B5" Ref="D?"  Part="1" 
AR Path="/60479334/604917B5" Ref="D2"  Part="1" 
F 0 "D2" H 9350 2117 50  0000 C CNN
F 1 "MBR0520LT1G" H 9350 2026 50  0000 C CNN
F 2 "Britishideas:SOD-123" H 9350 1900 50  0001 C CNN
F 3 "~" H 9350 1900 50  0001 C CNN
F 4 "MBR0520LT1G" H 9350 1900 50  0001 C CNN "manf#"
	1    9350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1900 9700 1900
Wire Wire Line
	9700 1900 9700 1600
Wire Wire Line
	9200 1900 8950 1900
Wire Wire Line
	8950 1900 8950 1700
$Comp
L power:+5V #PWR?
U 1 1 604917BF
P 8950 1600
AR Path="/604917BF" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604917BF" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 8950 1450 50  0001 C CNN
F 1 "+5V" H 8965 1773 50  0000 C CNN
F 2 "" H 8950 1600 50  0001 C CNN
F 3 "" H 8950 1600 50  0001 C CNN
	1    8950 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 604917C5
P 9700 1600
AR Path="/604917C5" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604917C5" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 9700 1450 50  0001 C CNN
F 1 "VBUS" H 9715 1773 50  0000 C CNN
F 2 "" H 9700 1600 50  0001 C CNN
F 3 "" H 9700 1600 50  0001 C CNN
	1    9700 1600
	1    0    0    -1  
$EndComp
Text Notes 9000 2050 0    50   ~ 0
5V AUTO SELECTOR
$Comp
L power:VBUS #PWR?
U 1 1 604917CC
P 9550 2900
AR Path="/604917CC" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604917CC" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 9550 2750 50  0001 C CNN
F 1 "VBUS" H 9565 3073 50  0000 C CNN
F 2 "" H 9550 2900 50  0001 C CNN
F 3 "" H 9550 2900 50  0001 C CNN
	1    9550 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604917D2
P 9100 3150
AR Path="/604917D2" Ref="C?"  Part="1" 
AR Path="/60479334/604917D2" Ref="C12"  Part="1" 
F 0 "C12" H 8850 3200 50  0000 L CNN
F 1 "4.7uF" H 8750 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9138 3000 50  0001 C CNN
F 3 "~" H 9100 3150 50  0001 C CNN
	1    9100 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604917D8
P 9550 3150
AR Path="/604917D8" Ref="C?"  Part="1" 
AR Path="/60479334/604917D8" Ref="C13"  Part="1" 
F 0 "C13" H 9665 3196 50  0000 L CNN
F 1 "100nF" H 9665 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9588 3000 50  0001 C CNN
F 3 "~" H 9550 3150 50  0001 C CNN
	1    9550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604917DE
P 9550 3400
AR Path="/604917DE" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604917DE" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 9550 3150 50  0001 C CNN
F 1 "GND" H 9555 3227 50  0000 C CNN
F 2 "" H 9550 3400 50  0001 C CNN
F 3 "" H 9550 3400 50  0001 C CNN
	1    9550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2900 9550 3000
Wire Wire Line
	9550 3000 9100 3000
Connection ~ 9550 3000
Wire Wire Line
	9100 3300 9550 3300
Wire Wire Line
	9550 3300 9550 3400
Connection ~ 9550 3300
$Comp
L Interface_USB:FT232RL U?
U 1 1 6049770E
P 4150 2350
AR Path="/6049770E" Ref="U?"  Part="1" 
AR Path="/60479334/6049770E" Ref="U2"  Part="1" 
F 0 "U2" H 3550 1450 50  0000 C CNN
F 1 "FT232RL" H 4650 1450 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 5250 1450 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 4150 2350 50  0001 C CNN
F 4 "FT232RL-REEL" H 4150 2350 50  0001 C CNN "manf#"
	1    4150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1650 5050 1650
Wire Wire Line
	4950 1750 5050 1750
$Comp
L power:+5V #PWR?
U 1 1 60497718
P 4150 1250
AR Path="/60497718" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497718" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 4150 1100 50  0001 C CNN
F 1 "+5V" H 4165 1423 50  0000 C CNN
F 2 "" H 4150 1250 50  0001 C CNN
F 3 "" H 4150 1250 50  0001 C CNN
	1    4150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1350 4250 1250
Wire Wire Line
	4250 1250 4150 1250
Wire Wire Line
	4150 1250 4050 1250
Wire Wire Line
	4050 1250 4050 1350
Connection ~ 4150 1250
$Comp
L power:GND #PWR?
U 1 1 60497723
P 4150 3450
AR Path="/60497723" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497723" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 4150 3200 50  0001 C CNN
F 1 "GND" H 4155 3277 50  0000 C CNN
F 2 "" H 4150 3450 50  0001 C CNN
F 3 "" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3350 3950 3450
Wire Wire Line
	3950 3450 4150 3450
Wire Wire Line
	4150 3350 4150 3450
Connection ~ 4150 3450
Wire Wire Line
	4250 3350 4250 3450
Wire Wire Line
	4250 3450 4150 3450
Wire Wire Line
	4350 3350 4350 3450
Wire Wire Line
	4350 3450 4250 3450
Connection ~ 4250 3450
$Comp
L Device:C C?
U 1 1 60497732
P 5450 2050
AR Path="/60497732" Ref="C?"  Part="1" 
AR Path="/60479334/60497732" Ref="C11"  Part="1" 
F 0 "C11" V 5198 2050 50  0000 C CNN
F 1 "100nF" V 5289 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5488 1900 50  0001 C CNN
F 3 "~" H 5450 2050 50  0001 C CNN
	1    5450 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2050 5300 2050
Wire Wire Line
	5600 2050 5700 2050
NoConn ~ 4950 1850
NoConn ~ 4950 2350
NoConn ~ 4950 2150
NoConn ~ 4950 2250
NoConn ~ 4950 1950
NoConn ~ 3350 2350
NoConn ~ 4950 3050
NoConn ~ 4950 2850
NoConn ~ 4950 2950
NoConn ~ 3350 2750
NoConn ~ 3350 2550
Wire Wire Line
	3950 3450 3350 3450
Wire Wire Line
	3350 3450 3350 3050
Connection ~ 3950 3450
$Comp
L power:+3V3 #PWR?
U 1 1 60497749
P 3050 1250
AR Path="/60497749" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497749" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 3050 1100 50  0001 C CNN
F 1 "+3V3" H 3065 1423 50  0000 C CNN
F 2 "" H 3050 1250 50  0001 C CNN
F 3 "" H 3050 1250 50  0001 C CNN
	1    3050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1650 3050 1650
Wire Wire Line
	3050 1650 3050 1250
$Comp
L Device:C C?
U 1 1 60497751
P 2900 1650
AR Path="/60497751" Ref="C?"  Part="1" 
AR Path="/60479334/60497751" Ref="C8"  Part="1" 
F 0 "C8" V 2648 1650 50  0000 C CNN
F 1 "100nF" V 2739 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2938 1500 50  0001 C CNN
F 3 "~" H 2900 1650 50  0001 C CNN
	1    2900 1650
	0    1    1    0   
$EndComp
Connection ~ 3050 1650
$Comp
L power:GND #PWR?
U 1 1 60497758
P 2750 1750
AR Path="/60497758" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497758" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2750 1500 50  0001 C CNN
F 1 "GND" H 2755 1577 50  0000 C CNN
F 2 "" H 2750 1750 50  0001 C CNN
F 3 "" H 2750 1750 50  0001 C CNN
	1    2750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1650 2750 1750
$Comp
L MPS-Tune-o-Matic-rescue:USB_B_Micro-Connector J?
U 1 1 6049775F
P 2050 2500
AR Path="/6049775F" Ref="J?"  Part="1" 
AR Path="/60479334/6049775F" Ref="J3"  Part="1" 
F 0 "J3" H 2107 2967 50  0000 C CNN
F 1 "USB_B_Micro" H 2107 2876 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10103594-0001LF_Horizontal" H 2200 2450 50  0001 C CNN
F 3 "~" H 2200 2450 50  0001 C CNN
F 4 "10103594-0001LF" H 2050 2500 50  0001 C CNN "manf#"
	1    2050 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60497765
P 1950 3150
AR Path="/60497765" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497765" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 1950 2900 50  0001 C CNN
F 1 "GND" H 1955 2977 50  0000 C CNN
F 2 "" H 1950 3150 50  0001 C CNN
F 3 "" H 1950 3150 50  0001 C CNN
	1    1950 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 6049776F
P 2500 1200
AR Path="/6049776F" Ref="#PWR?"  Part="1" 
AR Path="/60479334/6049776F" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 2500 1050 50  0001 C CNN
F 1 "VBUS" H 2515 1373 50  0000 C CNN
F 2 "" H 2500 1200 50  0001 C CNN
F 3 "" H 2500 1200 50  0001 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2300 2500 2300
Wire Wire Line
	3350 1950 2900 1950
Wire Wire Line
	2900 1950 2900 2500
Wire Wire Line
	2900 2500 2350 2500
Wire Wire Line
	3350 2050 3000 2050
Wire Wire Line
	3000 2050 3000 2600
Wire Wire Line
	3000 2600 2350 2600
NoConn ~ 4950 2750
NoConn ~ 4950 2650
Text HLabel 5700 2050 2    50   Output ~ 0
~RESET
Text HLabel 5050 1750 2    50   Input ~ 0
RX
Text HLabel 5050 1650 2    50   Output ~ 0
TX
$Comp
L Device:C C?
U 1 1 6042ECEC
P 1400 2550
AR Path="/6042ECEC" Ref="C?"  Part="1" 
AR Path="/60479334/6042ECEC" Ref="C7"  Part="1" 
F 0 "C7" H 1250 2600 50  0000 C CNN
F 1 "10nF" H 1200 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1438 2400 50  0001 C CNN
F 3 "~" H 1400 2550 50  0001 C CNN
	1    1400 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 2900 1950 3000
Wire Wire Line
	2050 2900 2050 3000
Wire Wire Line
	2050 3000 1950 3000
Connection ~ 1950 3000
Wire Wire Line
	2350 2700 2500 2700
$Comp
L Device:Ferrite_Bead FB1
U 1 1 6044A9A1
P 2500 1850
F 0 "FB1" H 2800 1800 50  0000 R CNN
F 1 "MI0805K400R-10" H 3350 1900 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2430 1850 50  0001 C CNN
F 3 "~" H 2500 1850 50  0001 C CNN
F 4 "MI0805K400R-10" H 2500 1850 50  0001 C CNN "manf#"
	1    2500 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 3000 1950 3150
Wire Wire Line
	2500 1200 2500 1500
Wire Wire Line
	2500 2000 2500 2300
Wire Wire Line
	2500 2700 2500 3000
Wire Wire Line
	2500 3000 2050 3000
Connection ~ 2050 3000
$Comp
L power:VBUS #PWR?
U 1 1 60450E37
P 1400 2300
AR Path="/60450E37" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60450E37" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 1400 2150 50  0001 C CNN
F 1 "VBUS" H 1415 2473 50  0000 C CNN
F 2 "" H 1400 2300 50  0001 C CNN
F 3 "" H 1400 2300 50  0001 C CNN
	1    1400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2300 1400 2400
Wire Wire Line
	1950 3000 1400 3000
Wire Wire Line
	1400 3000 1400 2700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 604E5DA0
P 2500 1500
F 0 "#FLG01" H 2500 1575 50  0001 C CNN
F 1 "PWR_FLAG" V 2500 1627 50  0000 L CNN
F 2 "" H 2500 1500 50  0001 C CNN
F 3 "~" H 2500 1500 50  0001 C CNN
	1    2500 1500
	0    -1   -1   0   
$EndComp
Connection ~ 2500 1500
Wire Wire Line
	2500 1500 2500 1700
$Comp
L power:PWR_FLAG #FLG03
U 1 1 604E7D28
P 8950 1700
F 0 "#FLG03" H 8950 1775 50  0001 C CNN
F 1 "PWR_FLAG" V 8950 1827 50  0000 L CNN
F 2 "" H 8950 1700 50  0001 C CNN
F 3 "~" H 8950 1700 50  0001 C CNN
	1    8950 1700
	0    -1   -1   0   
$EndComp
Connection ~ 8950 1700
Wire Wire Line
	8950 1700 8950 1600
$Comp
L Device:LED D?
U 1 1 60456147
P 7450 2350
AR Path="/60456147" Ref="D?"  Part="1" 
AR Path="/60479334/60456147" Ref="D1"  Part="1" 
F 0 "D1" V 7489 2232 50  0000 R CNN
F 1 "APT1608EC" V 7398 2232 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7450 2350 50  0001 C CNN
F 3 "~" H 7450 2350 50  0001 C CNN
F 4 "APT1608EC" V 7450 2350 50  0001 C CNN "manf#"
	1    7450 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6045614D
P 7450 2900
AR Path="/6045614D" Ref="R?"  Part="1" 
AR Path="/60479334/6045614D" Ref="R5"  Part="1" 
F 0 "R5" H 7300 2950 50  0000 C CNN
F 1 "150" H 7300 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7380 2900 50  0001 C CNN
F 3 "~" H 7450 2900 50  0001 C CNN
	1    7450 2900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60457673
P 7450 3150
AR Path="/60457673" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60457673" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 7450 2900 50  0001 C CNN
F 1 "GND" H 7455 2977 50  0000 C CNN
F 2 "" H 7450 3150 50  0001 C CNN
F 3 "" H 7450 3150 50  0001 C CNN
	1    7450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2500 7450 2750
Wire Wire Line
	7450 3050 7450 3150
$Comp
L MPS-Tune-o-Matic-rescue:LM2940-BritishIdeas U3
U 1 1 61C954B2
P 4350 5900
F 0 "U3" H 4350 5850 50  0000 C CNN
F 1 "LM2940" H 4900 5850 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 4350 5900 50  0001 C CNN
F 3 "" H 4350 5900 50  0001 C CNN
F 4 "LM2940IMPX-10/NOPB" H 4600 6300 50  0000 C CNN "manf#"
	1    4350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C96022
P 4550 6300
AR Path="/61C96022" Ref="#PWR?"  Part="1" 
AR Path="/60479334/61C96022" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 4550 6050 50  0001 C CNN
F 1 "GND" H 4555 6127 50  0000 C CNN
F 2 "" H 4550 6300 50  0001 C CNN
F 3 "" H 4550 6300 50  0001 C CNN
	1    4550 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6300 4550 6150
Wire Wire Line
	4650 6000 4650 6150
Wire Wire Line
	4650 6150 4550 6150
Connection ~ 4550 6150
Wire Wire Line
	4550 6150 4550 6000
$Comp
L Device:CP C?
U 1 1 61C99EB1
P 5350 5900
AR Path="/61C99EB1" Ref="C?"  Part="1" 
AR Path="/60479334/61C99EB1" Ref="C10"  Part="1" 
F 0 "C10" H 5450 5900 50  0000 L CNN
F 1 "22uF" H 5450 6000 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10.5" H 5388 5750 50  0001 C CNN
F 3 "~" H 5350 5900 50  0001 C CNN
F 4 "MAL214699902E3" H 5350 5900 50  0001 C CNN "manf#"
	1    5350 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61C9A265
P 3850 5900
AR Path="/61C9A265" Ref="C?"  Part="1" 
AR Path="/60479334/61C9A265" Ref="C9"  Part="1" 
F 0 "C9" H 3950 5900 50  0000 L CNN
F 1 "0.47uF" H 3950 6000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3888 5750 50  0001 C CNN
F 3 "~" H 3850 5900 50  0001 C CNN
	1    3850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5650 3850 5650
Wire Wire Line
	3850 5650 3850 5750
Wire Wire Line
	3850 6050 3850 6150
Wire Wire Line
	3850 6150 4550 6150
Wire Wire Line
	5350 5750 5350 5650
Wire Wire Line
	5350 5650 4950 5650
Wire Wire Line
	5350 6050 5350 6150
Wire Wire Line
	5350 6150 4650 6150
Connection ~ 4650 6150
$Comp
L power:+12V #PWR?
U 1 1 61CA20A5
P 3850 4950
AR Path="/61CA20A5" Ref="#PWR?"  Part="1" 
AR Path="/60479334/61CA20A5" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 3850 4800 50  0001 C CNN
F 1 "+12V" H 3865 5123 50  0000 C CNN
F 2 "" H 3850 4950 50  0001 C CNN
F 3 "" H 3850 4950 50  0001 C CNN
	1    3850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4950 3850 5100
Connection ~ 3850 5650
$Comp
L power:+10V #PWR019
U 1 1 61CA4486
P 5350 5500
F 0 "#PWR019" H 5350 5350 50  0001 C CNN
F 1 "+10V" H 5365 5673 50  0000 C CNN
F 2 "" H 5350 5500 50  0001 C CNN
F 3 "" H 5350 5500 50  0001 C CNN
	1    5350 5500
	1    0    0    -1  
$EndComp
Connection ~ 5350 5650
Wire Wire Line
	7450 2050 7450 2200
Wire Wire Line
	5350 5500 5350 5650
$Comp
L Connector:Barrel_Jack_Switch J4
U 1 1 63612D0E
P 3100 5750
F 0 "J4" H 3100 5950 50  0000 C CNN
F 1 "12V 1A IN (5.5/2.5)" H 3100 5550 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002" H 3150 5710 50  0001 C CNN
F 3 "~" H 3150 5710 50  0001 C CNN
F 4 "694108301002" H 3100 5750 50  0001 C CNN "manf#"
	1    3100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5650 3650 5650
Wire Wire Line
	3400 5750 3550 5750
Wire Wire Line
	3550 5750 3550 5850
Wire Wire Line
	3550 6150 3850 6150
Connection ~ 3850 6150
Wire Wire Line
	3400 5850 3550 5850
Connection ~ 3550 5850
Wire Wire Line
	3550 5850 3550 6150
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 6361F9D8
P 3200 5250
F 0 "J5" H 3118 4925 50  0000 C CNN
F 1 "12V IN" H 3118 5016 50  0000 C CNN
F 2 "Britishideas:PhoenixContact_COMBICON_MKDSN_2" H 3200 5250 50  0001 C CNN
F 3 "~" H 3200 5250 50  0001 C CNN
F 4 "1729018" H 3200 5250 50  0001 C CNN "manf#"
	1    3200 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 5250 3550 5250
Wire Wire Line
	3550 5250 3550 5750
Connection ~ 3550 5750
Wire Wire Line
	3400 5150 3650 5150
Wire Wire Line
	3650 5150 3650 5650
Connection ~ 3650 5650
Wire Wire Line
	3650 5650 3400 5650
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6362903A
P 4050 5100
F 0 "#FLG02" H 4050 5175 50  0001 C CNN
F 1 "PWR_FLAG" V 4050 5227 50  0000 L CNN
F 2 "" H 4050 5100 50  0001 C CNN
F 3 "~" H 4050 5100 50  0001 C CNN
	1    4050 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 5100 3850 5100
Connection ~ 3850 5100
Wire Wire Line
	3850 5100 3850 5650
$Comp
L power:+5V #PWR?
U 1 1 63607510
P 7450 2050
AR Path="/63607510" Ref="#PWR?"  Part="1" 
AR Path="/60479334/63607510" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 7450 1900 50  0001 C CNN
F 1 "+5V" H 7465 2223 50  0000 C CNN
F 2 "" H 7450 2050 50  0001 C CNN
F 3 "" H 7450 2050 50  0001 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 636F0574
P 6750 2350
AR Path="/636F0574" Ref="D?"  Part="1" 
AR Path="/60479334/636F0574" Ref="D9"  Part="1" 
F 0 "D9" V 6789 2232 50  0000 R CNN
F 1 "APT1608EC" V 6698 2232 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6750 2350 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
F 4 "APT1608EC" V 6750 2350 50  0001 C CNN "manf#"
	1    6750 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 636F0836
P 6750 2900
AR Path="/636F0836" Ref="R?"  Part="1" 
AR Path="/60479334/636F0836" Ref="R31"  Part="1" 
F 0 "R31" H 6600 2950 50  0000 C CNN
F 1 "510" H 6600 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6680 2900 50  0001 C CNN
F 3 "~" H 6750 2900 50  0001 C CNN
	1    6750 2900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 636F0840
P 6750 3150
AR Path="/636F0840" Ref="#PWR?"  Part="1" 
AR Path="/60479334/636F0840" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 6750 2900 50  0001 C CNN
F 1 "GND" H 6755 2977 50  0000 C CNN
F 2 "" H 6750 3150 50  0001 C CNN
F 3 "" H 6750 3150 50  0001 C CNN
	1    6750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2500 6750 2750
Wire Wire Line
	6750 3050 6750 3150
Wire Wire Line
	6750 2050 6750 2200
$Comp
L power:+12V #PWR?
U 1 1 636F3AD7
P 6750 2050
AR Path="/636F3AD7" Ref="#PWR?"  Part="1" 
AR Path="/60479334/636F3AD7" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 6750 1900 50  0001 C CNN
F 1 "+12V" H 6765 2223 50  0000 C CNN
F 2 "" H 6750 2050 50  0001 C CNN
F 3 "" H 6750 2050 50  0001 C CNN
	1    6750 2050
	1    0    0    -1  
$EndComp
$EndSCHEMATC

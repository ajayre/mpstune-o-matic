EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "MPS Tune-o-Matic"
Date "2021-12-06"
Rev "V1.0"
Comp "(C) andy@britishideas.com 2021"
Comment1 "For Bosch D-Jetronic MPS Type 3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Switching:LM2596S-5 U?
U 1 1 60487041
P 3850 5550
AR Path="/60487041" Ref="U?"  Part="1" 
AR Path="/60479334/60487041" Ref="U?"  Part="1" 
F 0 "U?" H 3500 5300 50  0000 C CNN
F 1 "LM2596S-5" H 4150 5300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 3900 5300 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 3850 5550 50  0001 C CNN
F 4 "LM2596S-5.0/NOPB" H 3850 5550 50  0001 C CNN "manf#"
	1    3850 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60487047
P 3100 5300
AR Path="/60487047" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60487047" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3100 5150 50  0001 C CNN
F 1 "+12V" H 3115 5473 50  0000 C CNN
F 2 "" H 3100 5300 50  0001 C CNN
F 3 "" H 3100 5300 50  0001 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6048704D
P 5150 5300
AR Path="/6048704D" Ref="#PWR?"  Part="1" 
AR Path="/60479334/6048704D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 5150 50  0001 C CNN
F 1 "+5V" H 5165 5473 50  0000 C CNN
F 2 "" H 5150 5300 50  0001 C CNN
F 3 "" H 5150 5300 50  0001 C CNN
	1    5150 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60487053
P 3850 5950
AR Path="/60487053" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60487053" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3850 5700 50  0001 C CNN
F 1 "GND" H 3855 5777 50  0000 C CNN
F 2 "" H 3850 5950 50  0001 C CNN
F 3 "" H 3850 5950 50  0001 C CNN
	1    3850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5650 3350 5950
Wire Wire Line
	3350 5950 3850 5950
Wire Wire Line
	3850 5950 3850 5850
Connection ~ 3350 5950
$Comp
L Device:CP C?
U 1 1 6048705D
P 3100 5600
AR Path="/6048705D" Ref="C?"  Part="1" 
AR Path="/60479334/6048705D" Ref="C?"  Part="1" 
F 0 "C?" H 3200 5600 50  0000 L CNN
F 1 "680uF e" V 2950 5500 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10.5" H 3138 5450 50  0001 C CNN
F 3 "~" H 3100 5600 50  0001 C CNN
	1    3100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5450 3100 5450
Wire Wire Line
	3100 5450 3100 5300
Connection ~ 3100 5450
Wire Wire Line
	3100 5750 3100 5950
Wire Wire Line
	3100 5950 3350 5950
$Comp
L Device:D_Schottky D?
U 1 1 60487068
P 4550 5800
AR Path="/60487068" Ref="D?"  Part="1" 
AR Path="/60479334/60487068" Ref="D?"  Part="1" 
F 0 "D?" V 4504 5880 50  0000 L CNN
F 1 "B360A-13-F" V 4750 5650 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 4550 5800 50  0001 C CNN
F 3 "~" H 4550 5800 50  0001 C CNN
F 4 "B360A-13-F" V 4550 5800 50  0001 C CNN "manf#"
	1    4550 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 5650 4550 5650
Wire Wire Line
	4550 5950 3850 5950
Connection ~ 3850 5950
$Comp
L Device:L L?
U 1 1 60487071
P 4800 5650
AR Path="/60487071" Ref="L?"  Part="1" 
AR Path="/60479334/60487071" Ref="L?"  Part="1" 
F 0 "L?" V 4750 5650 50  0000 C CNN
F 1 "33uH" V 4899 5650 50  0000 C CNN
F 2 "Britishideas:Wurth-WE-LQS-Inductor" H 4800 5650 50  0001 C CNN
F 3 "~" H 4800 5650 50  0001 C CNN
F 4 "74404063330" V 4800 5650 50  0001 C CNN "manf#"
	1    4800 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 5650 4650 5650
Connection ~ 4550 5650
$Comp
L Device:CP C?
U 1 1 60487079
P 5150 5800
AR Path="/60487079" Ref="C?"  Part="1" 
AR Path="/60479334/60487079" Ref="C?"  Part="1" 
F 0 "C?" H 4900 5850 50  0000 L CNN
F 1 "220uF e" V 5300 5700 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x6.5" H 5188 5650 50  0001 C CNN
F 3 "~" H 5150 5800 50  0001 C CNN
	1    5150 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5650 5150 5650
Wire Wire Line
	5150 5950 4550 5950
Connection ~ 4550 5950
Wire Wire Line
	4350 5450 5150 5450
Wire Wire Line
	5150 5450 5150 5650
Connection ~ 5150 5650
Wire Wire Line
	5150 5450 5150 5300
Connection ~ 5150 5450
$Comp
L Device:D D?
U 1 1 604917B5
P 9400 2650
AR Path="/604917B5" Ref="D?"  Part="1" 
AR Path="/60479334/604917B5" Ref="D?"  Part="1" 
F 0 "D?" H 9400 2867 50  0000 C CNN
F 1 "MBR0520LT1G" H 9400 2776 50  0000 C CNN
F 2 "Britishideas:SOD-123" H 9400 2650 50  0001 C CNN
F 3 "~" H 9400 2650 50  0001 C CNN
F 4 "MBR0520LT1G" H 9400 2650 50  0001 C CNN "manf#"
	1    9400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2650 9750 2650
Wire Wire Line
	9750 2650 9750 2350
Wire Wire Line
	9250 2650 9000 2650
Wire Wire Line
	9000 2650 9000 2450
$Comp
L power:+5V #PWR?
U 1 1 604917BF
P 9000 2350
AR Path="/604917BF" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604917BF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9000 2200 50  0001 C CNN
F 1 "+5V" H 9015 2523 50  0000 C CNN
F 2 "" H 9000 2350 50  0001 C CNN
F 3 "" H 9000 2350 50  0001 C CNN
	1    9000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 604917C5
P 9750 2350
AR Path="/604917C5" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604917C5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9750 2200 50  0001 C CNN
F 1 "VBUS" H 9765 2523 50  0000 C CNN
F 2 "" H 9750 2350 50  0001 C CNN
F 3 "" H 9750 2350 50  0001 C CNN
	1    9750 2350
	1    0    0    -1  
$EndComp
Text Notes 9050 2800 0    50   ~ 0
5V AUTO SELECTOR
$Comp
L power:VBUS #PWR?
U 1 1 604917CC
P 9600 3500
AR Path="/604917CC" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604917CC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9600 3350 50  0001 C CNN
F 1 "VBUS" H 9615 3673 50  0000 C CNN
F 2 "" H 9600 3500 50  0001 C CNN
F 3 "" H 9600 3500 50  0001 C CNN
	1    9600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 604917D2
P 9150 3750
AR Path="/604917D2" Ref="C?"  Part="1" 
AR Path="/60479334/604917D2" Ref="C?"  Part="1" 
F 0 "C?" H 9250 3750 50  0000 L CNN
F 1 "4.7uF 16V e" V 9000 3550 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 9188 3600 50  0001 C CNN
F 3 "~" H 9150 3750 50  0001 C CNN
	1    9150 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604917D8
P 9600 3750
AR Path="/604917D8" Ref="C?"  Part="1" 
AR Path="/60479334/604917D8" Ref="C?"  Part="1" 
F 0 "C?" H 9715 3796 50  0000 L CNN
F 1 "100nF" H 9715 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9638 3600 50  0001 C CNN
F 3 "~" H 9600 3750 50  0001 C CNN
	1    9600 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604917DE
P 9600 4000
AR Path="/604917DE" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604917DE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9600 3750 50  0001 C CNN
F 1 "GND" H 9605 3827 50  0000 C CNN
F 2 "" H 9600 4000 50  0001 C CNN
F 3 "" H 9600 4000 50  0001 C CNN
	1    9600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3500 9600 3600
Wire Wire Line
	9600 3600 9150 3600
Connection ~ 9600 3600
Wire Wire Line
	9150 3900 9600 3900
Wire Wire Line
	9600 3900 9600 4000
Connection ~ 9600 3900
$Comp
L Interface_USB:FT232RL U?
U 1 1 6049770E
P 4550 3050
AR Path="/6049770E" Ref="U?"  Part="1" 
AR Path="/60479334/6049770E" Ref="U?"  Part="1" 
F 0 "U?" H 3950 2150 50  0000 C CNN
F 1 "FT232RL" H 5050 2150 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 5650 2150 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 4550 3050 50  0001 C CNN
F 4 "FT232RL-REEL" H 4550 3050 50  0001 C CNN "manf#"
	1    4550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2350 5450 2350
Wire Wire Line
	5350 2450 5450 2450
$Comp
L power:+5V #PWR?
U 1 1 60497718
P 4550 1950
AR Path="/60497718" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497718" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 1800 50  0001 C CNN
F 1 "+5V" H 4565 2123 50  0000 C CNN
F 2 "" H 4550 1950 50  0001 C CNN
F 3 "" H 4550 1950 50  0001 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2050 4650 1950
Wire Wire Line
	4650 1950 4550 1950
Wire Wire Line
	4550 1950 4450 1950
Wire Wire Line
	4450 1950 4450 2050
Connection ~ 4550 1950
$Comp
L power:GND #PWR?
U 1 1 60497723
P 4550 4150
AR Path="/60497723" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497723" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 3900 50  0001 C CNN
F 1 "GND" H 4555 3977 50  0000 C CNN
F 2 "" H 4550 4150 50  0001 C CNN
F 3 "" H 4550 4150 50  0001 C CNN
	1    4550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4050 4350 4150
Wire Wire Line
	4350 4150 4550 4150
Wire Wire Line
	4550 4050 4550 4150
Connection ~ 4550 4150
Wire Wire Line
	4650 4050 4650 4150
Wire Wire Line
	4650 4150 4550 4150
Wire Wire Line
	4750 4050 4750 4150
Wire Wire Line
	4750 4150 4650 4150
Connection ~ 4650 4150
$Comp
L Device:C C?
U 1 1 60497732
P 5850 2750
AR Path="/60497732" Ref="C?"  Part="1" 
AR Path="/60479334/60497732" Ref="C?"  Part="1" 
F 0 "C?" V 5598 2750 50  0000 C CNN
F 1 "100nF" V 5689 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5888 2600 50  0001 C CNN
F 3 "~" H 5850 2750 50  0001 C CNN
	1    5850 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2750 5700 2750
Wire Wire Line
	6000 2750 6100 2750
NoConn ~ 5350 2550
NoConn ~ 5350 3050
NoConn ~ 5350 2850
NoConn ~ 5350 2950
NoConn ~ 5350 2650
NoConn ~ 3750 3050
NoConn ~ 5350 3750
NoConn ~ 5350 3550
NoConn ~ 5350 3650
NoConn ~ 3750 3450
NoConn ~ 3750 3250
Wire Wire Line
	4350 4150 3750 4150
Wire Wire Line
	3750 4150 3750 3750
Connection ~ 4350 4150
$Comp
L power:+3V3 #PWR?
U 1 1 60497749
P 3450 1950
AR Path="/60497749" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497749" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3450 1800 50  0001 C CNN
F 1 "+3V3" H 3465 2123 50  0000 C CNN
F 2 "" H 3450 1950 50  0001 C CNN
F 3 "" H 3450 1950 50  0001 C CNN
	1    3450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2350 3450 2350
Wire Wire Line
	3450 2350 3450 1950
$Comp
L Device:C C?
U 1 1 60497751
P 3300 2350
AR Path="/60497751" Ref="C?"  Part="1" 
AR Path="/60479334/60497751" Ref="C?"  Part="1" 
F 0 "C?" V 3048 2350 50  0000 C CNN
F 1 "100nF" V 3139 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 2200 50  0001 C CNN
F 3 "~" H 3300 2350 50  0001 C CNN
	1    3300 2350
	0    1    1    0   
$EndComp
Connection ~ 3450 2350
$Comp
L power:GND #PWR?
U 1 1 60497758
P 3150 2450
AR Path="/60497758" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497758" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3150 2200 50  0001 C CNN
F 1 "GND" H 3155 2277 50  0000 C CNN
F 2 "" H 3150 2450 50  0001 C CNN
F 3 "" H 3150 2450 50  0001 C CNN
	1    3150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2350 3150 2450
$Comp
L Connector:USB_B_Mini J?
U 1 1 6049775F
P 2450 3200
AR Path="/6049775F" Ref="J?"  Part="1" 
AR Path="/60479334/6049775F" Ref="J?"  Part="1" 
F 0 "J?" H 2507 3667 50  0000 C CNN
F 1 "USB_B_Mini" H 2507 3576 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Wuerth_65100516121_Horizontal" H 2600 3150 50  0001 C CNN
F 3 "~" H 2600 3150 50  0001 C CNN
F 4 "65100516121" H 2450 3200 50  0001 C CNN "manf#"
	1    2450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60497765
P 2350 3850
AR Path="/60497765" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60497765" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 3600 50  0001 C CNN
F 1 "GND" H 2355 3677 50  0000 C CNN
F 2 "" H 2350 3850 50  0001 C CNN
F 3 "" H 2350 3850 50  0001 C CNN
	1    2350 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 6049776F
P 2900 1900
AR Path="/6049776F" Ref="#PWR?"  Part="1" 
AR Path="/60479334/6049776F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 1750 50  0001 C CNN
F 1 "VBUS" H 2915 2073 50  0000 C CNN
F 2 "" H 2900 1900 50  0001 C CNN
F 3 "" H 2900 1900 50  0001 C CNN
	1    2900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3000 2900 3000
Wire Wire Line
	3750 2650 3300 2650
Wire Wire Line
	3300 2650 3300 3200
Wire Wire Line
	3300 3200 2750 3200
Wire Wire Line
	3750 2750 3400 2750
Wire Wire Line
	3400 2750 3400 3300
Wire Wire Line
	3400 3300 2750 3300
NoConn ~ 5350 3450
NoConn ~ 5350 3350
Text HLabel 6100 2750 2    50   Output ~ 0
~RESET
Text HLabel 5450 2450 2    50   Input ~ 0
RX
Text HLabel 5450 2350 2    50   Output ~ 0
TX
$Comp
L Device:C C?
U 1 1 6042ECEC
P 1800 3250
AR Path="/6042ECEC" Ref="C?"  Part="1" 
AR Path="/60479334/6042ECEC" Ref="C?"  Part="1" 
F 0 "C?" H 1650 3300 50  0000 C CNN
F 1 "10nF" H 1600 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1838 3100 50  0001 C CNN
F 3 "~" H 1800 3250 50  0001 C CNN
	1    1800 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 3600 2350 3700
Wire Wire Line
	2450 3600 2450 3700
Wire Wire Line
	2450 3700 2350 3700
Connection ~ 2350 3700
Wire Wire Line
	2750 3400 2900 3400
$Comp
L Device:Ferrite_Bead FB?
U 1 1 6044A9A1
P 2900 2550
F 0 "FB?" H 3200 2500 50  0000 R CNN
F 1 "MI0805K400R-10" H 3750 2600 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2830 2550 50  0001 C CNN
F 3 "~" H 2900 2550 50  0001 C CNN
F 4 "MI0805K400R-10" H 2900 2550 50  0001 C CNN "manf#"
	1    2900 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 3700 2350 3850
Wire Wire Line
	2900 1900 2900 2200
Wire Wire Line
	2900 2700 2900 3000
Wire Wire Line
	2900 3400 2900 3700
Wire Wire Line
	2900 3700 2450 3700
Connection ~ 2450 3700
$Comp
L power:VBUS #PWR?
U 1 1 60450E37
P 1800 3000
AR Path="/60450E37" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60450E37" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1800 2850 50  0001 C CNN
F 1 "VBUS" H 1815 3173 50  0000 C CNN
F 2 "" H 1800 3000 50  0001 C CNN
F 3 "" H 1800 3000 50  0001 C CNN
	1    1800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3000 1800 3100
Wire Wire Line
	2350 3700 1800 3700
Wire Wire Line
	1800 3700 1800 3400
$Comp
L power:PWR_FLAG #FLG?
U 1 1 604E5DA0
P 2900 2200
F 0 "#FLG?" H 2900 2275 50  0001 C CNN
F 1 "PWR_FLAG" V 2900 2327 50  0000 L CNN
F 2 "" H 2900 2200 50  0001 C CNN
F 3 "~" H 2900 2200 50  0001 C CNN
	1    2900 2200
	0    -1   -1   0   
$EndComp
Connection ~ 2900 2200
Wire Wire Line
	2900 2200 2900 2400
$Comp
L power:PWR_FLAG #FLG?
U 1 1 604E7D28
P 9000 2450
F 0 "#FLG?" H 9000 2525 50  0001 C CNN
F 1 "PWR_FLAG" V 9000 2577 50  0000 L CNN
F 2 "" H 9000 2450 50  0001 C CNN
F 3 "~" H 9000 2450 50  0001 C CNN
	1    9000 2450
	0    -1   -1   0   
$EndComp
Connection ~ 9000 2450
Wire Wire Line
	9000 2450 9000 2350
$Comp
L Device:LED D?
U 1 1 60456147
P 7550 2700
AR Path="/60456147" Ref="D?"  Part="1" 
AR Path="/60479334/60456147" Ref="D?"  Part="1" 
F 0 "D?" V 7589 2582 50  0000 R CNN
F 1 "PWR" V 7498 2582 50  0000 R CNN
F 2 "LED_SMD:LED_PLCC-2" H 7550 2700 50  0001 C CNN
F 3 "~" H 7550 2700 50  0001 C CNN
	1    7550 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6045614D
P 7550 3250
AR Path="/6045614D" Ref="R?"  Part="1" 
AR Path="/60479334/6045614D" Ref="R?"  Part="1" 
F 0 "R?" V 7343 3250 50  0000 C CNN
F 1 "1K" V 7434 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7480 3250 50  0001 C CNN
F 3 "~" H 7550 3250 50  0001 C CNN
	1    7550 3250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60456153
P 7550 2550
F 0 "#PWR?" H 7550 2400 50  0001 C CNN
F 1 "+5V" H 7565 2723 50  0000 C CNN
F 2 "" H 7550 2550 50  0001 C CNN
F 3 "" H 7550 2550 50  0001 C CNN
	1    7550 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60457673
P 7550 3500
AR Path="/60457673" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60457673" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7550 3250 50  0001 C CNN
F 1 "GND" H 7555 3327 50  0000 C CNN
F 2 "" H 7550 3500 50  0001 C CNN
F 3 "" H 7550 3500 50  0001 C CNN
	1    7550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2850 7550 3100
Wire Wire Line
	7550 3400 7550 3500
$Comp
L BritishIdeas:LM2940 U?
U 1 1 61C954B2
P 7000 5700
F 0 "U?" H 7000 5650 50  0000 C CNN
F 1 "LM2940" H 7550 5650 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 7000 5700 50  0001 C CNN
F 3 "" H 7000 5700 50  0001 C CNN
F 4 "LM2940IMPX-10/NOPB" H 7250 6100 50  0000 C CNN "manf#"
	1    7000 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C96022
P 7200 6100
AR Path="/61C96022" Ref="#PWR?"  Part="1" 
AR Path="/60479334/61C96022" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7200 5850 50  0001 C CNN
F 1 "GND" H 7205 5927 50  0000 C CNN
F 2 "" H 7200 6100 50  0001 C CNN
F 3 "" H 7200 6100 50  0001 C CNN
	1    7200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 6100 7200 5950
Wire Wire Line
	7300 5800 7300 5950
Wire Wire Line
	7300 5950 7200 5950
Connection ~ 7200 5950
Wire Wire Line
	7200 5950 7200 5800
$Comp
L Device:CP C?
U 1 1 61C99EB1
P 8000 5700
AR Path="/61C99EB1" Ref="C?"  Part="1" 
AR Path="/60479334/61C99EB1" Ref="C?"  Part="1" 
F 0 "C?" H 8100 5700 50  0000 L CNN
F 1 "22uF" H 8100 5800 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10.5" H 8038 5550 50  0001 C CNN
F 3 "~" H 8000 5700 50  0001 C CNN
	1    8000 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61C9A265
P 6500 5700
AR Path="/61C9A265" Ref="C?"  Part="1" 
AR Path="/60479334/61C9A265" Ref="C?"  Part="1" 
F 0 "C?" H 6600 5700 50  0000 L CNN
F 1 "0.47uF" H 6600 5800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 5550 50  0001 C CNN
F 3 "~" H 6500 5700 50  0001 C CNN
	1    6500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5450 6500 5450
Wire Wire Line
	6500 5450 6500 5550
Wire Wire Line
	6500 5850 6500 5950
Wire Wire Line
	6500 5950 7200 5950
Wire Wire Line
	8000 5550 8000 5450
Wire Wire Line
	8000 5450 7600 5450
Wire Wire Line
	8000 5850 8000 5950
Wire Wire Line
	8000 5950 7300 5950
Connection ~ 7300 5950
$Comp
L power:+12V #PWR?
U 1 1 61CA20A5
P 6500 5300
AR Path="/61CA20A5" Ref="#PWR?"  Part="1" 
AR Path="/60479334/61CA20A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 5150 50  0001 C CNN
F 1 "+12V" H 6515 5473 50  0000 C CNN
F 2 "" H 6500 5300 50  0001 C CNN
F 3 "" H 6500 5300 50  0001 C CNN
	1    6500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5300 6500 5450
Connection ~ 6500 5450
$Comp
L power:+10V #PWR?
U 1 1 61CA4486
P 8000 5300
F 0 "#PWR?" H 8000 5150 50  0001 C CNN
F 1 "+10V" H 8015 5473 50  0000 C CNN
F 2 "" H 8000 5300 50  0001 C CNN
F 3 "" H 8000 5300 50  0001 C CNN
	1    8000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5300 8000 5450
Connection ~ 8000 5450
$EndSCHEMATC

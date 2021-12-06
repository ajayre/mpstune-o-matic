EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L power:+5V #PWR?
U 1 1 6051B2E5
P 5750 3000
AR Path="/6051B2E5" Ref="#PWR?"  Part="1" 
AR Path="/60517480/6051B2E5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 2850 50  0001 C CNN
F 1 "+5V" H 5765 3173 50  0000 C CNN
F 2 "" H 5750 3000 50  0001 C CNN
F 3 "" H 5750 3000 50  0001 C CNN
	1    5750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6051D845
P 5850 4450
AR Path="/6051D845" Ref="#PWR?"  Part="1" 
AR Path="/60517480/6051D845" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 4200 50  0001 C CNN
F 1 "GND" H 5855 4277 50  0000 C CNN
F 2 "" H 5850 4450 50  0001 C CNN
F 3 "" H 5850 4450 50  0001 C CNN
	1    5850 4450
	1    0    0    -1  
$EndComp
$Comp
L BritishIdeas:MCP41HV51-502E-ST U?
U 1 1 6045CA2E
P 6050 4150
F 0 "U?" H 6350 5115 50  0000 C CNN
F 1 "MCP41HV51-502E-ST" H 6350 5024 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6050 4150 50  0001 C CNN
F 3 "" H 6050 4150 50  0001 C CNN
F 4 "" H 6050 4150 50  0001 C CNN "Field4"
F 5 "MCP41HV51-502E/ST" H 6050 4150 50  0001 C CNN "manf#"
	1    6050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3450 5750 3450
Wire Wire Line
	5750 3450 5750 3050
Wire Wire Line
	6750 3950 6850 3950
Wire Wire Line
	6850 3950 6850 4350
Wire Wire Line
	6850 4350 5850 4350
Wire Wire Line
	5850 4350 5850 4450
Wire Wire Line
	6750 3850 6850 3850
Wire Wire Line
	6850 3850 6850 3950
Connection ~ 6850 3950
Wire Wire Line
	5950 3950 5850 3950
Wire Wire Line
	5850 3950 5850 4350
Connection ~ 5850 4350
Wire Wire Line
	5950 4050 5750 4050
Wire Wire Line
	5750 4050 5750 3450
Connection ~ 5750 3450
Wire Wire Line
	5950 3550 5050 3550
Wire Wire Line
	5950 3650 5450 3650
Wire Wire Line
	5950 3750 5050 3750
Wire Wire Line
	5950 3850 5050 3850
Text HLabel 5050 3550 0    50   Input ~ 0
SCK
Text HLabel 5050 3650 0    50   Input ~ 0
~AIRTEMP_CS
Text HLabel 5050 3750 0    50   Input ~ 0
MOSI
Text HLabel 5050 3850 0    50   Output ~ 0
MISO
$Comp
L power:+12V #PWR?
U 1 1 6045FD70
P 6850 3150
AR Path="/6045FD70" Ref="#PWR?"  Part="1" 
AR Path="/60479334/6045FD70" Ref="#PWR?"  Part="1" 
AR Path="/60517480/6045FD70" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 3000 50  0001 C CNN
F 1 "+12V" H 6865 3323 50  0000 C CNN
F 2 "" H 6850 3150 50  0001 C CNN
F 3 "" H 6850 3150 50  0001 C CNN
	1    6850 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 3450 6850 3450
Wire Wire Line
	6850 3450 6850 3150
NoConn ~ 6750 3550
Wire Wire Line
	6750 3750 6850 3750
Wire Wire Line
	6850 3750 6850 3850
Connection ~ 6850 3850
Wire Wire Line
	6750 3650 7150 3650
Text HLabel 8300 3650 2    50   Output ~ 0
ECU_AIRTEMP
$Comp
L Connector:TestPoint TP?
U 1 1 60460C5F
P 7150 3550
F 0 "TP?" H 7208 3668 50  0000 L CNN
F 1 "TestPoint" H 7208 3577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7350 3550 50  0001 C CNN
F 3 "~" H 7350 3550 50  0001 C CNN
	1    7150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3550 7150 3650
$Comp
L Connector:TestPoint TP?
U 1 1 60461898
P 7150 3750
F 0 "TP?" H 7092 3776 50  0000 R CNN
F 1 "TestPoint" H 7092 3867 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7350 3750 50  0001 C CNN
F 3 "~" H 7350 3750 50  0001 C CNN
	1    7150 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 3750 7150 3750
Connection ~ 6850 3750
$Comp
L Connector_Generic:Conn_01x02 JP?
U 1 1 6046304A
P 7700 3450
F 0 "JP?" V 7664 3262 50  0000 R CNN
F 1 "AIRTEMP" V 7573 3262 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 7700 3450 50  0001 C CNN
F 3 "~" H 7700 3450 50  0001 C CNN
	1    7700 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3650 7700 3650
Connection ~ 7150 3650
Wire Wire Line
	7800 3650 8300 3650
$Comp
L Device:R R?
U 1 1 60475475
P 5450 3300
F 0 "R?" H 5520 3346 50  0000 L CNN
F 1 "100k" H 5520 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5380 3300 50  0001 C CNN
F 3 "~" H 5450 3300 50  0001 C CNN
	1    5450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3150 5450 3050
Wire Wire Line
	5450 3050 5750 3050
Connection ~ 5750 3050
Wire Wire Line
	5750 3050 5750 3000
Wire Wire Line
	5450 3450 5450 3650
Connection ~ 5450 3650
Wire Wire Line
	5450 3650 5050 3650
$Comp
L Device:C C?
U 1 1 604B16D0
P 3900 3700
F 0 "C?" H 4015 3746 50  0000 L CNN
F 1 "100nF" H 4015 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 3550 50  0001 C CNN
F 3 "~" H 3900 3700 50  0001 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604B19D2
P 3350 3700
F 0 "C?" H 3465 3746 50  0000 L CNN
F 1 "100nF" H 3465 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3388 3550 50  0001 C CNN
F 3 "~" H 3350 3700 50  0001 C CNN
	1    3350 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 604B1CFA
P 3350 3350
AR Path="/604B1CFA" Ref="#PWR?"  Part="1" 
AR Path="/60517480/604B1CFA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 3200 50  0001 C CNN
F 1 "+5V" H 3365 3523 50  0000 C CNN
F 2 "" H 3350 3350 50  0001 C CNN
F 3 "" H 3350 3350 50  0001 C CNN
	1    3350 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604B2040
P 3350 4050
AR Path="/604B2040" Ref="#PWR?"  Part="1" 
AR Path="/60517480/604B2040" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 3800 50  0001 C CNN
F 1 "GND" H 3355 3877 50  0000 C CNN
F 2 "" H 3350 4050 50  0001 C CNN
F 3 "" H 3350 4050 50  0001 C CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 604B23FF
P 3900 3350
AR Path="/604B23FF" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604B23FF" Ref="#PWR?"  Part="1" 
AR Path="/60517480/604B23FF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3900 3200 50  0001 C CNN
F 1 "+12V" H 3915 3523 50  0000 C CNN
F 2 "" H 3900 3350 50  0001 C CNN
F 3 "" H 3900 3350 50  0001 C CNN
	1    3900 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 3350 3350 3550
Wire Wire Line
	3900 3350 3900 3550
Wire Wire Line
	3900 3850 3900 3950
Wire Wire Line
	3900 3950 3350 3950
Wire Wire Line
	3350 3950 3350 3850
Wire Wire Line
	3350 3950 3350 4050
Connection ~ 3350 3950
$EndSCHEMATC

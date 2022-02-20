EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title "MPS Tune-o-Matic"
Date "2022-02-19"
Rev "V1.0"
Comp "(C) andy@britishideas.com 2022"
Comment1 "For Bosch D-Jetronic MPS Type 3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 9950 3100 2    50   Input ~ 0
ECU_AIRTEMP
Text HLabel 3000 2050 1    50   Input ~ 0
SPEED_SENSOR_PULSE_12V
Text HLabel 1600 3600 0    50   Output ~ 0
MPS-7
Text HLabel 1600 4600 0    50   Output ~ 0
MPS-8
Text HLabel 1600 3100 0    50   Output ~ 0
MPS-15
Text HLabel 8000 2150 1    50   Input ~ 0
ENABLE_II_IV_12V
$Comp
L Device:D D?
U 1 1 61C169BC
P 2250 4600
AR Path="/60469920/61BF342D/61C169BC" Ref="D?"  Part="1" 
AR Path="/60469920/61C169BC" Ref="D?"  Part="1" 
F 0 "D?" H 2250 4725 50  0000 C CNN
F 1 "D" H 2250 4726 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-523" H 2250 4600 50  0001 C CNN
F 3 "~" H 2250 4600 50  0001 C CNN
F 4 "RB520SM-30T2R" H 2250 4600 50  0001 C CNN "manf#"
	1    2250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4600 2100 4600
$Comp
L Device:R R?
U 1 1 61C169C9
P 9700 3100
AR Path="/60469920/61BF342D/61C169C9" Ref="R?"  Part="1" 
AR Path="/60469920/61C169C9" Ref="R?"  Part="1" 
F 0 "R?" V 9905 3100 50  0000 C CNN
F 1 "240" V 9814 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9740 3090 50  0001 C CNN
F 3 "~" H 9700 3100 50  0001 C CNN
F 4 "R Y Br Gd = 240Ω ±5%" H 9700 3100 50  0001 C CNN "Notes"
	1    9700 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61C169D0
P 9200 2850
AR Path="/60469920/61BF342D/61C169D0" Ref="R?"  Part="1" 
AR Path="/60469920/61C169D0" Ref="R?"  Part="1" 
F 0 "R?" H 9132 2896 50  0000 R CNN
F 1 "1k2" H 9132 2805 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9240 2840 50  0001 C CNN
F 3 "~" H 9200 2850 50  0001 C CNN
F 4 "Br R R Gd = 1.2KΩ ±5%" H 9200 2850 50  0001 C CNN "Notes"
	1    9200 2850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C169D8
P 7700 2850
AR Path="/60469920/61BF342D/61C169D8" Ref="R?"  Part="1" 
AR Path="/60469920/61C169D8" Ref="R?"  Part="1" 
F 0 "R?" H 7632 2896 50  0000 R CNN
F 1 "510" H 7632 2805 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7740 2840 50  0001 C CNN
F 3 "~" H 7700 2850 50  0001 C CNN
F 4 "Gn Br Br Gd = 510Ω ±5%" H 7700 2850 50  0001 C CNN "Notes"
F 5 "ESR10EZPJ511" H 7700 2850 50  0001 C CNN "manf#"
	1    7700 2850
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 61C169DF
P 8700 3100
AR Path="/60469920/61BF342D/61C169DF" Ref="D?"  Part="1" 
AR Path="/60469920/61C169DF" Ref="D?"  Part="1" 
F 0 "D?" H 8700 2950 50  0000 C CNN
F 1 "D" H 8700 2974 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-523" H 8700 3100 50  0001 C CNN
F 3 "~" H 8700 3100 50  0001 C CNN
F 4 "RB520SM-30T2R" H 8700 3100 50  0001 C CNN "manf#"
	1    8700 3100
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61C169E6
P 8200 3100
AR Path="/60469920/61BF342D/61C169E6" Ref="R?"  Part="1" 
AR Path="/60469920/61C169E6" Ref="R?"  Part="1" 
F 0 "R?" V 8405 3100 50  0000 C CNN
F 1 "2k2" V 8314 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8240 3090 50  0001 C CNN
F 3 "~" H 8200 3100 50  0001 C CNN
F 4 "R R R Gd = 2.2KΩ ±5%" H 8200 3100 50  0001 C CNN "Notes"
	1    8200 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 3100 8350 3100
Wire Wire Line
	9950 3100 9850 3100
Wire Wire Line
	2750 5850 5250 5850
Wire Wire Line
	3000 4100 3000 2050
$Comp
L Device:R R?
U 1 1 61C169F5
P 3750 3350
AR Path="/60469920/61BF342D/61C169F5" Ref="R?"  Part="1" 
AR Path="/60469920/61C169F5" Ref="R?"  Part="1" 
F 0 "R?" H 3682 3396 50  0000 R CNN
F 1 "2K" H 3682 3305 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3790 3340 50  0001 C CNN
F 3 "~" H 3750 3350 50  0001 C CNN
F 4 "R Bk R Gd = 2KΩ ±5%" H 3750 3350 50  0001 C CNN "Notes"
	1    3750 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 5600 5750 5600
Connection ~ 4750 5600
Wire Wire Line
	3750 5600 4750 5600
Connection ~ 3750 5600
Wire Wire Line
	3250 5600 3750 5600
Wire Wire Line
	3750 4800 3750 5600
Wire Wire Line
	4750 4300 4750 5600
Wire Wire Line
	3250 5350 3250 5600
Wire Wire Line
	2750 4600 2750 5850
Wire Wire Line
	2400 4600 2750 4600
Wire Wire Line
	4150 5000 4250 5000
Wire Wire Line
	3250 5000 3250 5050
Connection ~ 3250 5000
Wire Wire Line
	3850 5000 3250 5000
Wire Wire Line
	3250 4600 3250 5000
$Comp
L Device:R R?
U 1 1 61C16A0F
P 4000 5000
AR Path="/60469920/61BF342D/61C16A0F" Ref="R?"  Part="1" 
AR Path="/60469920/61C16A0F" Ref="R?"  Part="1" 
F 0 "R?" V 4100 5000 50  0000 C CNN
F 1 "300" V 4200 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4040 4990 50  0001 C CNN
F 3 "~" H 4000 5000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 4000 5000 50  0001 C CNN "Notes"
	1    4000 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 3500 3750 4100
Connection ~ 4250 4100
Wire Wire Line
	4150 4100 4250 4100
Wire Wire Line
	3750 4100 3750 4400
Wire Wire Line
	3750 4100 3850 4100
Wire Wire Line
	4250 5000 4250 4750
Wire Wire Line
	4250 4100 4450 4100
Wire Wire Line
	4250 4100 4250 4450
Connection ~ 3750 4100
Wire Wire Line
	3250 4600 3450 4600
Connection ~ 3250 4600
Wire Wire Line
	3150 4600 3250 4600
$Comp
L Device:R R?
U 1 1 61C16A22
P 4750 3350
AR Path="/60469920/61BF342D/61C16A22" Ref="R?"  Part="1" 
AR Path="/60469920/61C16A22" Ref="R?"  Part="1" 
F 0 "R?" H 4682 3396 50  0000 R CNN
F 1 "1K" H 4682 3305 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4790 3340 50  0001 C CNN
F 3 "~" H 4750 3350 50  0001 C CNN
F 4 "Br Bk R Gd = 1KΩ ±5%" H 4750 3350 50  0001 C CNN "Notes"
	1    4750 3350
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SD1047 T?
U 1 1 61C16A2A
P 4650 4100
AR Path="/60469920/61BF342D/61C16A2A" Ref="T?"  Part="1" 
AR Path="/60469920/61C16A2A" Ref="T?"  Part="1" 
F 0 "T?" H 4841 4100 50  0000 L BNN
F 1 "PZT2222A,115" V 5000 3850 50  0000 L TNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4850 4025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4650 4100 50  0001 L CNN
F 4 "Lower A-B Line - \"TIY S 09\"" H 4650 4100 50  0001 C CNN "Notes"
F 5 "PZT2222A,115" H 4650 4100 50  0001 C CNN "manf#"
	1    4650 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C16A31
P 4000 4100
AR Path="/60469920/61BF342D/61C16A31" Ref="R?"  Part="1" 
AR Path="/60469920/61C16A31" Ref="R?"  Part="1" 
F 0 "R?" V 4205 4100 50  0000 C CNN
F 1 "2k4" V 4114 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4040 4090 50  0001 C CNN
F 3 "~" H 4000 4100 50  0001 C CNN
F 4 "R Y R Gd = 2.4KΩ ±5%" H 4000 4100 50  0001 C CNN "Notes"
	1    4000 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 61C16A37
P 4250 4600
AR Path="/60469920/61BF342D/61C16A37" Ref="C?"  Part="1" 
AR Path="/60469920/61C16A37" Ref="C?"  Part="1" 
F 0 "C?" H 4135 4646 50  0000 R CNN
F 1 "1n0" H 4135 4555 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4288 4450 50  0001 C CNN
F 3 "~" H 4250 4600 50  0001 C CNN
	1    4250 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C16A3E
P 3250 5200
AR Path="/60469920/61BF342D/61C16A3E" Ref="R?"  Part="1" 
AR Path="/60469920/61C16A3E" Ref="R?"  Part="1" 
F 0 "R?" H 3318 5246 50  0000 L CNN
F 1 "180K" H 3318 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3290 5190 50  0001 C CNN
F 3 "~" H 3250 5200 50  0001 C CNN
F 4 "Br Gr Y Gd = 180KΩ ±5%" H 3250 5200 50  0001 C CNN "Notes"
	1    3250 5200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SD1047 T?
U 1 1 61C16A46
P 3650 4600
AR Path="/60469920/61BF342D/61C16A46" Ref="T?"  Part="1" 
AR Path="/60469920/61C16A46" Ref="T?"  Part="1" 
F 0 "T?" H 3841 4600 50  0000 L BNN
F 1 "PZT2222A,115" H 3150 4850 50  0000 L TNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3850 4525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3650 4600 50  0001 L CNN
F 4 "Left B-G Line" H 3650 4600 50  0001 C CNN "Notes"
F 5 "PZT2222A,115" H 3650 4600 50  0001 C CNN "manf#"
	1    3650 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 61C16A4D
P 3000 4600
AR Path="/60469920/61BF342D/61C16A4D" Ref="D?"  Part="1" 
AR Path="/60469920/61C16A4D" Ref="D?"  Part="1" 
F 0 "D?" H 3000 4475 50  0000 C CNN
F 1 "D" H 3000 4474 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-523" H 3000 4600 50  0001 C CNN
F 3 "~" H 3000 4600 50  0001 C CNN
F 4 "RB520SM-30T2R" H 3000 4600 50  0001 C CNN "manf#"
	1    3000 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 3100 9200 3100
Wire Wire Line
	3750 2600 4750 2600
Wire Wire Line
	9200 2700 9200 2600
Connection ~ 9200 2600
Wire Wire Line
	7700 2700 7700 2600
Connection ~ 7700 2600
Wire Wire Line
	7700 2600 9200 2600
Wire Wire Line
	9200 3000 9200 3100
Connection ~ 9200 3100
Wire Wire Line
	9200 3100 9550 3100
Wire Wire Line
	3750 2600 3750 3200
Wire Wire Line
	4750 2600 4750 3200
Connection ~ 4750 2600
Wire Wire Line
	4750 2600 5250 2600
Connection ~ 4750 3600
Connection ~ 2750 4600
Wire Wire Line
	4750 3600 4750 3900
Wire Wire Line
	4750 3500 4750 3600
Wire Wire Line
	3000 4100 3750 4100
Wire Wire Line
	2750 4600 2850 4600
$Comp
L Device:C C?
U 1 1 61C16A71
P 6250 4100
AR Path="/60469920/61BF342D/61C16A71" Ref="C?"  Part="1" 
AR Path="/60469920/61C16A71" Ref="C?"  Part="1" 
F 0 "C?" V 5998 4100 50  0000 C CNN
F 1 "6n8" V 6089 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6288 3950 50  0001 C CNN
F 3 "~" H 6250 4100 50  0001 C CNN
	1    6250 4100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61C16A78
P 5750 4350
AR Path="/60469920/61BF342D/61C16A78" Ref="R?"  Part="1" 
AR Path="/60469920/61C16A78" Ref="R?"  Part="1" 
F 0 "R?" H 5682 4396 50  0000 R CNN
F 1 "68K" H 5682 4305 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5790 4340 50  0001 C CNN
F 3 "~" H 5750 4350 50  0001 C CNN
F 4 "Bl Gr O Gd = 68KΩ ±5%" H 5750 4350 50  0001 C CNN "Notes"
	1    5750 4350
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 61C16A7F
P 5500 4100
AR Path="/60469920/61BF342D/61C16A7F" Ref="D?"  Part="1" 
AR Path="/60469920/61C16A7F" Ref="D?"  Part="1" 
F 0 "D?" H 5500 3975 50  0000 C CNN
F 1 "D" H 5500 4226 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-523" H 5500 4100 50  0001 C CNN
F 3 "~" H 5500 4100 50  0001 C CNN
F 4 "RB520SM-30T2R" H 5500 4100 50  0001 C CNN "manf#"
	1    5500 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5750 4100 5750 4200
Connection ~ 5750 4100
$Comp
L Device:C C?
U 1 1 61C16A87
P 7750 4600
AR Path="/60469920/61BF342D/61C16A87" Ref="C?"  Part="1" 
AR Path="/60469920/61C16A87" Ref="C?"  Part="1" 
F 0 "C?" V 7498 4600 50  0000 C CNN
F 1 "6n8" V 7589 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7788 4450 50  0001 C CNN
F 3 "~" H 7750 4600 50  0001 C CNN
	1    7750 4600
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61C16A8E
P 7250 3350
AR Path="/60469920/61BF342D/61C16A8E" Ref="R?"  Part="1" 
AR Path="/60469920/61C16A8E" Ref="R?"  Part="1" 
F 0 "R?" H 7182 3396 50  0000 R CNN
F 1 "130K" H 7182 3305 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7290 3340 50  0001 C CNN
F 3 "~" H 7250 3350 50  0001 C CNN
F 4 "Br O Y Gd = 130KΩ ±5%" H 7250 3350 50  0001 C CNN "Notes"
	1    7250 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C16A95
P 7250 5100
AR Path="/60469920/61BF342D/61C16A95" Ref="R?"  Part="1" 
AR Path="/60469920/61C16A95" Ref="R?"  Part="1" 
F 0 "R?" H 7182 5146 50  0000 R CNN
F 1 "68K" H 7182 5055 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7290 5090 50  0001 C CNN
F 3 "~" H 7250 5100 50  0001 C CNN
F 4 "Bl Gr O Gd = 68KΩ ±5%" H 7250 5100 50  0001 C CNN "Notes"
	1    7250 5100
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 61C16A9C
P 6750 4600
AR Path="/60469920/61BF342D/61C16A9C" Ref="D?"  Part="1" 
AR Path="/60469920/61C16A9C" Ref="D?"  Part="1" 
F 0 "D?" H 6750 4725 50  0000 C CNN
F 1 "D" H 6750 4726 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-523" H 6750 4600 50  0001 C CNN
F 3 "~" H 6750 4600 50  0001 C CNN
F 4 "RB520SM-30T2R" H 6750 4600 50  0001 C CNN "manf#"
	1    6750 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 4600 7250 4950
Connection ~ 7250 4600
$Comp
L Device:R R?
U 1 1 61C16AA5
P 5250 3350
AR Path="/60469920/61BF342D/61C16AA5" Ref="R?"  Part="1" 
AR Path="/60469920/61C16AA5" Ref="R?"  Part="1" 
F 0 "R?" H 5182 3396 50  0000 R CNN
F 1 "100K" H 5182 3305 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5290 3340 50  0001 C CNN
F 3 "~" H 5250 3350 50  0001 C CNN
F 4 "Br Bk Y Gd = 100KΩ ±5%" H 5250 3350 50  0001 C CNN "Notes"
	1    5250 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5250 3500 5250 4100
Wire Wire Line
	5250 4100 5350 4100
Connection ~ 5250 4100
Wire Wire Line
	5250 4100 5250 4600
Wire Wire Line
	5250 4600 6600 4600
Connection ~ 5250 4600
Wire Wire Line
	5750 4100 6100 4100
Wire Wire Line
	5750 4100 5650 4100
Wire Wire Line
	7250 4600 7600 4600
Wire Wire Line
	5750 3500 5750 4100
$Comp
L Device:R R?
U 1 1 61C16AB6
P 5750 3350
AR Path="/60469920/61BF342D/61C16AB6" Ref="R?"  Part="1" 
AR Path="/60469920/61C16AB6" Ref="R?"  Part="1" 
F 0 "R?" H 5682 3396 50  0000 R CNN
F 1 "130K" H 5682 3305 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5790 3340 50  0001 C CNN
F 3 "~" H 5750 3350 50  0001 C CNN
F 4 "Br O Y Gd = 130KΩ ±5%" H 5750 3350 50  0001 C CNN "Notes"
	1    5750 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 5250 7250 5600
Wire Wire Line
	5750 4500 5750 5600
Wire Wire Line
	7250 3500 7250 4600
Wire Wire Line
	6750 4100 6400 4100
Wire Wire Line
	6750 2600 6750 4100
Wire Wire Line
	5250 4600 5250 5850
Connection ~ 5250 2600
Wire Wire Line
	5250 2600 5750 2600
Connection ~ 5750 2600
Wire Wire Line
	5750 2600 6750 2600
Wire Wire Line
	8000 2150 8000 4600
Connection ~ 6750 2600
Wire Wire Line
	6750 2600 7250 2600
Wire Wire Line
	7900 4600 8000 4600
Wire Wire Line
	5250 2600 5250 3200
Wire Wire Line
	5750 2600 5750 3200
Wire Wire Line
	7250 2600 7250 3200
Wire Wire Line
	6900 4600 7250 4600
Connection ~ 5750 5600
Wire Wire Line
	5750 5600 7250 5600
Connection ~ 7250 5600
Wire Wire Line
	7700 3000 7700 3100
Connection ~ 7700 3100
Wire Wire Line
	7700 3100 8050 3100
Wire Wire Line
	7250 2600 7700 2600
Connection ~ 7250 2600
Wire Wire Line
	1600 3100 7700 3100
$Comp
L power:GND #PWR?
U 1 1 61C3E06A
P 7250 5950
F 0 "#PWR?" H 7250 5700 50  0001 C CNN
F 1 "GND" H 7255 5777 50  0000 C CNN
F 2 "" H 7250 5950 50  0001 C CNN
F 3 "" H 7250 5950 50  0001 C CNN
	1    7250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5950 7250 5600
$Comp
L power:+10V #PWR?
U 1 1 61C41D36
P 9200 2300
F 0 "#PWR?" H 9200 2150 50  0001 C CNN
F 1 "+10V" H 9215 2473 50  0000 C CNN
F 2 "" H 9200 2300 50  0001 C CNN
F 3 "" H 9200 2300 50  0001 C CNN
	1    9200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2300 9200 2600
Text Notes 1250 5150 0    50   ~ 0
7 and 8 are MPS coil outputs
Wire Wire Line
	1600 3600 4750 3600
$EndSCHEMATC

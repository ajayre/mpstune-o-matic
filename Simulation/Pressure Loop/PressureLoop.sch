EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr C 22000 17000
encoding utf-8
Sheet 1 1
Title "Bosch D-Jetronic ECU 0 280 002 005 Pressure Loop"
Date "2021-12-11"
Rev "1.00"
Comp "Mercedes-Benz"
Comment1 "M117.982 Engine"
Comment2 "Bosch Order # 0 280 002 005"
Comment3 "Mercedes-Benz Part # A 000 545 26 32"
Comment4 "Main Board 2 288 300 028"
$EndDescr
Text GLabel 2650 4750 3    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	2650 3750 2650 4050
Text GLabel 2650 3000 1    50   Input ~ 0
E24-12V
$Comp
L Simulation_SPICE:VDC V2
U 1 1 604E83CA
P 2650 4250
F 0 "V2" H 2780 4341 50  0000 L CNN
F 1 "12" H 2780 4250 50  0000 L CNN
F 2 "" H 2650 4250 50  0001 C CNN
F 3 "~" H 2650 4250 50  0001 C CNN
F 4 "Y" H 2650 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2650 4250 50  0001 L CNN "Spice_Primitive"
F 6 "dc(12)" H 2780 4159 50  0000 L CNN "Spice_Model"
	1    2650 4250
	1    0    0    -1  
$EndComp
Text GLabel 2850 4600 3    50   Input ~ 0
0
$Comp
L Simulation_SPICE:VPULSE V3
U 1 1 605351C4
P 3300 4250
F 0 "V3" H 3430 4341 50  0000 L CNN
F 1 "VPULSE" H 3430 4250 50  0000 L CNN
F 2 "" H 3300 4250 50  0001 C CNN
F 3 "~" H 3300 4250 50  0001 C CNN
F 4 "Y" H 3300 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3300 4250 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3 2n 2n 2n 60ms 180ms)" H 3430 4159 50  0000 L CNN "Spice_Model"
	1    3300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4600 3300 4450
$Comp
L Simulation_SPICE:VPULSE V4
U 1 1 604FE76E
P 3900 4050
F 0 "V4" H 4030 4141 50  0000 L CNN
F 1 "VPULSE" H 4030 4050 50  0000 L CNN
F 2 "" H 3900 4050 50  0001 C CNN
F 3 "~" H 3900 4050 50  0001 C CNN
F 4 "Y" H 3900 4050 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3900 4050 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3 90ms 2n 2n 60ms 180ms)" H 4030 3959 50  0000 L CNN "Spice_Model"
	1    3900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4250 3900 4600
Wire Wire Line
	3900 4600 3300 4600
Wire Wire Line
	2650 4450 2650 4600
Connection ~ 3300 4600
Wire Wire Line
	2650 4600 3300 4600
Connection ~ 2650 4600
Wire Wire Line
	2650 4600 2650 4750
$Comp
L Simulation_SPICE:VDC VBOGUS2
U 1 1 6056FD5A
P 2650 3550
F 0 "VBOGUS2" H 2780 3641 50  0000 L CNN
F 1 "0" H 2780 3550 50  0000 L CNN
F 2 "" H 2650 3550 50  0001 C CNN
F 3 "~" H 2650 3550 50  0001 C CNN
F 4 "Y" H 2650 3550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2650 3550 50  0001 L CNN "Spice_Primitive"
F 6 "dc(0)" H 2780 3459 50  0000 L CNN "Spice_Model"
	1    2650 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3000 2650 3350
Text GLabel 11100 2650 0    50   Input ~ 0
E22-PG
$Comp
L Device:R_US R15
U 1 1 61B621D6
P 11700 2650
F 0 "R15" V 11800 2700 50  0000 L CNN
F 1 "3k" V 11800 2550 50  0000 L CNN
F 2 "Upper Center K" V 11740 2640 50  0001 C CNN
F 3 "~" H 11700 2650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11700 2650 50  0001 C CNN "Notes"
	1    11700 2650
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 61B62EF3
P 13450 2650
F 0 "Q3" H 13640 2696 50  0000 L CNN
F 1 "BCY58" H 13640 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13650 2575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13450 2650 50  0001 L CNN
F 4 "Center K" H 13450 2650 50  0001 C CNN "Notes"
	1    13450 2650
	1    0    0    -1  
$EndComp
Text GLabel 17300 1150 2    50   Input ~ 0
E24-12V
$Comp
L Device:R_US R16
U 1 1 61B643F7
P 11700 3150
F 0 "R16" V 11800 3200 50  0000 L CNN
F 1 "3k" V 11800 3050 50  0000 L CNN
F 2 "Upper Center K" V 11740 3140 50  0001 C CNN
F 3 "~" H 11700 3150 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11700 3150 50  0001 C CNN "Notes"
	1    11700 3150
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D6
U 1 1 61B64807
P 12150 2650
F 0 "D6" H 12100 2550 50  0000 L CNN
F 1 "DIODE" V 12195 2730 50  0001 L CNN
F 2 "" H 12150 2650 50  0001 C CNN
F 3 "~" H 12150 2650 50  0001 C CNN
F 4 "Y" H 12150 2650 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 12150 2650 50  0001 L CNN "Spice_Primitive"
	1    12150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 2650 11350 2650
Wire Wire Line
	11850 2650 12000 2650
$Comp
L Device:R_US R28
U 1 1 61B7AB77
P 12500 2950
F 0 "R28" H 12568 2996 50  0000 L CNN
F 1 "300" H 12568 2905 50  0000 L CNN
F 2 "Upper Center K" V 12540 2940 50  0001 C CNN
F 3 "~" H 12500 2950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12500 2950 50  0001 C CNN "Notes"
	1    12500 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 61B7B220
P 12500 3450
F 0 "C1" H 12300 3500 50  0000 L CNN
F 1 "2.2n" H 12250 3400 50  0000 L CNN
F 2 "Right D Line" H 12538 3300 50  0001 C CNN
F 3 "~" H 12500 3450 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 12500 3450 50  0001 C CNN "Notes"
	1    12500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 2650 12500 2650
Wire Wire Line
	12500 2650 12500 2800
Wire Wire Line
	12500 3100 12500 3300
Wire Wire Line
	12500 3600 12500 4050
$Comp
L Simulation_SPICE:DIODE D7
U 1 1 61B9D9D2
P 12150 4050
F 0 "D7" H 12100 3950 50  0000 L CNN
F 1 "DIODE" V 12195 4130 50  0001 L CNN
F 2 "" H 12150 4050 50  0001 C CNN
F 3 "~" H 12150 4050 50  0001 C CNN
F 4 "Y" H 12150 4050 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 12150 4050 50  0001 L CNN "Spice_Primitive"
	1    12150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 4050 12500 4050
$Comp
L Device:R_US R18
U 1 1 61BAA8F8
P 11700 4050
F 0 "R18" V 11800 4100 50  0000 L CNN
F 1 "3k" V 11800 3950 50  0000 L CNN
F 2 "Upper Center K" V 11740 4040 50  0001 C CNN
F 3 "~" H 11700 4050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11700 4050 50  0001 C CNN "Notes"
	1    11700 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	11850 4050 12000 4050
$Comp
L Device:R_US R17
U 1 1 61BB6A67
P 11700 3650
F 0 "R17" V 11800 3700 50  0000 L CNN
F 1 "3k" V 11800 3550 50  0000 L CNN
F 2 "Upper Center K" V 11740 3640 50  0001 C CNN
F 3 "~" H 11700 3650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11700 3650 50  0001 C CNN "Notes"
	1    11700 3650
	0    1    1    0   
$EndComp
Text GLabel 11100 4050 0    50   Input ~ 0
E21-PG
Wire Wire Line
	11100 4050 11350 4050
Wire Wire Line
	11550 3650 11350 3650
Wire Wire Line
	11350 3650 11350 4050
Connection ~ 11350 4050
Wire Wire Line
	11350 4050 11550 4050
Wire Wire Line
	11550 3150 11350 3150
Wire Wire Line
	11350 3150 11350 2650
Connection ~ 11350 2650
Wire Wire Line
	11350 2650 11550 2650
$Comp
L Device:R_US R32
U 1 1 61BE822B
P 13050 2950
F 0 "R32" H 12900 3000 50  0000 L CNN
F 1 "180k" H 12800 2900 50  0000 L CNN
F 2 "Upper Center K" V 13090 2940 50  0001 C CNN
F 3 "~" H 13050 2950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13050 2950 50  0001 C CNN "Notes"
	1    13050 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	12500 2650 13050 2650
Connection ~ 12500 2650
Wire Wire Line
	13050 2800 13050 2650
Connection ~ 13050 2650
Wire Wire Line
	13050 2650 13250 2650
$Comp
L Device:R_US R37
U 1 1 61C032FE
P 13550 2200
F 0 "R37" H 13618 2246 50  0000 L CNN
F 1 "1k" H 13618 2155 50  0000 L CNN
F 2 "Upper Center K" V 13590 2190 50  0001 C CNN
F 3 "~" H 13550 2200 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13550 2200 50  0001 C CNN "Notes"
	1    13550 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	17300 1150 16450 1150
Wire Wire Line
	13550 1150 13550 2050
Wire Wire Line
	13550 2350 13550 2400
Wire Wire Line
	13050 3200 13050 3100
Wire Wire Line
	13550 2850 13550 3200
Wire Wire Line
	13550 3200 13050 3200
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 61C3BD58
P 13450 4050
F 0 "Q4" H 13640 4096 50  0000 L CNN
F 1 "BCY58" H 13640 4005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13650 3975 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13450 4050 50  0001 L CNN
F 4 "Center K" H 13450 4050 50  0001 C CNN "Notes"
	1    13450 4050
	1    0    0    -1  
$EndComp
Text GLabel 14000 3350 2    50   Input ~ 0
E24-12V
$Comp
L Device:R_US R33
U 1 1 61C3BD65
P 13050 4350
F 0 "R33" H 12850 4400 50  0000 L CNN
F 1 "180k" H 12800 4300 50  0000 L CNN
F 2 "Upper Center K" V 13090 4340 50  0001 C CNN
F 3 "~" H 13050 4350 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13050 4350 50  0001 C CNN "Notes"
	1    13050 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	13050 4200 13050 4050
Wire Wire Line
	13050 4050 13250 4050
$Comp
L Device:R_US R38
U 1 1 61C3BD74
P 13550 3600
F 0 "R38" H 13618 3646 50  0000 L CNN
F 1 "1k" H 13618 3555 50  0000 L CNN
F 2 "Upper Center K" V 13590 3590 50  0001 C CNN
F 3 "~" H 13550 3600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13550 3600 50  0001 C CNN "Notes"
	1    13550 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	14000 3350 13550 3350
Wire Wire Line
	13550 3350 13550 3450
Wire Wire Line
	13550 3750 13550 3800
Wire Wire Line
	13050 4600 13050 4500
Wire Wire Line
	13550 4250 13550 4600
Wire Wire Line
	13550 4600 13050 4600
Wire Wire Line
	13050 4050 12500 4050
Connection ~ 13050 4050
Connection ~ 12500 4050
Wire Wire Line
	11850 3150 12900 3150
Wire Wire Line
	12900 3150 12900 3800
Wire Wire Line
	12900 3800 13550 3800
Connection ~ 13550 3800
Wire Wire Line
	13550 3800 13550 3850
Wire Wire Line
	11850 3650 12800 3650
Wire Wire Line
	12800 3650 12800 2400
Wire Wire Line
	12800 2400 13550 2400
Connection ~ 13550 2400
Wire Wire Line
	13550 2400 13550 2450
Text GLabel 14050 2400 3    50   Input ~ 0
FF1
Text GLabel 14050 3800 3    50   Input ~ 0
FF2
$Comp
L Device:R_US R43
U 1 1 61CFD7AE
P 14800 2400
F 0 "R43" V 14900 2450 50  0000 L CNN
F 1 "10k" V 14900 2300 50  0000 L CNN
F 2 "Upper Center K" V 14840 2390 50  0001 C CNN
F 3 "~" H 14800 2400 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14800 2400 50  0001 C CNN "Notes"
	1    14800 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	13550 2400 14650 2400
$Comp
L Transistor_BJT:BC547 Q7
U 1 1 61D0221D
P 15500 2400
F 0 "Q7" H 15690 2446 50  0000 L CNN
F 1 "BCY58" H 15690 2355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 15700 2325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 15500 2400 50  0001 L CNN
F 4 "Center K" H 15500 2400 50  0001 C CNN "Notes"
	1    15500 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R47
U 1 1 61D03BD1
P 15600 1850
F 0 "R47" H 15668 1896 50  0000 L CNN
F 1 "2k" H 15668 1805 50  0000 L CNN
F 2 "Upper Center K" V 15640 1840 50  0001 C CNN
F 3 "~" H 15600 1850 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15600 1850 50  0001 C CNN "Notes"
	1    15600 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	15600 2000 15600 2050
Wire Wire Line
	15600 1700 15600 1150
Connection ~ 15600 1150
Wire Wire Line
	15600 2600 15600 3200
Connection ~ 15600 3200
$Comp
L Device:R_US R49
U 1 1 61D0AEAA
P 15900 2050
F 0 "R49" V 16000 2100 50  0000 L CNN
F 1 "5k1" V 16000 1950 50  0000 L CNN
F 2 "Upper Center K" V 15940 2040 50  0001 C CNN
F 3 "~" H 15900 2050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15900 2050 50  0001 C CNN "Notes"
	1    15900 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	15750 2050 15600 2050
Connection ~ 15600 2050
Wire Wire Line
	15600 2050 15600 2200
Text GLabel 17300 2050 2    50   Output ~ 0
INT-7
Wire Wire Line
	17300 2050 17150 2050
Connection ~ 16450 4600
Wire Wire Line
	16450 3450 16450 3600
Connection ~ 16450 3450
Wire Wire Line
	16700 3450 16450 3450
$Comp
L Device:R_US R52
U 1 1 61D0E025
P 16850 3450
F 0 "R52" V 16950 3500 50  0000 L CNN
F 1 "5k1" V 16950 3350 50  0000 L CNN
F 2 "Upper Center K" V 16890 3440 50  0001 C CNN
F 3 "~" H 16850 3450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16850 3450 50  0001 C CNN "Notes"
	1    16850 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	16450 4000 16450 4600
Wire Wire Line
	16450 3400 16450 3450
$Comp
L Device:R_US R51
U 1 1 61D0E013
P 16450 3250
F 0 "R51" H 16518 3296 50  0000 L CNN
F 1 "2k" H 16518 3205 50  0000 L CNN
F 2 "Upper Center K" V 16490 3240 50  0001 C CNN
F 3 "~" H 16450 3250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16450 3250 50  0001 C CNN "Notes"
	1    16450 3250
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q9
U 1 1 61D0E007
P 16350 3800
F 0 "Q9" H 16540 3846 50  0000 L CNN
F 1 "BCY58" H 16540 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 16550 3725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 16350 3800 50  0001 L CNN
F 4 "Center K" H 16350 3800 50  0001 C CNN "Notes"
	1    16350 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R44
U 1 1 61D0DFFB
P 14800 3800
F 0 "R44" V 14900 3850 50  0000 L CNN
F 1 "10k" V 14900 3700 50  0000 L CNN
F 2 "Upper Center K" V 14840 3790 50  0001 C CNN
F 3 "~" H 14800 3800 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14800 3800 50  0001 C CNN "Notes"
	1    14800 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	17300 4600 16450 4600
Text GLabel 17300 4600 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	13550 3800 14650 3800
Wire Wire Line
	16450 3100 16450 1150
Connection ~ 16450 1150
Wire Wire Line
	16450 1150 15600 1150
Wire Wire Line
	15600 3200 15600 4600
Connection ~ 15600 4600
Wire Wire Line
	15600 4600 16450 4600
Wire Wire Line
	17000 3450 17150 3450
Wire Wire Line
	17150 3450 17150 2050
Connection ~ 17150 2050
Wire Wire Line
	17150 2050 16050 2050
Text GLabel 3300 3000 1    50   Input ~ 0
E22-PG
Text GLabel 3900 3000 1    50   Input ~ 0
E21-PG
Wire Wire Line
	3300 3000 3300 4050
Wire Wire Line
	3900 3000 3900 3850
Text GLabel 11100 5600 0    50   Input ~ 0
E14-PG
$Comp
L Device:R_US R19
U 1 1 61D60135
P 11700 5600
F 0 "R19" V 11800 5650 50  0000 L CNN
F 1 "3k" V 11800 5500 50  0000 L CNN
F 2 "Upper Center K" V 11740 5590 50  0001 C CNN
F 3 "~" H 11700 5600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11700 5600 50  0001 C CNN "Notes"
	1    11700 5600
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 61D60140
P 13450 5600
F 0 "Q5" H 13640 5646 50  0000 L CNN
F 1 "BCY58" H 13640 5555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13650 5525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13450 5600 50  0001 L CNN
F 4 "Center K" H 13450 5600 50  0001 C CNN "Notes"
	1    13450 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 61D6014B
P 11700 6100
F 0 "R20" V 11800 6150 50  0000 L CNN
F 1 "3k" V 11800 6000 50  0000 L CNN
F 2 "Upper Center K" V 11740 6090 50  0001 C CNN
F 3 "~" H 11700 6100 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11700 6100 50  0001 C CNN "Notes"
	1    11700 6100
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D8
U 1 1 61D60157
P 12150 5600
F 0 "D8" H 12100 5500 50  0000 L CNN
F 1 "DIODE" V 12195 5680 50  0001 L CNN
F 2 "" H 12150 5600 50  0001 C CNN
F 3 "~" H 12150 5600 50  0001 C CNN
F 4 "Y" H 12150 5600 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 12150 5600 50  0001 L CNN "Spice_Primitive"
	1    12150 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 5600 11350 5600
Wire Wire Line
	11850 5600 12000 5600
$Comp
L Device:R_US R29
U 1 1 61D60164
P 12500 5900
F 0 "R29" H 12568 5946 50  0000 L CNN
F 1 "300" H 12568 5855 50  0000 L CNN
F 2 "Upper Center K" V 12540 5890 50  0001 C CNN
F 3 "~" H 12500 5900 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12500 5900 50  0001 C CNN "Notes"
	1    12500 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 61D6016F
P 12500 6400
F 0 "C2" H 12300 6450 50  0000 L CNN
F 1 "2.2n" H 12250 6350 50  0000 L CNN
F 2 "Right D Line" H 12538 6250 50  0001 C CNN
F 3 "~" H 12500 6400 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 12500 6400 50  0001 C CNN "Notes"
	1    12500 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 5600 12500 5600
Wire Wire Line
	12500 5600 12500 5750
Wire Wire Line
	12500 6050 12500 6250
Wire Wire Line
	12500 6550 12500 7000
$Comp
L Device:R_US R22
U 1 1 61D6018B
P 11700 7000
F 0 "R22" V 11800 7050 50  0000 L CNN
F 1 "3k" V 11800 6900 50  0000 L CNN
F 2 "Upper Center K" V 11740 6990 50  0001 C CNN
F 3 "~" H 11700 7000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11700 7000 50  0001 C CNN "Notes"
	1    11700 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R21
U 1 1 61D60197
P 11700 6600
F 0 "R21" V 11800 6650 50  0000 L CNN
F 1 "3k" V 11800 6500 50  0000 L CNN
F 2 "Upper Center K" V 11740 6590 50  0001 C CNN
F 3 "~" H 11700 6600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11700 6600 50  0001 C CNN "Notes"
	1    11700 6600
	0    1    1    0   
$EndComp
Text GLabel 11100 7000 0    50   Input ~ 0
E13-PG
Wire Wire Line
	11100 7000 11350 7000
Wire Wire Line
	11550 6600 11350 6600
Wire Wire Line
	11350 6600 11350 7000
Connection ~ 11350 7000
Wire Wire Line
	11350 7000 11550 7000
Wire Wire Line
	11550 6100 11350 6100
Wire Wire Line
	11350 6100 11350 5600
Connection ~ 11350 5600
Wire Wire Line
	11350 5600 11550 5600
$Comp
L Device:R_US R34
U 1 1 61D601AC
P 13050 5900
F 0 "R34" H 12900 5950 50  0000 L CNN
F 1 "180k" H 12800 5850 50  0000 L CNN
F 2 "Upper Center K" V 13090 5890 50  0001 C CNN
F 3 "~" H 13050 5900 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13050 5900 50  0001 C CNN "Notes"
	1    13050 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	12500 5600 13050 5600
Connection ~ 12500 5600
Wire Wire Line
	13050 5750 13050 5600
Connection ~ 13050 5600
Wire Wire Line
	13050 5600 13250 5600
$Comp
L Device:R_US R39
U 1 1 61D601BC
P 13550 5150
F 0 "R39" H 13618 5196 50  0000 L CNN
F 1 "1k" H 13618 5105 50  0000 L CNN
F 2 "Upper Center K" V 13590 5140 50  0001 C CNN
F 3 "~" H 13550 5150 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13550 5150 50  0001 C CNN "Notes"
	1    13550 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	13550 5300 13550 5350
Wire Wire Line
	13050 6150 13050 6050
Wire Wire Line
	13550 5800 13550 6150
Wire Wire Line
	13550 6150 13050 6150
$Comp
L Transistor_BJT:BC547 Q6
U 1 1 61D601CD
P 13450 7000
F 0 "Q6" H 13640 7046 50  0000 L CNN
F 1 "BCY58" H 13640 6955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13650 6925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13450 7000 50  0001 L CNN
F 4 "Center K" H 13450 7000 50  0001 C CNN "Notes"
	1    13450 7000
	1    0    0    -1  
$EndComp
Text GLabel 14000 6300 2    50   Input ~ 0
E24-12V
$Comp
L Device:R_US R35
U 1 1 61D601D9
P 13050 7300
F 0 "R35" H 12850 7350 50  0000 L CNN
F 1 "180k" H 12800 7250 50  0000 L CNN
F 2 "Upper Center K" V 13090 7290 50  0001 C CNN
F 3 "~" H 13050 7300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13050 7300 50  0001 C CNN "Notes"
	1    13050 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	13050 7150 13050 7000
Wire Wire Line
	13050 7000 13250 7000
$Comp
L Device:R_US R40
U 1 1 61D601E6
P 13550 6550
F 0 "R40" H 13618 6596 50  0000 L CNN
F 1 "1k" H 13618 6505 50  0000 L CNN
F 2 "Upper Center K" V 13590 6540 50  0001 C CNN
F 3 "~" H 13550 6550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13550 6550 50  0001 C CNN "Notes"
	1    13550 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	14000 6300 13550 6300
Wire Wire Line
	13550 6300 13550 6400
Wire Wire Line
	13550 6700 13550 6750
Wire Wire Line
	13050 7000 12500 7000
Connection ~ 13050 7000
Connection ~ 12500 7000
Wire Wire Line
	11850 6100 12900 6100
Wire Wire Line
	12900 6100 12900 6750
Wire Wire Line
	12900 6750 13550 6750
Connection ~ 13550 6750
Wire Wire Line
	13550 6750 13550 6800
Wire Wire Line
	11850 6600 12800 6600
Wire Wire Line
	12800 6600 12800 5350
Wire Wire Line
	12800 5350 13550 5350
Connection ~ 13550 5350
Wire Wire Line
	13550 5350 13550 5400
Text GLabel 14050 5350 3    50   Input ~ 0
FF3
Text GLabel 14050 6750 3    50   Input ~ 0
FF4
Wire Wire Line
	13550 5350 14650 5350
Wire Wire Line
	13550 6750 14650 6750
Text GLabel 14000 4850 2    50   Input ~ 0
E24-12V
Wire Wire Line
	14000 4850 13550 4850
Wire Wire Line
	13550 4850 13550 5000
Connection ~ 13550 6150
Wire Wire Line
	14000 6150 13550 6150
Text GLabel 14000 6150 2    50   UnSpc ~ 0
E11-GND
$Comp
L Device:R_US R45
U 1 1 61D8BD9D
P 14800 5350
F 0 "R45" V 14900 5400 50  0000 L CNN
F 1 "10k" V 14900 5250 50  0000 L CNN
F 2 "Upper Center K" V 14840 5340 50  0001 C CNN
F 3 "~" H 14800 5350 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14800 5350 50  0001 C CNN "Notes"
	1    14800 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R46
U 1 1 61D8C4AC
P 14800 6750
F 0 "R46" V 14900 6800 50  0000 L CNN
F 1 "10k" V 14900 6650 50  0000 L CNN
F 2 "Upper Center K" V 14840 6740 50  0001 C CNN
F 3 "~" H 14800 6750 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14800 6750 50  0001 C CNN "Notes"
	1    14800 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	14950 5350 15100 5350
Wire Wire Line
	15100 5350 15100 3800
Wire Wire Line
	15100 3800 14950 3800
Wire Wire Line
	13550 1150 15600 1150
Wire Wire Line
	13550 3200 15600 3200
Connection ~ 13550 3200
Wire Wire Line
	15100 3800 16150 3800
Connection ~ 15100 3800
Wire Wire Line
	14950 2400 15200 2400
Wire Wire Line
	13550 4600 15600 4600
Connection ~ 13550 4600
Wire Wire Line
	14950 6750 15200 6750
Wire Wire Line
	15200 6750 15200 2400
Connection ~ 15200 2400
Wire Wire Line
	15200 2400 15300 2400
Text GLabel 4450 3000 1    50   Input ~ 0
E14-PG
Text GLabel 5050 3000 1    50   Input ~ 0
E13-PG
$Comp
L Simulation_SPICE:VPULSE V5
U 1 1 61DE27A0
P 4450 3750
F 0 "V5" H 4580 3841 50  0000 L CNN
F 1 "VPULSE" H 4580 3750 50  0000 L CNN
F 2 "" H 4450 3750 50  0001 C CNN
F 3 "~" H 4450 3750 50  0001 C CNN
F 4 "Y" H 4450 3750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 4450 3750 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3 45ms 2n 2n 60ms 180ms)" H 4580 3659 50  0000 L CNN "Spice_Model"
	1    4450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4600 4450 3950
$Comp
L Simulation_SPICE:VPULSE V6
U 1 1 61DE27AE
P 5050 3550
F 0 "V6" H 5180 3641 50  0000 L CNN
F 1 "VPULSE" H 5180 3550 50  0000 L CNN
F 2 "" H 5050 3550 50  0001 C CNN
F 3 "~" H 5050 3550 50  0001 C CNN
F 4 "Y" H 5050 3550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 5050 3550 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3 135ms 2n 2n 60ms 180ms)" H 5180 3459 50  0000 L CNN "Spice_Model"
	1    5050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3750 5050 4600
Wire Wire Line
	5050 4600 4450 4600
Connection ~ 4450 4600
Wire Wire Line
	3900 4600 4450 4600
Wire Wire Line
	4450 3000 4450 3550
Wire Wire Line
	5050 3000 5050 3350
Connection ~ 3900 4600
Text Notes 5350 3050 0    50   ~ 0
Engine speed of 666.67 RPM\n= 333.35 RPM at distributor\n= 333.35 / 60 = 5.56 rotations per second at distributor\n1 / 5.56 = 180ms per rotation\n120 degrees of dwell = 180ms / 3 = 60ms\n
Text Notes 3900 2550 0    50   ~ 0
I
Text Notes 5000 2550 0    50   ~ 0
II
Text Notes 3250 2550 0    50   ~ 0
III
Text Notes 4400 2550 0    50   ~ 0
IV
Text GLabel 8150 9200 0    50   Input ~ 0
INT-7
$Comp
L Device:R_US R48
U 1 1 61B7C36B
P 8700 8650
F 0 "R48" H 8550 8700 50  0000 L CNN
F 1 "1k" H 8550 8600 50  0000 L CNN
F 2 "Upper Center K" V 8740 8640 50  0001 C CNN
F 3 "~" H 8700 8650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8700 8650 50  0001 C CNN "Notes"
	1    8700 8650
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q8
U 1 1 61B7C79E
P 8600 9200
F 0 "Q8" H 8790 9246 50  0000 L CNN
F 1 "BCY58" H 8790 9155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8800 9125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8600 9200 50  0001 L CNN
F 4 "Center K" H 8600 9200 50  0001 C CNN "Notes"
	1    8600 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 9200 8400 9200
Wire Wire Line
	8700 9000 8700 8900
Text GLabel 12800 8100 2    50   Input ~ 0
E24-12V
Text GLabel 12850 10500 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	12800 8100 12400 8100
Wire Wire Line
	8700 8100 8700 8500
$Comp
L Transistor_BJT:BC547 Q10
U 1 1 61B8CA77
P 10050 9450
F 0 "Q10" H 10240 9496 50  0000 L CNN
F 1 "BCY58" H 10240 9405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10250 9375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 10050 9450 50  0001 L CNN
F 4 "Center K" H 10050 9450 50  0001 C CNN "Notes"
	1    10050 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R50
U 1 1 61B8D9D0
P 9500 9450
F 0 "R50" V 9600 9500 50  0000 L CNN
F 1 "10k" V 9600 9350 50  0000 L CNN
F 2 "Upper Center K" V 9540 9440 50  0001 C CNN
F 3 "~" H 9500 9450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9500 9450 50  0001 C CNN "Notes"
	1    9500 9450
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 8900 9150 8900
Wire Wire Line
	9150 8900 9150 9450
Wire Wire Line
	9150 9450 9350 9450
Connection ~ 8700 8900
Wire Wire Line
	8700 8900 8700 8800
Wire Wire Line
	9650 9450 9850 9450
$Comp
L Device:R_US R53
U 1 1 61BA3F02
P 10150 8600
F 0 "R53" H 9950 8650 50  0000 L CNN
F 1 "1k" H 10000 8550 50  0000 L CNN
F 2 "Upper Center K" V 10190 8590 50  0001 C CNN
F 3 "~" H 10150 8600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10150 8600 50  0001 C CNN "Notes"
	1    10150 8600
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 8450 10150 8100
Connection ~ 10150 8100
Wire Wire Line
	10150 8100 8700 8100
Wire Wire Line
	12850 10500 12400 10500
Wire Wire Line
	10150 10500 8700 10500
Connection ~ 10150 10500
Text GLabel 9150 8650 1    50   Output ~ 0
AUX12-TGL
Text GLabel 10500 8650 1    50   Output ~ 0
AUX11-TGL
Connection ~ 9150 8900
Text Notes 1100 1150 0    118  ~ 0
For external ngspice for simulation see: http://ngspice.sourceforge.net/ngspice-eeschema.html, section 6
$Comp
L Device:R_US R54
U 1 1 61B857B7
P 10750 8900
F 0 "R54" V 10650 8950 50  0000 L CNN
F 1 "1k3" V 10650 8750 50  0000 L CNN
F 2 "Upper Center K" V 10790 8890 50  0001 C CNN
F 3 "~" H 10750 8900 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10750 8900 50  0001 C CNN "Notes"
	1    10750 8900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R55
U 1 1 61B8CCA7
P 11000 9250
F 0 "R55" H 10850 9300 50  0000 L CNN
F 1 "27k" H 10800 9200 50  0000 L CNN
F 2 "Upper Center K" V 11040 9240 50  0001 C CNN
F 3 "~" H 11000 9250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11000 9250 50  0001 C CNN "Notes"
	1    11000 9250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R56
U 1 1 61B8D007
P 11250 9500
F 0 "R56" V 11150 9550 50  0000 L CNN
F 1 "130k" V 11150 9300 50  0000 L CNN
F 2 "Upper Center K" V 11290 9490 50  0001 C CNN
F 3 "~" H 11250 9500 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11250 9500 50  0001 C CNN "Notes"
	1    11250 9500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11100 9500 11000 9500
Wire Wire Line
	11000 9500 11000 9400
Wire Wire Line
	11000 9100 11000 8900
$Comp
L Device:C C8
U 1 1 61BA3381
P 11750 8900
F 0 "C8" V 11600 8950 50  0000 L CNN
F 1 "33n" V 11600 8750 50  0000 L CNN
F 2 "Right D Line" H 11788 8750 50  0001 C CNN
F 3 "~" H 11750 8900 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 11750 8900 50  0001 C CNN "Notes"
	1    11750 8900
	0    1    1    0   
$EndComp
Wire Wire Line
	11600 8900 11500 8900
$Comp
L Device:R_US R57
U 1 1 61BAABE0
P 12150 8900
F 0 "R57" V 12050 8950 50  0000 L CNN
F 1 "20k" V 12050 8750 50  0000 L CNN
F 2 "Upper Center K" V 12190 8890 50  0001 C CNN
F 3 "~" H 12150 8900 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12150 8900 50  0001 C CNN "Notes"
	1    12150 8900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12000 8900 11900 8900
$Comp
L Device:R_US R58
U 1 1 61BB21C2
P 12400 8600
F 0 "R58" H 12200 8650 50  0000 L CNN
F 1 "36k" H 12200 8550 50  0000 L CNN
F 2 "Upper Center K" V 12440 8590 50  0001 C CNN
F 3 "~" H 12400 8600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12400 8600 50  0001 C CNN "Notes"
	1    12400 8600
	-1   0    0    1   
$EndComp
Wire Wire Line
	12400 8750 12400 8900
Wire Wire Line
	12400 8900 12300 8900
Wire Wire Line
	12400 8450 12400 8100
Connection ~ 12400 8100
Wire Wire Line
	12400 8100 10150 8100
$Comp
L Device:C C7
U 1 1 61BCE6D9
P 11500 10150
F 0 "C7" H 11300 10200 50  0000 L CNN
F 1 "470n" H 11200 10100 50  0000 L CNN
F 2 "Right D Line" H 11538 10000 50  0001 C CNN
F 3 "~" H 11500 10150 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 11500 10150 50  0001 C CNN "Notes"
	1    11500 10150
	-1   0    0    1   
$EndComp
Wire Wire Line
	11400 9500 11500 9500
Wire Wire Line
	11500 9500 11500 10000
Connection ~ 11500 10500
Wire Wire Line
	11500 10500 10150 10500
$Comp
L Device:R_US R59
U 1 1 61BE4E01
P 12400 10200
F 0 "R59" H 12200 10250 50  0000 L CNN
F 1 "36k" H 12200 10150 50  0000 L CNN
F 2 "Upper Center K" V 12440 10190 50  0001 C CNN
F 3 "~" H 12400 10200 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12400 10200 50  0001 C CNN "Notes"
	1    12400 10200
	-1   0    0    1   
$EndComp
Connection ~ 12400 10500
Wire Wire Line
	12400 10500 11500 10500
Connection ~ 12400 8900
$Comp
L Simulation_SPICE:DIODE D13
U 1 1 61BF4824
P 11500 9250
F 0 "D13" H 11450 9150 50  0000 L CNN
F 1 "DIODE" V 11545 9330 50  0001 L CNN
F 2 "" H 11500 9250 50  0001 C CNN
F 3 "~" H 11500 9250 50  0001 C CNN
F 4 "Y" H 11500 9250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 11500 9250 50  0001 L CNN "Spice_Primitive"
	1    11500 9250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11500 9100 11500 8900
Connection ~ 11500 8900
Wire Wire Line
	11500 9400 11500 9500
Connection ~ 11500 9500
Wire Wire Line
	11000 8900 11500 8900
Wire Wire Line
	10150 8750 10150 8900
Wire Wire Line
	10900 8900 11000 8900
Connection ~ 11000 8900
Wire Wire Line
	10600 8900 10500 8900
Connection ~ 10150 8900
Wire Wire Line
	10150 8900 10150 9250
Wire Wire Line
	10500 8650 10500 8900
Connection ~ 10500 8900
Wire Wire Line
	10500 8900 10150 8900
Wire Wire Line
	9150 8650 9150 8900
Wire Wire Line
	11850 7000 12000 7000
Wire Wire Line
	12300 7000 12500 7000
$Comp
L Simulation_SPICE:DIODE D9
U 1 1 61EC5DF7
P 12150 7000
F 0 "D9" H 12100 6900 50  0000 L CNN
F 1 "DIODE" V 12195 7080 50  0001 L CNN
F 2 "" H 12150 7000 50  0001 C CNN
F 3 "~" H 12150 7000 50  0001 C CNN
F 4 "Y" H 12150 7000 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 12150 7000 50  0001 L CNN "Spice_Primitive"
	1    12150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 10350 12400 10500
Wire Wire Line
	11500 10300 11500 10500
Wire Wire Line
	10150 9650 10150 10500
Wire Wire Line
	8700 9400 8700 10500
Text GLabel 14800 9100 0    50   Input ~ 0
AUX12-TGL
Text GLabel 14800 9750 0    50   Input ~ 0
AUX11-TGL
$Comp
L Device:C C4
U 1 1 6206BC92
P 15400 9100
F 0 "C4" V 15250 9150 50  0000 L CNN
F 1 "6.8n" V 15250 8950 50  0000 L CNN
F 2 "Right D Line" H 15438 8950 50  0001 C CNN
F 3 "~" H 15400 9100 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 15400 9100 50  0001 C CNN "Notes"
	1    15400 9100
	0    -1   1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6206C36B
P 15400 9750
F 0 "C5" V 15250 9800 50  0000 L CNN
F 1 "6.8n" V 15250 9600 50  0000 L CNN
F 2 "Right D Line" H 15438 9600 50  0001 C CNN
F 3 "~" H 15400 9750 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 15400 9750 50  0001 C CNN "Notes"
	1    15400 9750
	0    -1   1    0   
$EndComp
Wire Wire Line
	14800 9100 15250 9100
$Comp
L Device:R_US R30
U 1 1 6207DDA2
P 15850 8800
F 0 "R30" H 15650 8850 50  0000 L CNN
F 1 "130k" H 15600 8750 50  0000 L CNN
F 2 "Upper Center K" V 15890 8790 50  0001 C CNN
F 3 "~" H 15850 8800 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15850 8800 50  0001 C CNN "Notes"
	1    15850 8800
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R31
U 1 1 6207E46F
P 15850 10100
F 0 "R31" H 15650 10150 50  0000 L CNN
F 1 "68k" H 15600 10050 50  0000 L CNN
F 2 "Upper Center K" V 15890 10090 50  0001 C CNN
F 3 "~" H 15850 10100 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15850 10100 50  0001 C CNN "Notes"
	1    15850 10100
	1    0    0    1   
$EndComp
Wire Wire Line
	15550 9100 15850 9100
Wire Wire Line
	15850 9100 15850 8950
Wire Wire Line
	15850 9100 15850 9950
Connection ~ 15850 9100
$Comp
L Simulation_SPICE:DIODE D4
U 1 1 620A24B9
P 16500 9100
F 0 "D4" H 16450 9000 50  0000 L CNN
F 1 "DIODE" V 16545 9180 50  0001 L CNN
F 2 "" H 16500 9100 50  0001 C CNN
F 3 "~" H 16500 9100 50  0001 C CNN
F 4 "Y" H 16500 9100 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 16500 9100 50  0001 L CNN "Spice_Primitive"
	1    16500 9100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	16350 9100 15850 9100
$Comp
L Device:R_US R26
U 1 1 620C6553
P 16200 10100
F 0 "R26" H 16000 10150 50  0000 L CNN
F 1 "68k" H 15950 10050 50  0000 L CNN
F 2 "Upper Center K" V 16240 10090 50  0001 C CNN
F 3 "~" H 16200 10100 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16200 10100 50  0001 C CNN "Notes"
	1    16200 10100
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R25
U 1 1 620C69DA
P 16200 8800
F 0 "R25" H 16000 8850 50  0000 L CNN
F 1 "130k" H 15950 8750 50  0000 L CNN
F 2 "Upper Center K" V 16240 8790 50  0001 C CNN
F 3 "~" H 16200 8800 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16200 8800 50  0001 C CNN "Notes"
	1    16200 8800
	1    0    0    1   
$EndComp
Wire Wire Line
	16200 8950 16200 9750
Wire Wire Line
	15550 9750 16200 9750
Connection ~ 16200 9750
Wire Wire Line
	16200 9750 16200 9950
$Comp
L Simulation_SPICE:DIODE D5
U 1 1 620FD22E
P 16500 9750
F 0 "D5" H 16450 9650 50  0000 L CNN
F 1 "DIODE" V 16545 9830 50  0001 L CNN
F 2 "" H 16500 9750 50  0001 C CNN
F 3 "~" H 16500 9750 50  0001 C CNN
F 4 "Y" H 16500 9750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 16500 9750 50  0001 L CNN "Spice_Primitive"
	1    16500 9750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	16350 9750 16200 9750
Wire Wire Line
	14800 9750 15250 9750
$Comp
L Device:R_US R23
U 1 1 6217D9BB
P 16850 8800
F 0 "R23" H 16650 8850 50  0000 L CNN
F 1 "100k" H 16600 8750 50  0000 L CNN
F 2 "Upper Center K" V 16890 8790 50  0001 C CNN
F 3 "~" H 16850 8800 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16850 8800 50  0001 C CNN "Notes"
	1    16850 8800
	1    0    0    1   
$EndComp
Wire Wire Line
	16850 8950 16850 9100
Wire Wire Line
	16850 9750 16650 9750
Wire Wire Line
	16650 9100 16850 9100
Connection ~ 16850 9100
Wire Wire Line
	16850 9100 16850 9750
Wire Wire Line
	16850 8650 16850 8450
Wire Wire Line
	16850 8450 16200 8450
Wire Wire Line
	16200 8650 16200 8450
Connection ~ 16200 8450
Wire Wire Line
	15850 8450 15850 8650
Wire Wire Line
	16200 8450 15850 8450
Wire Wire Line
	15850 8450 14800 8450
Connection ~ 15850 8450
Wire Wire Line
	16200 10250 16200 10400
Wire Wire Line
	16200 10400 15850 10400
Wire Wire Line
	15850 10250 15850 10400
Connection ~ 15850 10400
Wire Wire Line
	15850 10400 14800 10400
Wire Wire Line
	16850 9750 17250 9750
Connection ~ 16850 9750
Text GLabel 17250 9750 2    50   Output ~ 0
EDGES
Text GLabel 14800 8450 0    50   Input ~ 0
AUX1-10V
Text GLabel 14800 10400 0    50   UnSpc ~ 0
E11-GND
Text GLabel 1950 3000 1    50   Input ~ 0
AUX1-10V
$Comp
L Simulation_SPICE:VDC VBOGUS1
U 1 1 62237254
P 1950 3550
F 0 "VBOGUS1" H 2080 3641 50  0000 L CNN
F 1 "0" H 2080 3550 50  0000 L CNN
F 2 "" H 1950 3550 50  0001 C CNN
F 3 "~" H 1950 3550 50  0001 C CNN
F 4 "Y" H 1950 3550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1950 3550 50  0001 L CNN "Spice_Primitive"
F 6 "dc(0)" H 2080 3459 50  0000 L CNN "Spice_Model"
	1    1950 3550
	-1   0    0    1   
$EndComp
$Comp
L Simulation_SPICE:VDC V1
U 1 1 62237BFE
P 1950 4250
F 0 "V1" H 2080 4341 50  0000 L CNN
F 1 "10" H 2080 4250 50  0000 L CNN
F 2 "" H 1950 4250 50  0001 C CNN
F 3 "~" H 1950 4250 50  0001 C CNN
F 4 "Y" H 1950 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1950 4250 50  0001 L CNN "Spice_Primitive"
F 6 "dc(10)" H 2080 4159 50  0000 L CNN "Spice_Model"
	1    1950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4600 1950 4600
Wire Wire Line
	1950 4600 1950 4450
Wire Wire Line
	1950 4050 1950 3750
Wire Wire Line
	1950 3350 1950 3000
Text GLabel 5850 12750 0    50   Input ~ 0
E15-MPS
Text GLabel 6950 12750 3    50   Input ~ 0
E7-MPS
Text GLabel 6950 13450 3    50   Input ~ 0
E8-MPS
$Comp
L Simulation_SPICE:DIODE D15
U 1 1 62457901
P 7550 13450
F 0 "D15" H 7500 13350 50  0000 L CNN
F 1 "DIODE" V 7595 13530 50  0001 L CNN
F 2 "" H 7550 13450 50  0001 C CNN
F 3 "~" H 7550 13450 50  0001 C CNN
F 4 "Y" H 7550 13450 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 7550 13450 50  0001 L CNN "Spice_Primitive"
	1    7550 13450
	-1   0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D16
U 1 1 62458057
P 8100 13450
F 0 "D16" H 8050 13350 50  0000 L CNN
F 1 "DIODE" V 8145 13530 50  0001 L CNN
F 2 "" H 8100 13450 50  0001 C CNN
F 3 "~" H 8100 13450 50  0001 C CNN
F 4 "Y" H 8100 13450 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 8100 13450 50  0001 L CNN "Spice_Primitive"
	1    8100 13450
	1    0    0    1   
$EndComp
Text GLabel 7850 13700 3    50   Input ~ 0
EDGES
Wire Wire Line
	7700 13450 7850 13450
Wire Wire Line
	7850 13700 7850 13450
Connection ~ 7850 13450
Wire Wire Line
	7850 13450 7950 13450
$Comp
L Transistor_BJT:BC547 Q11
U 1 1 624A5495
P 8650 13450
F 0 "Q11" H 8840 13496 50  0000 L CNN
F 1 "BCY58" H 8840 13405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8850 13375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8650 13450 50  0001 L CNN
F 4 "Center K" H 8650 13450 50  0001 C CNN "Notes"
	1    8650 13450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 13450 8350 13450
$Comp
L Device:R_US R65
U 1 1 624C0ACD
P 8350 13950
F 0 "R65" H 8150 14000 50  0000 L CNN
F 1 "180k" H 8100 13900 50  0000 L CNN
F 2 "Upper Center K" V 8390 13940 50  0001 C CNN
F 3 "~" H 8350 13950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8350 13950 50  0001 C CNN "Notes"
	1    8350 13950
	1    0    0    1   
$EndComp
Wire Wire Line
	8350 13800 8350 13750
Connection ~ 8350 13450
Wire Wire Line
	8350 13450 8250 13450
Wire Wire Line
	8350 14100 8350 14300
Wire Wire Line
	8350 14300 8750 14300
Wire Wire Line
	8750 13650 8750 14300
Connection ~ 8750 14300
$Comp
L Device:R_US R68
U 1 1 625125B1
P 9050 13750
F 0 "R68" V 9150 13800 50  0000 L CNN
F 1 "300" V 9150 13600 50  0000 L CNN
F 2 "Upper Center K" V 9090 13740 50  0001 C CNN
F 3 "~" H 9050 13750 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9050 13750 50  0001 C CNN "Notes"
	1    9050 13750
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 13750 8350 13750
Connection ~ 8350 13750
Wire Wire Line
	8350 13750 8350 13450
$Comp
L Device:C C9
U 1 1 6252E59E
P 9450 13450
F 0 "C9" H 9250 13500 50  0000 L CNN
F 1 "1.0n" H 9200 13400 50  0000 L CNN
F 2 "Right D Line" H 9488 13300 50  0001 C CNN
F 3 "~" H 9450 13450 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 9450 13450 50  0001 C CNN "Notes"
	1    9450 13450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 13600 9450 13750
Wire Wire Line
	9450 13750 9200 13750
$Comp
L Device:R_US R67
U 1 1 6254B02E
P 9050 13000
F 0 "R67" V 9150 13050 50  0000 L CNN
F 1 "2k4" V 9150 12900 50  0000 L CNN
F 2 "Upper Center K" V 9090 12990 50  0001 C CNN
F 3 "~" H 9050 13000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9050 13000 50  0001 C CNN "Notes"
	1    9050 13000
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 13000 8750 13000
Wire Wire Line
	8750 13000 8750 13250
Wire Wire Line
	9200 13000 9450 13000
Wire Wire Line
	9450 13000 9450 13300
$Comp
L Transistor_BJT:BC547 Q12
U 1 1 625847C0
P 9850 13000
F 0 "Q12" H 10040 13046 50  0000 L CNN
F 1 "BCY58" H 10040 12955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10050 12925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9850 13000 50  0001 L CNN
F 4 "Center K" H 9850 13000 50  0001 C CNN "Notes"
	1    9850 13000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 13000 9450 13000
Connection ~ 9450 13000
Wire Wire Line
	9950 13200 9950 14300
Wire Wire Line
	8750 14300 9950 14300
$Comp
L Device:R_US R66
U 1 1 625BF40D
P 8750 12450
F 0 "R66" H 8550 12500 50  0000 L CNN
F 1 "2k" H 8550 12400 50  0000 L CNN
F 2 "Upper Center K" V 8790 12440 50  0001 C CNN
F 3 "~" H 8750 12450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8750 12450 50  0001 C CNN "Notes"
	1    8750 12450
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R69
U 1 1 625C0721
P 9950 12450
F 0 "R69" H 9750 12500 50  0000 L CNN
F 1 "1k" H 9750 12400 50  0000 L CNN
F 2 "Upper Center K" V 9990 12440 50  0001 C CNN
F 3 "~" H 9950 12450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9950 12450 50  0001 C CNN "Notes"
	1    9950 12450
	1    0    0    1   
$EndComp
Wire Wire Line
	9950 12600 9950 12750
Wire Wire Line
	8750 12600 8750 13000
Connection ~ 8750 13000
Wire Wire Line
	8750 12300 8750 11850
Wire Wire Line
	8750 11850 9950 11850
Wire Wire Line
	9950 12300 9950 11850
Connection ~ 9950 11850
Wire Wire Line
	9950 11850 10450 11850
Connection ~ 9950 12750
Wire Wire Line
	9950 12750 9950 12800
Text GLabel 8400 13000 0    50   Output ~ 0
AUX10-SP
Wire Wire Line
	8400 13000 8750 13000
Wire Wire Line
	9950 14300 10450 14300
Connection ~ 9950 14300
Text GLabel 10450 14300 2    50   UnSpc ~ 0
E11-GND
Text GLabel 10450 11850 2    50   Input ~ 0
AUX1-10V
$Comp
L Device:R_US R64
U 1 1 6270DFA3
P 5850 12050
F 0 "R64" H 5650 12100 50  0000 L CNN
F 1 "510" H 5650 12000 50  0000 L CNN
F 2 "Upper Center K" V 5890 12040 50  0001 C CNN
F 3 "~" H 5850 12050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 5850 12050 50  0001 C CNN "Notes"
	1    5850 12050
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R63
U 1 1 6270E783
P 5500 12300
F 0 "R63" V 5600 12350 50  0000 L CNN
F 1 "2k2" V 5600 12200 50  0000 L CNN
F 2 "Upper Center K" V 5540 12290 50  0001 C CNN
F 3 "~" H 5500 12300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 5500 12300 50  0001 C CNN "Notes"
	1    5500 12300
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 11900 5850 11850
Wire Wire Line
	5850 12200 5850 12300
Wire Wire Line
	5850 12300 5650 12300
Connection ~ 5850 12300
Wire Wire Line
	5850 12300 5850 12750
$Comp
L Simulation_SPICE:DIODE D14
U 1 1 6278C325
P 5050 12300
F 0 "D14" H 5000 12200 50  0000 L CNN
F 1 "DIODE" V 5095 12380 50  0001 L CNN
F 2 "" H 5050 12300 50  0001 C CNN
F 3 "~" H 5050 12300 50  0001 C CNN
F 4 "Y" H 5050 12300 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 5050 12300 50  0001 L CNN "Spice_Primitive"
	1    5050 12300
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 12300 5350 12300
$Comp
L Device:R_US R62
U 1 1 627AC88D
P 4750 12050
F 0 "R62" H 4550 12100 50  0000 L CNN
F 1 "1k2" H 4550 12000 50  0000 L CNN
F 2 "Upper Center K" V 4790 12040 50  0001 C CNN
F 3 "~" H 4750 12050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 4750 12050 50  0001 C CNN "Notes"
	1    4750 12050
	1    0    0    1   
$EndComp
Wire Wire Line
	4750 11900 4750 11850
Wire Wire Line
	4750 11850 5850 11850
Connection ~ 5850 11850
Wire Wire Line
	4900 12300 4750 12300
Wire Wire Line
	4750 12300 4750 12200
$Comp
L Device:R_US R61
U 1 1 627EDB3A
P 4350 12300
F 0 "R61" V 4450 12350 50  0000 L CNN
F 1 "240" V 4450 12150 50  0000 L CNN
F 2 "Upper Center K" V 4390 12290 50  0001 C CNN
F 3 "~" H 4350 12300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 4350 12300 50  0001 C CNN "Notes"
	1    4350 12300
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 12300 4750 12300
Connection ~ 4750 12300
$Comp
L Device:R_US R60
U 1 1 6280EC00
P 3700 12700
F 0 "R60" V 3600 12600 50  0000 L CNN
F 1 "200" V 3800 12600 50  0000 L CNN
F 2 "Upper Center K" V 3740 12690 50  0001 C CNN
F 3 "~" H 3700 12700 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 3700 12700 50  0001 C CNN "Notes"
	1    3700 12700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 12300 3700 12300
Wire Wire Line
	3700 12300 3700 12550
Wire Wire Line
	3700 14300 3700 12850
Text GLabel 3700 12300 0    50   Input ~ 0
E1-T1
Text GLabel 7700 12750 1    50   Input ~ 0
BASE_PULSE
Text GLabel 1300 2950 1    50   Input ~ 0
INT-6
$Comp
L Simulation_SPICE:VDC V7
U 1 1 628A2F39
P 1300 4250
F 0 "V7" H 1430 4341 50  0000 L CNN
F 1 "4" H 1430 4250 50  0000 L CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "~" H 1300 4250 50  0001 C CNN
F 4 "Y" H 1300 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1300 4250 50  0001 L CNN "Spice_Primitive"
F 6 "dc(4.0)" H 1430 4159 50  0000 L CNN "Spice_Model"
	1    1300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4450 1300 4600
Wire Wire Line
	1300 4600 1950 4600
Connection ~ 1950 4600
Wire Wire Line
	1300 4050 1300 2950
Connection ~ 5700 13450
Wire Wire Line
	5700 13100 5700 13450
Wire Wire Line
	5600 13100 5700 13100
Text GLabel 5600 13100 0    50   Input ~ 0
E10-MPS
Text GLabel 5600 13450 0    50   Input ~ 0
INT-6
Wire Wire Line
	5600 13450 5700 13450
Wire Wire Line
	3700 14300 8350 14300
Connection ~ 8350 14300
Wire Wire Line
	5850 11850 8750 11850
Connection ~ 8750 11850
Text Notes 2900 12700 0    50   ~ 0
Air temp sensor
Wire Wire Line
	12400 8900 12400 10050
Text GLabel 17300 7450 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	13050 7450 13550 7450
Wire Wire Line
	13550 7200 13550 7450
Connection ~ 13550 7450
Wire Wire Line
	13550 7450 17300 7450
Text Notes 1350 6950 0    50   ~ 0
.model DIODE D\n.model BCY58 npn\n.model BSX95 npn\n.model AUY21 pnp\n.tran 0.05ms 92ms 89m\n.control\nrun\nrusage\nset filetype=ascii\nset color0=white\nset xbrushwidth=5\nwrite "C:\Users\andy\OneDrive\Documents\MPS Tune-o-Matic\trunk\Simulation\Pressure Loop\PressureLoop.out" "V(BASE_PULSE)" "V(INT-7)"\nplot "V(BASE_PULSE)" "V(INT-7)"\n.endc\n
Wire Wire Line
	6150 12850 6150 12750
Wire Wire Line
	5850 12750 6150 12750
Wire Wire Line
	6550 12850 6550 12750
Wire Wire Line
	6550 12750 9950 12750
Wire Wire Line
	6550 13450 6550 13350
Wire Wire Line
	6550 13450 7400 13450
Wire Wire Line
	6150 13450 6150 13350
Wire Wire Line
	5700 13450 6150 13450
$Comp
L BritishIdeas:MPS TR1
U 1 1 620F2499
P 6350 13100
F 0 "TR1" V 6050 13050 50  0000 L CNN
F 1 "MPS" V 6600 13000 50  0000 L CNN
F 2 "" H 6350 13100 50  0001 C CNN
F 3 "" H 6350 13100 50  0001 C CNN
F 4 "X" H 6350 13100 50  0001 C CNN "Spice_Primitive"
F 5 "mps vac=15" V 6800 13100 50  0000 C CNN "Spice_Model"
F 6 "Y" H 6350 13100 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "MPS.lib" H 6350 13100 50  0001 C CNN "Spice_Lib_File"
	1    6350 13100
	0    1    1    0   
$EndComp
Text Notes 850  4700 0    50   ~ 0
Lower voltage = richer
$EndSCHEMATC

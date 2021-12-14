EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr D 34000 22000
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
Text Notes 850  6900 0    50   ~ 0
.model DIODE D\n.model BCY58 npn\n.model BSX95 npn\n.model AUY21 pnp\nL1 1 2 395m\nL2 2 1 792m\nK1 L1 L2 1.0\n.tran 0.01ms 600ms 120m\n.control\nrun\nrusage\nset filetype=ascii\nset color0=white\nset xbrushwidth=5\nwrite "C:\Users\andy\OneDrive\Documents\MPS Tune-o-Matic\trunk\Simulation\Pressure Loop\PressureLoop.out" "V(E22-PG)" "V(E21-PG)" "V(E14-PG)" "V(E13-PG)" "V(INT-7)"\nplot "V(E22-PG)"+5 "V(E14-PG)"+10 "V(E21-PG)"+15 "V(E13-PG)"+20 "V(INT-7)"\n.endc\n
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
Text GLabel 8800 2550 0    50   Input ~ 0
E22-PG
$Comp
L Device:R_US R15
U 1 1 61B621D6
P 9400 2550
F 0 "R15" V 9500 2600 50  0000 L CNN
F 1 "3k" V 9500 2450 50  0000 L CNN
F 2 "Upper Center K" V 9440 2540 50  0001 C CNN
F 3 "~" H 9400 2550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 2550 50  0001 C CNN "Notes"
	1    9400 2550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 61B62EF3
P 11150 2550
F 0 "Q3" H 11340 2596 50  0000 L CNN
F 1 "BCY58" H 11340 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 11350 2475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 11150 2550 50  0001 L CNN
F 4 "Center K" H 11150 2550 50  0001 C CNN "Notes"
	1    11150 2550
	1    0    0    -1  
$EndComp
Text GLabel 15000 1050 2    50   Input ~ 0
E24-12V
$Comp
L Device:R_US R16
U 1 1 61B643F7
P 9400 3050
F 0 "R16" V 9500 3100 50  0000 L CNN
F 1 "3k" V 9500 2950 50  0000 L CNN
F 2 "Upper Center K" V 9440 3040 50  0001 C CNN
F 3 "~" H 9400 3050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 3050 50  0001 C CNN "Notes"
	1    9400 3050
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D6
U 1 1 61B64807
P 9850 2550
F 0 "D6" H 9800 2450 50  0000 L CNN
F 1 "DIODE" V 9895 2630 50  0001 L CNN
F 2 "" H 9850 2550 50  0001 C CNN
F 3 "~" H 9850 2550 50  0001 C CNN
F 4 "Y" H 9850 2550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9850 2550 50  0001 L CNN "Spice_Primitive"
	1    9850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2550 9050 2550
Wire Wire Line
	9550 2550 9700 2550
$Comp
L Device:R_US R28
U 1 1 61B7AB77
P 10200 2850
F 0 "R28" H 10268 2896 50  0000 L CNN
F 1 "300" H 10268 2805 50  0000 L CNN
F 2 "Upper Center K" V 10240 2840 50  0001 C CNN
F 3 "~" H 10200 2850 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10200 2850 50  0001 C CNN "Notes"
	1    10200 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 61B7B220
P 10200 3350
F 0 "C1" H 10000 3400 50  0000 L CNN
F 1 "2.2n" H 9950 3300 50  0000 L CNN
F 2 "Right D Line" H 10238 3200 50  0001 C CNN
F 3 "~" H 10200 3350 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 10200 3350 50  0001 C CNN "Notes"
	1    10200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2550 10200 2550
Wire Wire Line
	10200 2550 10200 2700
Wire Wire Line
	10200 3000 10200 3200
Wire Wire Line
	10200 3500 10200 3950
$Comp
L Simulation_SPICE:DIODE D7
U 1 1 61B9D9D2
P 9850 3950
F 0 "D7" H 9800 3850 50  0000 L CNN
F 1 "DIODE" V 9895 4030 50  0001 L CNN
F 2 "" H 9850 3950 50  0001 C CNN
F 3 "~" H 9850 3950 50  0001 C CNN
F 4 "Y" H 9850 3950 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9850 3950 50  0001 L CNN "Spice_Primitive"
	1    9850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3950 10200 3950
$Comp
L Device:R_US R18
U 1 1 61BAA8F8
P 9400 3950
F 0 "R18" V 9500 4000 50  0000 L CNN
F 1 "3k" V 9500 3850 50  0000 L CNN
F 2 "Upper Center K" V 9440 3940 50  0001 C CNN
F 3 "~" H 9400 3950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 3950 50  0001 C CNN "Notes"
	1    9400 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 3950 9700 3950
$Comp
L Device:R_US R17
U 1 1 61BB6A67
P 9400 3550
F 0 "R17" V 9500 3600 50  0000 L CNN
F 1 "3k" V 9500 3450 50  0000 L CNN
F 2 "Upper Center K" V 9440 3540 50  0001 C CNN
F 3 "~" H 9400 3550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 3550 50  0001 C CNN "Notes"
	1    9400 3550
	0    1    1    0   
$EndComp
Text GLabel 8800 3950 0    50   Input ~ 0
E21-PG
Wire Wire Line
	8800 3950 9050 3950
Wire Wire Line
	9250 3550 9050 3550
Wire Wire Line
	9050 3550 9050 3950
Connection ~ 9050 3950
Wire Wire Line
	9050 3950 9250 3950
Wire Wire Line
	9250 3050 9050 3050
Wire Wire Line
	9050 3050 9050 2550
Connection ~ 9050 2550
Wire Wire Line
	9050 2550 9250 2550
$Comp
L Device:R_US R32
U 1 1 61BE822B
P 10750 2850
F 0 "R32" H 10600 2900 50  0000 L CNN
F 1 "180k" H 10500 2800 50  0000 L CNN
F 2 "Upper Center K" V 10790 2840 50  0001 C CNN
F 3 "~" H 10750 2850 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10750 2850 50  0001 C CNN "Notes"
	1    10750 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	10200 2550 10750 2550
Connection ~ 10200 2550
Wire Wire Line
	10750 2700 10750 2550
Connection ~ 10750 2550
Wire Wire Line
	10750 2550 10950 2550
$Comp
L Device:R_US R37
U 1 1 61C032FE
P 11250 2100
F 0 "R37" H 11318 2146 50  0000 L CNN
F 1 "1k" H 11318 2055 50  0000 L CNN
F 2 "Upper Center K" V 11290 2090 50  0001 C CNN
F 3 "~" H 11250 2100 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11250 2100 50  0001 C CNN "Notes"
	1    11250 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	15000 1050 14150 1050
Wire Wire Line
	11250 1050 11250 1950
Wire Wire Line
	11250 2250 11250 2300
Wire Wire Line
	10750 3100 10750 3000
Wire Wire Line
	11250 2750 11250 3100
Wire Wire Line
	11250 3100 10750 3100
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 61C3BD58
P 11150 3950
F 0 "Q4" H 11340 3996 50  0000 L CNN
F 1 "BCY58" H 11340 3905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 11350 3875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 11150 3950 50  0001 L CNN
F 4 "Center K" H 11150 3950 50  0001 C CNN "Notes"
	1    11150 3950
	1    0    0    -1  
$EndComp
Text GLabel 11700 3250 2    50   Input ~ 0
E24-12V
$Comp
L Device:R_US R33
U 1 1 61C3BD65
P 10750 4250
F 0 "R33" H 10550 4300 50  0000 L CNN
F 1 "180k" H 10500 4200 50  0000 L CNN
F 2 "Upper Center K" V 10790 4240 50  0001 C CNN
F 3 "~" H 10750 4250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10750 4250 50  0001 C CNN "Notes"
	1    10750 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10750 4100 10750 3950
Wire Wire Line
	10750 3950 10950 3950
$Comp
L Device:R_US R38
U 1 1 61C3BD74
P 11250 3500
F 0 "R38" H 11318 3546 50  0000 L CNN
F 1 "1k" H 11318 3455 50  0000 L CNN
F 2 "Upper Center K" V 11290 3490 50  0001 C CNN
F 3 "~" H 11250 3500 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11250 3500 50  0001 C CNN "Notes"
	1    11250 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	11700 3250 11250 3250
Wire Wire Line
	11250 3250 11250 3350
Wire Wire Line
	11250 3650 11250 3700
Wire Wire Line
	10750 4500 10750 4400
Wire Wire Line
	11250 4150 11250 4500
Wire Wire Line
	11250 4500 10750 4500
Wire Wire Line
	10750 3950 10200 3950
Connection ~ 10750 3950
Connection ~ 10200 3950
Wire Wire Line
	9550 3050 10600 3050
Wire Wire Line
	10600 3050 10600 3700
Wire Wire Line
	10600 3700 11250 3700
Connection ~ 11250 3700
Wire Wire Line
	11250 3700 11250 3750
Wire Wire Line
	9550 3550 10500 3550
Wire Wire Line
	10500 3550 10500 2300
Wire Wire Line
	10500 2300 11250 2300
Connection ~ 11250 2300
Wire Wire Line
	11250 2300 11250 2350
Text GLabel 11750 2300 3    50   Input ~ 0
FF1
Text GLabel 11750 3700 3    50   Input ~ 0
FF2
$Comp
L Device:R_US R43
U 1 1 61CFD7AE
P 12500 2300
F 0 "R43" V 12600 2350 50  0000 L CNN
F 1 "10k" V 12600 2200 50  0000 L CNN
F 2 "Upper Center K" V 12540 2290 50  0001 C CNN
F 3 "~" H 12500 2300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12500 2300 50  0001 C CNN "Notes"
	1    12500 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	11250 2300 12350 2300
$Comp
L Transistor_BJT:BC547 Q7
U 1 1 61D0221D
P 13200 2300
F 0 "Q7" H 13390 2346 50  0000 L CNN
F 1 "BCY58" H 13390 2255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13400 2225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13200 2300 50  0001 L CNN
F 4 "Center K" H 13200 2300 50  0001 C CNN "Notes"
	1    13200 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R47
U 1 1 61D03BD1
P 13300 1750
F 0 "R47" H 13368 1796 50  0000 L CNN
F 1 "2k" H 13368 1705 50  0000 L CNN
F 2 "Upper Center K" V 13340 1740 50  0001 C CNN
F 3 "~" H 13300 1750 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13300 1750 50  0001 C CNN "Notes"
	1    13300 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	13300 1900 13300 1950
Wire Wire Line
	13300 1600 13300 1050
Connection ~ 13300 1050
Wire Wire Line
	13300 2500 13300 3100
Connection ~ 13300 3100
$Comp
L Device:R_US R49
U 1 1 61D0AEAA
P 13600 1950
F 0 "R49" V 13700 2000 50  0000 L CNN
F 1 "5k1" V 13700 1850 50  0000 L CNN
F 2 "Upper Center K" V 13640 1940 50  0001 C CNN
F 3 "~" H 13600 1950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13600 1950 50  0001 C CNN "Notes"
	1    13600 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	13450 1950 13300 1950
Connection ~ 13300 1950
Wire Wire Line
	13300 1950 13300 2100
Text GLabel 15000 1950 2    50   Output ~ 0
INT-7
Wire Wire Line
	15000 1950 14850 1950
Connection ~ 14150 4500
Wire Wire Line
	14150 3350 14150 3500
Connection ~ 14150 3350
Wire Wire Line
	14400 3350 14150 3350
$Comp
L Device:R_US R52
U 1 1 61D0E025
P 14550 3350
F 0 "R52" V 14650 3400 50  0000 L CNN
F 1 "5k1" V 14650 3250 50  0000 L CNN
F 2 "Upper Center K" V 14590 3340 50  0001 C CNN
F 3 "~" H 14550 3350 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14550 3350 50  0001 C CNN "Notes"
	1    14550 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 3900 14150 4500
Wire Wire Line
	14150 3300 14150 3350
$Comp
L Device:R_US R51
U 1 1 61D0E013
P 14150 3150
F 0 "R51" H 14218 3196 50  0000 L CNN
F 1 "2k" H 14218 3105 50  0000 L CNN
F 2 "Upper Center K" V 14190 3140 50  0001 C CNN
F 3 "~" H 14150 3150 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14150 3150 50  0001 C CNN "Notes"
	1    14150 3150
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q9
U 1 1 61D0E007
P 14050 3700
F 0 "Q9" H 14240 3746 50  0000 L CNN
F 1 "BCY58" H 14240 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14250 3625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 14050 3700 50  0001 L CNN
F 4 "Center K" H 14050 3700 50  0001 C CNN "Notes"
	1    14050 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R44
U 1 1 61D0DFFB
P 12500 3700
F 0 "R44" V 12600 3750 50  0000 L CNN
F 1 "10k" V 12600 3600 50  0000 L CNN
F 2 "Upper Center K" V 12540 3690 50  0001 C CNN
F 3 "~" H 12500 3700 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12500 3700 50  0001 C CNN "Notes"
	1    12500 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	15000 4500 14150 4500
Text GLabel 15000 4500 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	11250 3700 12350 3700
Wire Wire Line
	14150 3000 14150 1050
Connection ~ 14150 1050
Wire Wire Line
	14150 1050 13300 1050
Wire Wire Line
	13300 3100 13300 4500
Connection ~ 13300 4500
Wire Wire Line
	13300 4500 14150 4500
Wire Wire Line
	14700 3350 14850 3350
Wire Wire Line
	14850 3350 14850 1950
Connection ~ 14850 1950
Wire Wire Line
	14850 1950 13750 1950
Text GLabel 3300 3000 1    50   Input ~ 0
E22-PG
Text GLabel 3900 3000 1    50   Input ~ 0
E21-PG
Wire Wire Line
	3300 3000 3300 4050
Wire Wire Line
	3900 3000 3900 3850
Text GLabel 8800 5500 0    50   Input ~ 0
E14-PG
$Comp
L Device:R_US R19
U 1 1 61D60135
P 9400 5500
F 0 "R19" V 9500 5550 50  0000 L CNN
F 1 "3k" V 9500 5400 50  0000 L CNN
F 2 "Upper Center K" V 9440 5490 50  0001 C CNN
F 3 "~" H 9400 5500 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 5500 50  0001 C CNN "Notes"
	1    9400 5500
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 61D60140
P 11150 5500
F 0 "Q5" H 11340 5546 50  0000 L CNN
F 1 "BCY58" H 11340 5455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 11350 5425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 11150 5500 50  0001 L CNN
F 4 "Center K" H 11150 5500 50  0001 C CNN "Notes"
	1    11150 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 61D6014B
P 9400 6000
F 0 "R20" V 9500 6050 50  0000 L CNN
F 1 "3k" V 9500 5900 50  0000 L CNN
F 2 "Upper Center K" V 9440 5990 50  0001 C CNN
F 3 "~" H 9400 6000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 6000 50  0001 C CNN "Notes"
	1    9400 6000
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D8
U 1 1 61D60157
P 9850 5500
F 0 "D8" H 9800 5400 50  0000 L CNN
F 1 "DIODE" V 9895 5580 50  0001 L CNN
F 2 "" H 9850 5500 50  0001 C CNN
F 3 "~" H 9850 5500 50  0001 C CNN
F 4 "Y" H 9850 5500 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9850 5500 50  0001 L CNN "Spice_Primitive"
	1    9850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5500 9050 5500
Wire Wire Line
	9550 5500 9700 5500
$Comp
L Device:R_US R29
U 1 1 61D60164
P 10200 5800
F 0 "R29" H 10268 5846 50  0000 L CNN
F 1 "300" H 10268 5755 50  0000 L CNN
F 2 "Upper Center K" V 10240 5790 50  0001 C CNN
F 3 "~" H 10200 5800 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10200 5800 50  0001 C CNN "Notes"
	1    10200 5800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 61D6016F
P 10200 6300
F 0 "C2" H 10000 6350 50  0000 L CNN
F 1 "2.2n" H 9950 6250 50  0000 L CNN
F 2 "Right D Line" H 10238 6150 50  0001 C CNN
F 3 "~" H 10200 6300 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 10200 6300 50  0001 C CNN "Notes"
	1    10200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5500 10200 5500
Wire Wire Line
	10200 5500 10200 5650
Wire Wire Line
	10200 5950 10200 6150
Wire Wire Line
	10200 6450 10200 6900
$Comp
L Device:R_US R22
U 1 1 61D6018B
P 9400 6900
F 0 "R22" V 9500 6950 50  0000 L CNN
F 1 "3k" V 9500 6800 50  0000 L CNN
F 2 "Upper Center K" V 9440 6890 50  0001 C CNN
F 3 "~" H 9400 6900 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 6900 50  0001 C CNN "Notes"
	1    9400 6900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R21
U 1 1 61D60197
P 9400 6500
F 0 "R21" V 9500 6550 50  0000 L CNN
F 1 "3k" V 9500 6400 50  0000 L CNN
F 2 "Upper Center K" V 9440 6490 50  0001 C CNN
F 3 "~" H 9400 6500 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 6500 50  0001 C CNN "Notes"
	1    9400 6500
	0    1    1    0   
$EndComp
Text GLabel 8800 6900 0    50   Input ~ 0
E13-PG
Wire Wire Line
	8800 6900 9050 6900
Wire Wire Line
	9250 6500 9050 6500
Wire Wire Line
	9050 6500 9050 6900
Connection ~ 9050 6900
Wire Wire Line
	9050 6900 9250 6900
Wire Wire Line
	9250 6000 9050 6000
Wire Wire Line
	9050 6000 9050 5500
Connection ~ 9050 5500
Wire Wire Line
	9050 5500 9250 5500
$Comp
L Device:R_US R34
U 1 1 61D601AC
P 10750 5800
F 0 "R34" H 10600 5850 50  0000 L CNN
F 1 "180k" H 10500 5750 50  0000 L CNN
F 2 "Upper Center K" V 10790 5790 50  0001 C CNN
F 3 "~" H 10750 5800 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10750 5800 50  0001 C CNN "Notes"
	1    10750 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10200 5500 10750 5500
Connection ~ 10200 5500
Wire Wire Line
	10750 5650 10750 5500
Connection ~ 10750 5500
Wire Wire Line
	10750 5500 10950 5500
$Comp
L Device:R_US R39
U 1 1 61D601BC
P 11250 5050
F 0 "R39" H 11318 5096 50  0000 L CNN
F 1 "1k" H 11318 5005 50  0000 L CNN
F 2 "Upper Center K" V 11290 5040 50  0001 C CNN
F 3 "~" H 11250 5050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11250 5050 50  0001 C CNN "Notes"
	1    11250 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	11250 5200 11250 5250
Wire Wire Line
	10750 6050 10750 5950
Wire Wire Line
	11250 5700 11250 6050
Wire Wire Line
	11250 6050 10750 6050
$Comp
L Transistor_BJT:BC547 Q6
U 1 1 61D601CD
P 11150 6900
F 0 "Q6" H 11340 6946 50  0000 L CNN
F 1 "BCY58" H 11340 6855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 11350 6825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 11150 6900 50  0001 L CNN
F 4 "Center K" H 11150 6900 50  0001 C CNN "Notes"
	1    11150 6900
	1    0    0    -1  
$EndComp
Text GLabel 11700 6200 2    50   Input ~ 0
E24-12V
$Comp
L Device:R_US R35
U 1 1 61D601D9
P 10750 7200
F 0 "R35" H 10550 7250 50  0000 L CNN
F 1 "180k" H 10500 7150 50  0000 L CNN
F 2 "Upper Center K" V 10790 7190 50  0001 C CNN
F 3 "~" H 10750 7200 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10750 7200 50  0001 C CNN "Notes"
	1    10750 7200
	-1   0    0    1   
$EndComp
Wire Wire Line
	10750 7050 10750 6900
Wire Wire Line
	10750 6900 10950 6900
$Comp
L Device:R_US R40
U 1 1 61D601E6
P 11250 6450
F 0 "R40" H 11318 6496 50  0000 L CNN
F 1 "1k" H 11318 6405 50  0000 L CNN
F 2 "Upper Center K" V 11290 6440 50  0001 C CNN
F 3 "~" H 11250 6450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11250 6450 50  0001 C CNN "Notes"
	1    11250 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	11700 6200 11250 6200
Wire Wire Line
	11250 6200 11250 6300
Wire Wire Line
	11250 6600 11250 6650
Wire Wire Line
	10750 7450 10750 7350
Wire Wire Line
	11250 7100 11250 7450
Connection ~ 11250 7450
Wire Wire Line
	11250 7450 10750 7450
Wire Wire Line
	10750 6900 10200 6900
Connection ~ 10750 6900
Connection ~ 10200 6900
Wire Wire Line
	9550 6000 10600 6000
Wire Wire Line
	10600 6000 10600 6650
Wire Wire Line
	10600 6650 11250 6650
Connection ~ 11250 6650
Wire Wire Line
	11250 6650 11250 6700
Wire Wire Line
	9550 6500 10500 6500
Wire Wire Line
	10500 6500 10500 5250
Wire Wire Line
	10500 5250 11250 5250
Connection ~ 11250 5250
Wire Wire Line
	11250 5250 11250 5300
Text GLabel 11750 5250 3    50   Input ~ 0
FF3
Text GLabel 11750 6650 3    50   Input ~ 0
FF4
Wire Wire Line
	11250 5250 12350 5250
Wire Wire Line
	11250 6650 12350 6650
Wire Wire Line
	11250 7450 11700 7450
Text GLabel 11700 4750 2    50   Input ~ 0
E24-12V
Wire Wire Line
	11700 4750 11250 4750
Wire Wire Line
	11250 4750 11250 4900
Connection ~ 11250 6050
Wire Wire Line
	11700 6050 11250 6050
Text GLabel 11700 6050 2    50   UnSpc ~ 0
E11-GND
Text GLabel 11700 7450 2    50   UnSpc ~ 0
E11-GND
$Comp
L Device:R_US R45
U 1 1 61D8BD9D
P 12500 5250
F 0 "R45" V 12600 5300 50  0000 L CNN
F 1 "10k" V 12600 5150 50  0000 L CNN
F 2 "Upper Center K" V 12540 5240 50  0001 C CNN
F 3 "~" H 12500 5250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12500 5250 50  0001 C CNN "Notes"
	1    12500 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R46
U 1 1 61D8C4AC
P 12500 6650
F 0 "R46" V 12600 6700 50  0000 L CNN
F 1 "10k" V 12600 6550 50  0000 L CNN
F 2 "Upper Center K" V 12540 6640 50  0001 C CNN
F 3 "~" H 12500 6650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12500 6650 50  0001 C CNN "Notes"
	1    12500 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	12650 5250 12800 5250
Wire Wire Line
	12800 5250 12800 3700
Wire Wire Line
	12800 3700 12650 3700
Wire Wire Line
	11250 1050 13300 1050
Wire Wire Line
	11250 3100 13300 3100
Connection ~ 11250 3100
Wire Wire Line
	12800 3700 13850 3700
Connection ~ 12800 3700
Wire Wire Line
	12650 2300 12900 2300
Wire Wire Line
	11250 4500 13300 4500
Connection ~ 11250 4500
Wire Wire Line
	12650 6650 12900 6650
Wire Wire Line
	12900 6650 12900 2300
Connection ~ 12900 2300
Wire Wire Line
	12900 2300 13000 2300
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
Text GLabel 12750 9300 0    50   Input ~ 0
INT-7
$Comp
L Device:R_US R48
U 1 1 61B7C36B
P 13300 8750
F 0 "R48" H 13150 8800 50  0000 L CNN
F 1 "1k" H 13150 8700 50  0000 L CNN
F 2 "Upper Center K" V 13340 8740 50  0001 C CNN
F 3 "~" H 13300 8750 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13300 8750 50  0001 C CNN "Notes"
	1    13300 8750
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q8
U 1 1 61B7C79E
P 13200 9300
F 0 "Q8" H 13390 9346 50  0000 L CNN
F 1 "BCY58" H 13390 9255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13400 9225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13200 9300 50  0001 L CNN
F 4 "Center K" H 13200 9300 50  0001 C CNN "Notes"
	1    13200 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 9300 13000 9300
Wire Wire Line
	13300 9100 13300 9000
Text GLabel 17400 8200 2    50   Input ~ 0
E24-12V
Text GLabel 17450 10600 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	17400 8200 17000 8200
Wire Wire Line
	13300 8200 13300 8600
$Comp
L Transistor_BJT:BC547 Q10
U 1 1 61B8CA77
P 14650 9550
F 0 "Q10" H 14840 9596 50  0000 L CNN
F 1 "BCY58" H 14840 9505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14850 9475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 14650 9550 50  0001 L CNN
F 4 "Center K" H 14650 9550 50  0001 C CNN "Notes"
	1    14650 9550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R50
U 1 1 61B8D9D0
P 14100 9550
F 0 "R50" V 14200 9600 50  0000 L CNN
F 1 "10k" V 14200 9450 50  0000 L CNN
F 2 "Upper Center K" V 14140 9540 50  0001 C CNN
F 3 "~" H 14100 9550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14100 9550 50  0001 C CNN "Notes"
	1    14100 9550
	0    1    1    0   
$EndComp
Wire Wire Line
	13300 9000 13750 9000
Wire Wire Line
	13750 9000 13750 9550
Wire Wire Line
	13750 9550 13950 9550
Connection ~ 13300 9000
Wire Wire Line
	13300 9000 13300 8900
Wire Wire Line
	14250 9550 14450 9550
$Comp
L Device:R_US R53
U 1 1 61BA3F02
P 14750 8700
F 0 "R53" H 14550 8750 50  0000 L CNN
F 1 "1k" H 14600 8650 50  0000 L CNN
F 2 "Upper Center K" V 14790 8690 50  0001 C CNN
F 3 "~" H 14750 8700 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14750 8700 50  0001 C CNN "Notes"
	1    14750 8700
	-1   0    0    1   
$EndComp
Wire Wire Line
	14750 8550 14750 8200
Connection ~ 14750 8200
Wire Wire Line
	14750 8200 13300 8200
Wire Wire Line
	17450 10600 17000 10600
Wire Wire Line
	14750 10600 13300 10600
Connection ~ 14750 10600
Text GLabel 13750 8750 1    50   Output ~ 0
AUX12-TGL
Text GLabel 15100 8750 1    50   Output ~ 0
AUX11-TGL
Connection ~ 13750 9000
Text Notes 1000 1400 0    118  ~ 0
This requires external ngspice for simulation. See:\nhttp://ngspice.sourceforge.net/ngspice-eeschema.html\nsection 6
$Comp
L Device:R_US R54
U 1 1 61B857B7
P 15350 9000
F 0 "R54" V 15250 9050 50  0000 L CNN
F 1 "1k3" V 15250 8850 50  0000 L CNN
F 2 "Upper Center K" V 15390 8990 50  0001 C CNN
F 3 "~" H 15350 9000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15350 9000 50  0001 C CNN "Notes"
	1    15350 9000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R55
U 1 1 61B8CCA7
P 15600 9350
F 0 "R55" H 15450 9400 50  0000 L CNN
F 1 "27k" H 15400 9300 50  0000 L CNN
F 2 "Upper Center K" V 15640 9340 50  0001 C CNN
F 3 "~" H 15600 9350 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15600 9350 50  0001 C CNN "Notes"
	1    15600 9350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R56
U 1 1 61B8D007
P 15850 9600
F 0 "R56" V 15750 9650 50  0000 L CNN
F 1 "130k" V 15750 9400 50  0000 L CNN
F 2 "Upper Center K" V 15890 9590 50  0001 C CNN
F 3 "~" H 15850 9600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15850 9600 50  0001 C CNN "Notes"
	1    15850 9600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15700 9600 15600 9600
Wire Wire Line
	15600 9600 15600 9500
Wire Wire Line
	15600 9200 15600 9000
$Comp
L Device:C C8
U 1 1 61BA3381
P 16350 9000
F 0 "C8" V 16200 9050 50  0000 L CNN
F 1 "33n" V 16200 8850 50  0000 L CNN
F 2 "Right D Line" H 16388 8850 50  0001 C CNN
F 3 "~" H 16350 9000 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 16350 9000 50  0001 C CNN "Notes"
	1    16350 9000
	0    1    1    0   
$EndComp
Wire Wire Line
	16200 9000 16100 9000
$Comp
L Device:R_US R57
U 1 1 61BAABE0
P 16750 9000
F 0 "R57" V 16650 9050 50  0000 L CNN
F 1 "20k" V 16650 8850 50  0000 L CNN
F 2 "Upper Center K" V 16790 8990 50  0001 C CNN
F 3 "~" H 16750 9000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16750 9000 50  0001 C CNN "Notes"
	1    16750 9000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	16600 9000 16500 9000
$Comp
L Device:R_US R58
U 1 1 61BB21C2
P 17000 8700
F 0 "R58" H 16800 8750 50  0000 L CNN
F 1 "36k" H 16800 8650 50  0000 L CNN
F 2 "Upper Center K" V 17040 8690 50  0001 C CNN
F 3 "~" H 17000 8700 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 17000 8700 50  0001 C CNN "Notes"
	1    17000 8700
	-1   0    0    1   
$EndComp
Wire Wire Line
	17000 8850 17000 9000
Wire Wire Line
	17000 9000 16900 9000
Wire Wire Line
	17000 8550 17000 8200
Connection ~ 17000 8200
Wire Wire Line
	17000 8200 14750 8200
$Comp
L Device:C C7
U 1 1 61BCE6D9
P 16100 10250
F 0 "C7" H 15900 10300 50  0000 L CNN
F 1 "470n" H 15800 10200 50  0000 L CNN
F 2 "Right D Line" H 16138 10100 50  0001 C CNN
F 3 "~" H 16100 10250 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 16100 10250 50  0001 C CNN "Notes"
	1    16100 10250
	-1   0    0    1   
$EndComp
Wire Wire Line
	16000 9600 16100 9600
Wire Wire Line
	16100 9600 16100 10100
Connection ~ 16100 10600
Wire Wire Line
	16100 10600 14750 10600
$Comp
L Device:R_US R59
U 1 1 61BE4E01
P 17000 10300
F 0 "R59" H 16800 10350 50  0000 L CNN
F 1 "36k" H 16800 10250 50  0000 L CNN
F 2 "Upper Center K" V 17040 10290 50  0001 C CNN
F 3 "~" H 17000 10300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 17000 10300 50  0001 C CNN "Notes"
	1    17000 10300
	-1   0    0    1   
$EndComp
Connection ~ 17000 10600
Wire Wire Line
	17000 10600 16100 10600
Connection ~ 17000 9000
$Comp
L Simulation_SPICE:DIODE D13
U 1 1 61BF4824
P 16100 9350
F 0 "D13" H 16050 9250 50  0000 L CNN
F 1 "DIODE" V 16145 9430 50  0001 L CNN
F 2 "" H 16100 9350 50  0001 C CNN
F 3 "~" H 16100 9350 50  0001 C CNN
F 4 "Y" H 16100 9350 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 16100 9350 50  0001 L CNN "Spice_Primitive"
	1    16100 9350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	16100 9200 16100 9000
Connection ~ 16100 9000
Wire Wire Line
	16100 9500 16100 9600
Connection ~ 16100 9600
Wire Wire Line
	15600 9000 16100 9000
Wire Wire Line
	14750 8850 14750 9000
Wire Wire Line
	15500 9000 15600 9000
Connection ~ 15600 9000
Wire Wire Line
	15200 9000 15100 9000
Connection ~ 14750 9000
Wire Wire Line
	14750 9000 14750 9350
Wire Wire Line
	15100 8750 15100 9000
Connection ~ 15100 9000
Wire Wire Line
	15100 9000 14750 9000
Wire Wire Line
	13750 8750 13750 9000
Wire Wire Line
	9550 6900 9700 6900
Wire Wire Line
	10000 6900 10200 6900
$Comp
L Simulation_SPICE:DIODE D9
U 1 1 61EC5DF7
P 9850 6900
F 0 "D9" H 9800 6800 50  0000 L CNN
F 1 "DIODE" V 9895 6980 50  0001 L CNN
F 2 "" H 9850 6900 50  0001 C CNN
F 3 "~" H 9850 6900 50  0001 C CNN
F 4 "Y" H 9850 6900 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9850 6900 50  0001 L CNN "Spice_Primitive"
	1    9850 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	17000 10450 17000 10600
Wire Wire Line
	16100 10400 16100 10600
Wire Wire Line
	14750 9750 14750 10600
Wire Wire Line
	13300 9500 13300 10600
Text GLabel 13700 12550 0    50   Input ~ 0
AUX12-TGL
Text GLabel 13700 13200 0    50   Input ~ 0
AUX11-TGL
$Comp
L Device:C C4
U 1 1 6206BC92
P 14300 12550
F 0 "C4" V 14150 12600 50  0000 L CNN
F 1 "6.8n" V 14150 12400 50  0000 L CNN
F 2 "Right D Line" H 14338 12400 50  0001 C CNN
F 3 "~" H 14300 12550 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 14300 12550 50  0001 C CNN "Notes"
	1    14300 12550
	0    -1   1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6206C36B
P 14300 13200
F 0 "C5" V 14150 13250 50  0000 L CNN
F 1 "6.8n" V 14150 13050 50  0000 L CNN
F 2 "Right D Line" H 14338 13050 50  0001 C CNN
F 3 "~" H 14300 13200 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 14300 13200 50  0001 C CNN "Notes"
	1    14300 13200
	0    -1   1    0   
$EndComp
Wire Wire Line
	13700 12550 14150 12550
$Comp
L Device:R_US R30
U 1 1 6207DDA2
P 14750 12250
F 0 "R30" H 14550 12300 50  0000 L CNN
F 1 "130k" H 14500 12200 50  0000 L CNN
F 2 "Upper Center K" V 14790 12240 50  0001 C CNN
F 3 "~" H 14750 12250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14750 12250 50  0001 C CNN "Notes"
	1    14750 12250
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R31
U 1 1 6207E46F
P 14750 13550
F 0 "R31" H 14550 13600 50  0000 L CNN
F 1 "68k" H 14500 13500 50  0000 L CNN
F 2 "Upper Center K" V 14790 13540 50  0001 C CNN
F 3 "~" H 14750 13550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14750 13550 50  0001 C CNN "Notes"
	1    14750 13550
	1    0    0    1   
$EndComp
Wire Wire Line
	14450 12550 14750 12550
Wire Wire Line
	14750 12550 14750 12400
Wire Wire Line
	14750 12550 14750 13400
Connection ~ 14750 12550
$Comp
L Simulation_SPICE:DIODE D4
U 1 1 620A24B9
P 15400 12550
F 0 "D4" H 15350 12450 50  0000 L CNN
F 1 "DIODE" V 15445 12630 50  0001 L CNN
F 2 "" H 15400 12550 50  0001 C CNN
F 3 "~" H 15400 12550 50  0001 C CNN
F 4 "Y" H 15400 12550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 15400 12550 50  0001 L CNN "Spice_Primitive"
	1    15400 12550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15250 12550 14750 12550
$Comp
L Device:R_US R26
U 1 1 620C6553
P 15100 13550
F 0 "R26" H 14900 13600 50  0000 L CNN
F 1 "68k" H 14850 13500 50  0000 L CNN
F 2 "Upper Center K" V 15140 13540 50  0001 C CNN
F 3 "~" H 15100 13550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15100 13550 50  0001 C CNN "Notes"
	1    15100 13550
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R25
U 1 1 620C69DA
P 15100 12250
F 0 "R25" H 14900 12300 50  0000 L CNN
F 1 "130k" H 14850 12200 50  0000 L CNN
F 2 "Upper Center K" V 15140 12240 50  0001 C CNN
F 3 "~" H 15100 12250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15100 12250 50  0001 C CNN "Notes"
	1    15100 12250
	1    0    0    1   
$EndComp
Wire Wire Line
	15100 12400 15100 13200
Wire Wire Line
	14450 13200 15100 13200
Connection ~ 15100 13200
Wire Wire Line
	15100 13200 15100 13400
$Comp
L Simulation_SPICE:DIODE D5
U 1 1 620FD22E
P 15400 13200
F 0 "D5" H 15350 13100 50  0000 L CNN
F 1 "DIODE" V 15445 13280 50  0001 L CNN
F 2 "" H 15400 13200 50  0001 C CNN
F 3 "~" H 15400 13200 50  0001 C CNN
F 4 "Y" H 15400 13200 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 15400 13200 50  0001 L CNN "Spice_Primitive"
	1    15400 13200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15250 13200 15100 13200
Wire Wire Line
	13700 13200 14150 13200
$Comp
L Device:R_US R23
U 1 1 6217D9BB
P 15750 12250
F 0 "R23" H 15550 12300 50  0000 L CNN
F 1 "100k" H 15500 12200 50  0000 L CNN
F 2 "Upper Center K" V 15790 12240 50  0001 C CNN
F 3 "~" H 15750 12250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15750 12250 50  0001 C CNN "Notes"
	1    15750 12250
	1    0    0    1   
$EndComp
Wire Wire Line
	15750 12400 15750 12550
Wire Wire Line
	15750 13200 15550 13200
Wire Wire Line
	15550 12550 15750 12550
Connection ~ 15750 12550
Wire Wire Line
	15750 12550 15750 13200
Wire Wire Line
	15750 12100 15750 11900
Wire Wire Line
	15750 11900 15100 11900
Wire Wire Line
	15100 12100 15100 11900
Connection ~ 15100 11900
Wire Wire Line
	14750 11900 14750 12100
Wire Wire Line
	15100 11900 14750 11900
Wire Wire Line
	14750 11900 13700 11900
Connection ~ 14750 11900
Wire Wire Line
	15100 13700 15100 13850
Wire Wire Line
	15100 13850 14750 13850
Wire Wire Line
	14750 13700 14750 13850
Connection ~ 14750 13850
Wire Wire Line
	14750 13850 13700 13850
Wire Wire Line
	15750 13200 16150 13200
Connection ~ 15750 13200
Text GLabel 16150 13200 2    50   Output ~ 0
EDGES
Text GLabel 13700 11900 0    50   Input ~ 0
AUX1-10V
Text GLabel 13700 13850 0    50   UnSpc ~ 0
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
Connection ~ 13300 10600
Wire Notes Line
	3950 11050 3950 7950
Wire Notes Line
	12300 11050 3950 11050
Wire Notes Line
	12300 7950 12300 11050
Wire Notes Line
	3950 7950 12300 7950
Wire Wire Line
	17000 9950 17000 9000
Wire Wire Line
	17000 10150 17000 9950
Connection ~ 17000 9950
Wire Wire Line
	8450 9950 17000 9950
Connection ~ 13750 9550
Wire Wire Line
	12200 9550 13750 9550
$Comp
L Device:C C6
U 1 1 61F588DD
P 12050 9550
F 0 "C6" V 11900 9600 50  0000 L CNN
F 1 "470n" V 11900 9400 50  0000 L CNN
F 2 "Right D Line" H 12088 9400 50  0001 C CNN
F 3 "~" H 12050 9550 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 12050 9550 50  0001 C CNN "Notes"
	1    12050 9550
	0    1    1    0   
$EndComp
Wire Wire Line
	11550 10050 11550 10150
Wire Wire Line
	11950 10050 11950 10150
Wire Wire Line
	11550 10050 11950 10050
Wire Wire Line
	13300 10600 11950 10600
Connection ~ 11950 10600
Wire Wire Line
	11950 10450 11950 10600
Wire Wire Line
	11950 10600 11550 10600
Connection ~ 11550 10600
Wire Wire Line
	11550 10450 11550 10600
Connection ~ 11550 10050
Wire Wire Line
	11550 9900 11550 10050
$Comp
L Device:R_US R42
U 1 1 61F168A2
P 11950 10300
F 0 "R42" H 11750 10350 50  0000 L CNN
F 1 "75k" H 11700 10250 50  0000 L CNN
F 2 "Upper Center K" V 11990 10290 50  0001 C CNN
F 3 "~" H 11950 10300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11950 10300 50  0001 C CNN "Notes"
	1    11950 10300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R41
U 1 1 61F15FFB
P 11550 10300
F 0 "R41" H 11350 10350 50  0000 L CNN
F 1 "270k" H 11300 10250 50  0000 L CNN
F 2 "Upper Center K" V 11590 10290 50  0001 C CNN
F 3 "~" H 11550 10300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 11550 10300 50  0001 C CNN "Notes"
	1    11550 10300
	-1   0    0    1   
$EndComp
Wire Wire Line
	11900 9550 11550 9550
Wire Wire Line
	11550 9550 11350 9550
Connection ~ 11550 9550
Wire Wire Line
	11550 9600 11550 9550
$Comp
L Simulation_SPICE:DIODE D12
U 1 1 61F05980
P 11550 9750
F 0 "D12" H 11500 9650 50  0000 L CNN
F 1 "DIODE" V 11595 9830 50  0001 L CNN
F 2 "" H 11550 9750 50  0001 C CNN
F 3 "~" H 11550 9750 50  0001 C CNN
F 4 "Y" H 11550 9750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 11550 9750 50  0001 L CNN "Spice_Primitive"
	1    11550 9750
	0    -1   -1   0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D11
U 1 1 61EF5902
P 11200 9550
F 0 "D11" H 11150 9450 50  0000 L CNN
F 1 "DIODE" V 11245 9630 50  0001 L CNN
F 2 "" H 11200 9550 50  0001 C CNN
F 3 "~" H 11200 9550 50  0001 C CNN
F 4 "Y" H 11200 9550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 11200 9550 50  0001 L CNN "Spice_Primitive"
	1    11200 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 10600 10900 10600
Connection ~ 10900 10600
Wire Wire Line
	10900 10450 10900 10600
Wire Wire Line
	11050 9550 10900 9550
Wire Wire Line
	10900 9550 10650 9550
Connection ~ 10900 9550
Wire Wire Line
	10900 10150 10900 9550
$Comp
L Device:R_US R36
U 1 1 61ED63FB
P 10900 10300
F 0 "R36" H 10700 10350 50  0000 L CNN
F 1 "9k1" H 10650 10250 50  0000 L CNN
F 2 "Upper Center K" V 10940 10290 50  0001 C CNN
F 3 "~" H 10900 10300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10900 10300 50  0001 C CNN "Notes"
	1    10900 10300
	-1   0    0    1   
$EndComp
Wire Wire Line
	10350 9550 10100 9550
$Comp
L Device:C C3
U 1 1 61EC6592
P 10500 9550
F 0 "C3" V 10350 9600 50  0000 L CNN
F 1 "33n" V 10350 9400 50  0000 L CNN
F 2 "Right D Line" H 10538 9400 50  0001 C CNN
F 3 "~" H 10500 9550 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 10500 9550 50  0001 C CNN "Notes"
	1    10500 9550
	0    1    1    0   
$EndComp
Wire Wire Line
	10900 10600 10100 10600
Connection ~ 10100 10600
Wire Wire Line
	10100 10450 10100 10600
Wire Wire Line
	10100 9900 10100 10150
Wire Wire Line
	10100 9550 10100 9600
Connection ~ 10100 9550
Wire Wire Line
	9950 9550 10100 9550
$Comp
L Device:R_US R27
U 1 1 61E899DE
P 10100 10300
F 0 "R27" H 9900 10350 50  0000 L CNN
F 1 "5k6" H 9850 10250 50  0000 L CNN
F 2 "Upper Center K" V 10140 10290 50  0001 C CNN
F 3 "~" H 10100 10300 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10100 10300 50  0001 C CNN "Notes"
	1    10100 10300
	-1   0    0    1   
$EndComp
$Comp
L Simulation_SPICE:DIODE D10
U 1 1 61E890C8
P 10100 9750
F 0 "D10" H 10050 9650 50  0000 L CNN
F 1 "DIODE" V 10145 9830 50  0001 L CNN
F 2 "" H 10100 9750 50  0001 C CNN
F 3 "~" H 10100 9750 50  0001 C CNN
F 4 "Y" H 10100 9750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 10100 9750 50  0001 L CNN "Spice_Primitive"
	1    10100 9750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R24
U 1 1 61E8880D
P 9800 9550
F 0 "R24" V 9900 9600 50  0000 L CNN
F 1 "10k" V 9900 9450 50  0000 L CNN
F 2 "Upper Center K" V 9840 9540 50  0001 C CNN
F 3 "~" H 9800 9550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9800 9550 50  0001 C CNN "Notes"
	1    9800 9550
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 8350 9150 8350
Connection ~ 9150 8350
Wire Wire Line
	9150 8500 9150 8350
Wire Wire Line
	9150 9550 9650 9550
Wire Wire Line
	9150 9550 9150 9600
Wire Wire Line
	9150 8800 9150 9150
Wire Wire Line
	8850 9350 8600 9350
Connection ~ 9150 9550
$Comp
L Device:Q_PNP_CBE Q2
U 1 1 61DACA82
P 9050 9350
F 0 "Q2" H 9240 9396 50  0000 L CNN
F 1 "AUY21" H 9240 9305 50  0000 L CNN
F 2 "" H 9250 9275 50  0001 L CIN
F 3 "" H 9050 9350 50  0001 L CNN
F 4 "" H 9050 9350 50  0001 C CNN "Notes"
	1    9050 9350
	1    0    0    1   
$EndComp
Wire Wire Line
	9150 10600 10100 10600
Connection ~ 9150 10600
Wire Wire Line
	9150 9900 9150 10600
$Comp
L Device:R_US R14
U 1 1 61D8627B
P 9150 9750
F 0 "R14" H 8950 9800 50  0000 L CNN
F 1 "10k" H 8900 9700 50  0000 L CNN
F 2 "Upper Center K" V 9190 9740 50  0001 C CNN
F 3 "~" H 9150 9750 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9150 9750 50  0001 C CNN "Notes"
	1    9150 9750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R13
U 1 1 61D78AAD
P 9150 8650
F 0 "R13" H 8950 8700 50  0000 L CNN
F 1 "10k" H 8900 8600 50  0000 L CNN
F 2 "Upper Center K" V 9190 8640 50  0001 C CNN
F 3 "~" H 9150 8650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9150 8650 50  0001 C CNN "Notes"
	1    9150 8650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 10600 8600 10600
Connection ~ 8600 10600
Wire Wire Line
	8600 9750 8600 10600
Wire Wire Line
	8600 9350 8600 9450
Connection ~ 8600 9350
Wire Wire Line
	8450 9350 8600 9350
Wire Wire Line
	8600 8800 8600 9350
Wire Wire Line
	9150 8350 8600 8350
Connection ~ 8600 8350
Wire Wire Line
	8600 8350 8600 8500
$Comp
L Device:R_US R12
U 1 1 61D46B05
P 8600 9600
F 0 "R12" H 8400 9650 50  0000 L CNN
F 1 "68k" H 8350 9550 50  0000 L CNN
F 2 "Upper Center K" V 8640 9590 50  0001 C CNN
F 3 "~" H 8600 9600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8600 9600 50  0001 C CNN "Notes"
	1    8600 9600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R11
U 1 1 61D46210
P 8600 8650
F 0 "R11" H 8400 8700 50  0000 L CNN
F 1 "22k" H 8350 8600 50  0000 L CNN
F 2 "Upper Center K" V 8640 8640 50  0001 C CNN
F 3 "~" H 8600 8650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8600 8650 50  0001 C CNN "Notes"
	1    8600 8650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 9350 8150 9350
Wire Wire Line
	7400 9750 7400 10600
$Comp
L Device:R_US R10
U 1 1 61D2E192
P 8300 9950
F 0 "R10" V 8400 10000 50  0000 L CNN
F 1 "510k" V 8400 9800 50  0000 L CNN
F 2 "Upper Center K" V 8340 9940 50  0001 C CNN
F 3 "~" H 8300 9950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8300 9950 50  0001 C CNN "Notes"
	1    8300 9950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 61D2DB73
P 8300 9350
F 0 "R9" V 8400 9400 50  0000 L CNN
F 1 "56k" V 8400 9250 50  0000 L CNN
F 2 "Upper Center K" V 8340 9340 50  0001 C CNN
F 3 "~" H 8300 9350 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8300 9350 50  0001 C CNN "Notes"
	1    8300 9350
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 9950 7850 10100
Wire Wire Line
	7850 9950 8150 9950
Wire Wire Line
	7250 9950 7850 9950
Connection ~ 7850 9950
Wire Wire Line
	7850 8350 8600 8350
Connection ~ 7850 8350
Wire Wire Line
	7850 9450 7850 8350
Connection ~ 7400 10600
Wire Wire Line
	8600 10600 7850 10600
Wire Wire Line
	7850 10600 7400 10600
Connection ~ 7850 10600
Wire Wire Line
	7850 10400 7850 10600
Wire Wire Line
	7850 9750 7850 9950
$Comp
L Device:R_US R7
U 1 1 61CFFB14
P 7850 9600
F 0 "R7" H 7650 9650 50  0000 L CNN
F 1 "22k" H 7600 9550 50  0000 L CNN
F 2 "Upper Center K" V 7890 9590 50  0001 C CNN
F 3 "~" H 7850 9600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 7850 9600 50  0001 C CNN "Notes"
	1    7850 9600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R8
U 1 1 61CFF573
P 7850 10250
F 0 "R8" H 7650 10300 50  0000 L CNN
F 1 "4k8" H 7600 10200 50  0000 L CNN
F 2 "Upper Center K" V 7890 10240 50  0001 C CNN
F 3 "~" H 7850 10250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 7850 10250 50  0001 C CNN "Notes"
	1    7850 10250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 8350 7400 8350
Connection ~ 7400 8350
Wire Wire Line
	7400 8350 7400 8500
Wire Wire Line
	7400 9350 7400 9450
Connection ~ 7400 9350
Wire Wire Line
	7250 9350 7400 9350
Wire Wire Line
	7400 8800 7400 9350
$Comp
L Device:R_US R6
U 1 1 61CB59B3
P 7400 9600
F 0 "R6" H 7200 9650 50  0000 L CNN
F 1 "2k4" H 7150 9550 50  0000 L CNN
F 2 "Upper Center K" V 7440 9590 50  0001 C CNN
F 3 "~" H 7400 9600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 7400 9600 50  0001 C CNN "Notes"
	1    7400 9600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R5
U 1 1 61CB4FE6
P 7400 8650
F 0 "R5" H 7200 8700 50  0000 L CNN
F 1 "15k" H 7150 8600 50  0000 L CNN
F 2 "Upper Center K" V 7440 8640 50  0001 C CNN
F 3 "~" H 7400 8650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 7400 8650 50  0001 C CNN "Notes"
	1    7400 8650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 9350 6950 9350
Wire Wire Line
	6850 9950 6850 9350
Wire Wire Line
	6950 9950 6850 9950
Connection ~ 6850 9350
Wire Wire Line
	6400 9350 6850 9350
$Comp
L Simulation_SPICE:DIODE D3
U 1 1 61CA1FB4
P 7100 9950
F 0 "D3" H 7050 9850 50  0000 L CNN
F 1 "DIODE" V 7145 10030 50  0001 L CNN
F 2 "" H 7100 9950 50  0001 C CNN
F 3 "~" H 7100 9950 50  0001 C CNN
F 4 "Y" H 7100 9950 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 7100 9950 50  0001 L CNN "Spice_Primitive"
	1    7100 9950
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D2
U 1 1 61CA15D9
P 7100 9350
F 0 "D2" H 7050 9250 50  0000 L CNN
F 1 "DIODE" V 7145 9430 50  0001 L CNN
F 2 "" H 7100 9350 50  0001 C CNN
F 3 "~" H 7100 9350 50  0001 C CNN
F 4 "Y" H 7100 9350 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 7100 9350 50  0001 L CNN "Spice_Primitive"
	1    7100 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 10600 4500 9400
Wire Wire Line
	7400 10600 6400 10600
Wire Wire Line
	6400 10600 4500 10600
Connection ~ 6400 10600
Wire Wire Line
	6400 9800 6400 10600
Wire Wire Line
	6400 9350 6400 9500
Connection ~ 6400 9350
Wire Wire Line
	5750 9350 6400 9350
Wire Wire Line
	6400 9200 6400 9350
$Comp
L Device:R_US R4
U 1 1 61C861C8
P 6400 9650
F 0 "R4" H 6200 9700 50  0000 L CNN
F 1 "1k5" H 6150 9600 50  0000 L CNN
F 2 "Upper Center K" V 6440 9640 50  0001 C CNN
F 3 "~" H 6400 9650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 6400 9650 50  0001 C CNN "Notes"
	1    6400 9650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 8500 5450 8350
Wire Wire Line
	6400 8350 7400 8350
Wire Wire Line
	5450 8350 6400 8350
Connection ~ 6400 8350
Wire Wire Line
	6400 8800 6400 8350
Wire Wire Line
	6100 9000 5900 9000
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 61C6C891
P 6300 9000
F 0 "Q1" H 6490 9046 50  0000 L CNN
F 1 "BCY58" H 6490 8955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6500 8925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6300 9000 50  0001 L CNN
F 4 "Center K" H 6300 9000 50  0001 C CNN "Notes"
	1    6300 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 9000 4500 9100
Wire Wire Line
	5000 9000 4500 9000
Wire Wire Line
	5450 9000 5300 9000
Wire Wire Line
	5450 8800 5450 9000
Connection ~ 5450 9000
Wire Wire Line
	5600 9000 5450 9000
$Comp
L Device:R_US R3
U 1 1 61C55123
P 5750 9000
F 0 "R3" V 5850 9050 50  0000 L CNN
F 1 "100" V 5850 8900 50  0000 L CNN
F 2 "Upper Center K" V 5790 8990 50  0001 C CNN
F 3 "~" H 5750 9000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 5750 9000 50  0001 C CNN "Notes"
	1    5750 9000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 61C548EE
P 5450 8650
F 0 "R2" H 5250 8700 50  0000 L CNN
F 1 "1k5" H 5200 8600 50  0000 L CNN
F 2 "Upper Center K" V 5490 8640 50  0001 C CNN
F 3 "~" H 5450 8650 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 5450 8650 50  0001 C CNN "Notes"
	1    5450 8650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R1
U 1 1 61C52696
P 4500 9250
F 0 "R1" H 4300 9300 50  0000 L CNN
F 1 "100k" H 4250 9200 50  0000 L CNN
F 2 "Upper Center K" V 4540 9240 50  0001 C CNN
F 3 "~" H 4500 9250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 4500 9250 50  0001 C CNN "Notes"
	1    4500 9250
	-1   0    0    1   
$EndComp
Text GLabel 9450 8350 2    50   Input ~ 0
E24-12V
Text GLabel 5750 9350 0    50   Output ~ 0
WATER-TEMP-BIAS
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 61D6017F
P 5150 9000
F 0 "D1" H 5100 8900 50  0000 L CNN
F 1 "DIODE" V 5195 9080 50  0001 L CNN
F 2 "" H 5150 9000 50  0001 C CNN
F 3 "~" H 5150 9000 50  0001 C CNN
F 4 "Y" H 5150 9000 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 5150 9000 50  0001 L CNN "Spice_Primitive"
	1    5150 9000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 12750 5850 12750
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
F 1 "300" V 9150 13650 50  0000 L CNN
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
F 1 "240" V 4450 12200 50  0000 L CNN
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
F 1 "240" V 3800 12600 50  0000 L CNN
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
AUX9-BP
Text GLabel 1300 2950 1    50   Input ~ 0
INT-6
$Comp
L Simulation_SPICE:VDC V7
U 1 1 628A2F39
P 1300 4250
F 0 "V7" H 1430 4341 50  0000 L CNN
F 1 "2" H 1430 4250 50  0000 L CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "~" H 1300 4250 50  0001 C CNN
F 4 "Y" H 1300 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1300 4250 50  0001 L CNN "Spice_Primitive"
F 6 "dc(2)" H 1430 4159 50  0000 L CNN "Spice_Model"
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
Wire Wire Line
	6750 13450 7400 13450
$Comp
L Device:R_US R70
U 1 1 62996BC8
P 6100 12750
F 0 "R70" V 6000 12700 50  0000 L CNN
F 1 "90.7" V 6200 12600 50  0000 L CNN
F 2 "Upper Center K" V 6140 12740 50  0001 C CNN
F 3 "~" H 6100 12750 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 6100 12750 50  0001 C CNN "Notes"
	1    6100 12750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R71
U 1 1 6299740F
P 6100 13450
F 0 "R71" V 6200 13400 50  0000 L CNN
F 1 "340.4" V 6000 13350 50  0000 L CNN
F 2 "Upper Center K" V 6140 13440 50  0001 C CNN
F 3 "~" H 6100 13450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 6100 13450 50  0001 C CNN "Notes"
	1    6100 13450
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 12750 9950 12750
Wire Wire Line
	5700 13450 5950 13450
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
$Comp
L pspice:INDUCTOR L1
U 1 1 62AE9102
P 6500 12750
F 0 "L1" H 6500 12569 50  0000 C CNN
F 1 "395mH" H 6500 12660 50  0000 C CNN
F 2 "" H 6500 12750 50  0001 C CNN
F 3 "~" H 6500 12750 50  0001 C CNN
	1    6500 12750
	-1   0    0    1   
$EndComp
$Comp
L pspice:INDUCTOR L2
U 1 1 62B102AA
P 6500 13450
F 0 "L2" H 6500 13665 50  0000 C CNN
F 1 "792mH" H 6500 13574 50  0000 C CNN
F 2 "" H 6500 13450 50  0001 C CNN
F 3 "~" H 6500 13450 50  0001 C CNN
	1    6500 13450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 14300 8350 14300
Connection ~ 8350 14300
Wire Wire Line
	5850 11850 8750 11850
Connection ~ 8750 11850
Wire Notes Line
	6800 12450 6800 13700
Wire Notes Line
	6800 13700 5900 13700
Wire Notes Line
	5900 13700 5900 12450
Wire Notes Line
	5900 12450 6800 12450
Text Notes 2900 12700 0    50   ~ 0
Air temp sensor
$EndSCHEMATC

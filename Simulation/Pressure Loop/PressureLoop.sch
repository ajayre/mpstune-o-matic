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
Text Notes 850  6400 0    50   ~ 0
.model DIODE D\n.model BCY58 npn\n.model BSX95 npn\n.model AUY21 pnp\n.tran 1ms 600ms 120m\n.control\nrun\nrusage\nset filetype=ascii\nset color0=white\nset xbrushwidth=5\nwrite "C:\Users\andy\OneDrive\Documents\MPS Tune-o-Matic\trunk\Simulation\Pressure Loop\PressureLoop.out" "V(E22-PG)" "V(E21-PG)" "V(E14-PG)" "V(E13-PG)" "V(INT-7)"\nplot "V(E22-PG)"+5 "V(E14-PG)"+10 "V(E21-PG)"+15 "V(E13-PG)"+20 "V(INT-7)"\n.endc\n
Text GLabel 1250 4750 3    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	1250 3750 1250 4050
Text GLabel 1250 3000 1    50   Input ~ 0
E24-12V
$Comp
L Simulation_SPICE:VDC V1
U 1 1 604E83CA
P 1250 4250
F 0 "V1" H 1380 4341 50  0000 L CNN
F 1 "12" H 1380 4250 50  0000 L CNN
F 2 "" H 1250 4250 50  0001 C CNN
F 3 "~" H 1250 4250 50  0001 C CNN
F 4 "Y" H 1250 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1250 4250 50  0001 L CNN "Spice_Primitive"
F 6 "dc(12)" H 1380 4159 50  0000 L CNN "Spice_Model"
	1    1250 4250
	1    0    0    -1  
$EndComp
Text GLabel 1450 4600 3    50   Input ~ 0
0
$Comp
L Simulation_SPICE:VPULSE V2
U 1 1 605351C4
P 1900 4250
F 0 "V2" H 2030 4341 50  0000 L CNN
F 1 "VPULSE" H 2030 4250 50  0000 L CNN
F 2 "" H 1900 4250 50  0001 C CNN
F 3 "~" H 1900 4250 50  0001 C CNN
F 4 "Y" H 1900 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1900 4250 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3 2n 2n 2n 60ms 180ms)" H 2030 4159 50  0000 L CNN "Spice_Model"
	1    1900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4600 1900 4450
$Comp
L Simulation_SPICE:VPULSE V4
U 1 1 604FE76E
P 2500 4050
F 0 "V4" H 2630 4141 50  0000 L CNN
F 1 "VPULSE" H 2630 4050 50  0000 L CNN
F 2 "" H 2500 4050 50  0001 C CNN
F 3 "~" H 2500 4050 50  0001 C CNN
F 4 "Y" H 2500 4050 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2500 4050 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3 90ms 2n 2n 60ms 180ms)" H 2630 3959 50  0000 L CNN "Spice_Model"
	1    2500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4250 2500 4600
Wire Wire Line
	2500 4600 1900 4600
Wire Wire Line
	1250 4450 1250 4600
Connection ~ 1900 4600
Wire Wire Line
	1250 4600 1900 4600
Connection ~ 1250 4600
Wire Wire Line
	1250 4600 1250 4750
$Comp
L Simulation_SPICE:VDC VBOGUS1
U 1 1 6056FD5A
P 1250 3550
F 0 "VBOGUS1" H 1380 3641 50  0000 L CNN
F 1 "0" H 1380 3550 50  0000 L CNN
F 2 "" H 1250 3550 50  0001 C CNN
F 3 "~" H 1250 3550 50  0001 C CNN
F 4 "Y" H 1250 3550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1250 3550 50  0001 L CNN "Spice_Primitive"
F 6 "dc(0)" H 1380 3459 50  0000 L CNN "Spice_Model"
	1    1250 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 3000 1250 3350
Text GLabel 8800 2550 0    50   Input ~ 0
E22-PG
$Comp
L Device:R_US R1
U 1 1 61B621D6
P 9400 2550
F 0 "R1" V 9500 2600 50  0000 L CNN
F 1 "3k" V 9500 2450 50  0000 L CNN
F 2 "Upper Center K" V 9440 2540 50  0001 C CNN
F 3 "~" H 9400 2550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 2550 50  0001 C CNN "Notes"
	1    9400 2550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 61B62EF3
P 11150 2550
F 0 "Q1" H 11340 2596 50  0000 L CNN
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
L Device:R_US R2
U 1 1 61B643F7
P 9400 3050
F 0 "R2" V 9500 3100 50  0000 L CNN
F 1 "3k" V 9500 2950 50  0000 L CNN
F 2 "Upper Center K" V 9440 3040 50  0001 C CNN
F 3 "~" H 9400 3050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 3050 50  0001 C CNN "Notes"
	1    9400 3050
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 61B64807
P 9850 2550
F 0 "D1" H 9800 2450 50  0000 L CNN
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
L Device:R_US R5
U 1 1 61B7AB77
P 10200 2850
F 0 "R5" H 10268 2896 50  0000 L CNN
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
F 1 "2n2" H 9950 3300 50  0000 L CNN
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
L Simulation_SPICE:DIODE D2
U 1 1 61B9D9D2
P 9850 3950
F 0 "D2" H 9800 3850 50  0000 L CNN
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
L Device:R_US R4
U 1 1 61BAA8F8
P 9400 3950
F 0 "R4" V 9500 4000 50  0000 L CNN
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
L Device:R_US R3
U 1 1 61BB6A67
P 9400 3550
F 0 "R3" V 9500 3600 50  0000 L CNN
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
L Device:R_US R6
U 1 1 61BE822B
P 10750 2850
F 0 "R6" H 10600 2900 50  0000 L CNN
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
L Device:R_US R8
U 1 1 61C032FE
P 11250 2100
F 0 "R8" H 11318 2146 50  0000 L CNN
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
L Transistor_BJT:BC547 Q2
U 1 1 61C3BD58
P 11150 3950
F 0 "Q2" H 11340 3996 50  0000 L CNN
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
L Device:R_US R7
U 1 1 61C3BD65
P 10750 4250
F 0 "R7" H 10550 4300 50  0000 L CNN
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
L Device:R_US R9
U 1 1 61C3BD74
P 11250 3500
F 0 "R9" H 11318 3546 50  0000 L CNN
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
L Device:R_US R10
U 1 1 61CFD7AE
P 12500 2300
F 0 "R10" V 12600 2350 50  0000 L CNN
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
L Transistor_BJT:BC547 Q3
U 1 1 61D0221D
P 13200 2300
F 0 "Q3" H 13390 2346 50  0000 L CNN
F 1 "BCY58" H 13390 2255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13400 2225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13200 2300 50  0001 L CNN
F 4 "Center K" H 13200 2300 50  0001 C CNN "Notes"
	1    13200 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 61D03BD1
P 13300 1750
F 0 "R12" H 13368 1796 50  0000 L CNN
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
L Device:R_US R13
U 1 1 61D0AEAA
P 13600 1950
F 0 "R13" V 13700 2000 50  0000 L CNN
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
Text GLabel 15000 1950 2    50   Input ~ 0
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
L Device:R_US R15
U 1 1 61D0E025
P 14550 3350
F 0 "R15" V 14650 3400 50  0000 L CNN
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
L Device:R_US R14
U 1 1 61D0E013
P 14150 3150
F 0 "R14" H 14218 3196 50  0000 L CNN
F 1 "2k" H 14218 3105 50  0000 L CNN
F 2 "Upper Center K" V 14190 3140 50  0001 C CNN
F 3 "~" H 14150 3150 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14150 3150 50  0001 C CNN "Notes"
	1    14150 3150
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 61D0E007
P 14050 3700
F 0 "Q4" H 14240 3746 50  0000 L CNN
F 1 "BCY58" H 14240 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14250 3625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 14050 3700 50  0001 L CNN
F 4 "Center K" H 14050 3700 50  0001 C CNN "Notes"
	1    14050 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 61D0DFFB
P 12500 3700
F 0 "R11" V 12600 3750 50  0000 L CNN
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
Text GLabel 1900 3000 1    50   Input ~ 0
E22-PG
Text GLabel 2500 3000 1    50   Input ~ 0
E21-PG
Wire Wire Line
	1900 3000 1900 4050
Wire Wire Line
	2500 3000 2500 3850
Text GLabel 8800 5500 0    50   Input ~ 0
E14-PG
$Comp
L Device:R_US R16
U 1 1 61D60135
P 9400 5500
F 0 "R16" V 9500 5550 50  0000 L CNN
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
L Device:R_US R17
U 1 1 61D6014B
P 9400 6000
F 0 "R17" V 9500 6050 50  0000 L CNN
F 1 "3k" V 9500 5900 50  0000 L CNN
F 2 "Upper Center K" V 9440 5990 50  0001 C CNN
F 3 "~" H 9400 6000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 6000 50  0001 C CNN "Notes"
	1    9400 6000
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D3
U 1 1 61D60157
P 9850 5500
F 0 "D3" H 9800 5400 50  0000 L CNN
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
L Device:R_US R20
U 1 1 61D60164
P 10200 5800
F 0 "R20" H 10268 5846 50  0000 L CNN
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
F 1 "2n2" H 9950 6250 50  0000 L CNN
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
L Simulation_SPICE:DIODE D4
U 1 1 61D6017F
P 9850 6900
F 0 "D4" H 9800 6800 50  0000 L CNN
F 1 "DIODE" V 9895 6980 50  0001 L CNN
F 2 "" H 9850 6900 50  0001 C CNN
F 3 "~" H 9850 6900 50  0001 C CNN
F 4 "Y" H 9850 6900 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9850 6900 50  0001 L CNN "Spice_Primitive"
	1    9850 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 6900 10200 6900
$Comp
L Device:R_US R19
U 1 1 61D6018B
P 9400 6900
F 0 "R19" V 9500 6950 50  0000 L CNN
F 1 "3k" V 9500 6800 50  0000 L CNN
F 2 "Upper Center K" V 9440 6890 50  0001 C CNN
F 3 "~" H 9400 6900 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9400 6900 50  0001 C CNN "Notes"
	1    9400 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 6900 9700 6900
$Comp
L Device:R_US R18
U 1 1 61D60197
P 9400 6500
F 0 "R18" V 9500 6550 50  0000 L CNN
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
L Device:R_US R21
U 1 1 61D601AC
P 10750 5800
F 0 "R21" H 10600 5850 50  0000 L CNN
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
L Device:R_US R23
U 1 1 61D601BC
P 11250 5050
F 0 "R23" H 11318 5096 50  0000 L CNN
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
L Device:R_US R22
U 1 1 61D601D9
P 10750 7200
F 0 "R22" H 10550 7250 50  0000 L CNN
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
L Device:R_US R24
U 1 1 61D601E6
P 11250 6450
F 0 "R24" H 11318 6496 50  0000 L CNN
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
L Device:R_US R25
U 1 1 61D8BD9D
P 12500 5250
F 0 "R25" V 12600 5300 50  0000 L CNN
F 1 "10k" V 12600 5150 50  0000 L CNN
F 2 "Upper Center K" V 12540 5240 50  0001 C CNN
F 3 "~" H 12500 5250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12500 5250 50  0001 C CNN "Notes"
	1    12500 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R26
U 1 1 61D8C4AC
P 12500 6650
F 0 "R26" V 12600 6700 50  0000 L CNN
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
Text GLabel 3050 3000 1    50   Input ~ 0
E14-PG
Text GLabel 3650 3000 1    50   Input ~ 0
E13-PG
$Comp
L Simulation_SPICE:VPULSE V3
U 1 1 61DE27A0
P 3050 3750
F 0 "V3" H 3180 3841 50  0000 L CNN
F 1 "VPULSE" H 3180 3750 50  0000 L CNN
F 2 "" H 3050 3750 50  0001 C CNN
F 3 "~" H 3050 3750 50  0001 C CNN
F 4 "Y" H 3050 3750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3050 3750 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3 45ms 2n 2n 60ms 180ms)" H 3180 3659 50  0000 L CNN "Spice_Model"
	1    3050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4600 3050 3950
$Comp
L Simulation_SPICE:VPULSE V5
U 1 1 61DE27AE
P 3650 3550
F 0 "V5" H 3780 3641 50  0000 L CNN
F 1 "VPULSE" H 3780 3550 50  0000 L CNN
F 2 "" H 3650 3550 50  0001 C CNN
F 3 "~" H 3650 3550 50  0001 C CNN
F 4 "Y" H 3650 3550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3650 3550 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3 135ms 2n 2n 60ms 180ms)" H 3780 3459 50  0000 L CNN "Spice_Model"
	1    3650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3750 3650 4600
Wire Wire Line
	3650 4600 3050 4600
Connection ~ 3050 4600
Wire Wire Line
	2500 4600 3050 4600
Wire Wire Line
	3050 3000 3050 3550
Wire Wire Line
	3650 3000 3650 3350
Connection ~ 2500 4600
Text Notes 3950 3050 0    50   ~ 0
Engine speed of 666.67 RPM\n= 333.35 RPM at distributor\n= 333.35 / 60 = 5.56 rotations per second at distributor\n1 / 5.56 = 180ms per rotation\n120 degrees of dwell = 180ms / 3 = 60ms\n
Text Notes 2500 2550 0    50   ~ 0
I
Text Notes 3600 2550 0    50   ~ 0
II
Text Notes 1850 2550 0    50   ~ 0
III
Text Notes 3000 2550 0    50   ~ 0
IV
Text GLabel 8750 9950 0    50   Input ~ 0
INT-7
$Comp
L Device:R_US R27
U 1 1 61B7C36B
P 9300 9400
F 0 "R27" H 9150 9450 50  0000 L CNN
F 1 "1k" H 9150 9350 50  0000 L CNN
F 2 "Upper Center K" V 9340 9390 50  0001 C CNN
F 3 "~" H 9300 9400 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9300 9400 50  0001 C CNN "Notes"
	1    9300 9400
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q7
U 1 1 61B7C79E
P 9200 9950
F 0 "Q7" H 9390 9996 50  0000 L CNN
F 1 "BCY58" H 9390 9905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9400 9875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9200 9950 50  0001 L CNN
F 4 "Center K" H 9200 9950 50  0001 C CNN "Notes"
	1    9200 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 9950 9000 9950
Wire Wire Line
	9300 9750 9300 9650
Text GLabel 11250 8850 2    50   Input ~ 0
E24-12V
Text GLabel 11250 11000 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	11250 8850 10750 8850
Wire Wire Line
	9300 8850 9300 9250
$Comp
L Transistor_BJT:BC547 Q8
U 1 1 61B8CA77
P 10650 10200
F 0 "Q8" H 10840 10246 50  0000 L CNN
F 1 "BCY58" H 10840 10155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10850 10125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 10650 10200 50  0001 L CNN
F 4 "Center K" H 10650 10200 50  0001 C CNN "Notes"
	1    10650 10200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R28
U 1 1 61B8D9D0
P 10100 10200
F 0 "R28" V 10200 10250 50  0000 L CNN
F 1 "10k" V 10200 10100 50  0000 L CNN
F 2 "Upper Center K" V 10140 10190 50  0001 C CNN
F 3 "~" H 10100 10200 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10100 10200 50  0001 C CNN "Notes"
	1    10100 10200
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 10150 9300 11000
Wire Wire Line
	9300 9650 9750 9650
Wire Wire Line
	9750 9650 9750 10200
Wire Wire Line
	9750 10200 9950 10200
Connection ~ 9300 9650
Wire Wire Line
	9300 9650 9300 9550
Wire Wire Line
	10250 10200 10450 10200
$Comp
L Device:R_US R29
U 1 1 61BA3F02
P 10750 9400
F 0 "R29" H 10600 9450 50  0000 L CNN
F 1 "1k" H 10600 9350 50  0000 L CNN
F 2 "Upper Center K" V 10790 9390 50  0001 C CNN
F 3 "~" H 10750 9400 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10750 9400 50  0001 C CNN "Notes"
	1    10750 9400
	-1   0    0    1   
$EndComp
Wire Wire Line
	10750 9550 10750 9650
Wire Wire Line
	10750 9250 10750 8850
Connection ~ 10750 8850
Wire Wire Line
	10750 8850 9300 8850
Wire Wire Line
	10750 9650 11250 9650
Connection ~ 10750 9650
Wire Wire Line
	10750 9650 10750 10000
Wire Wire Line
	10750 10400 10750 11000
Wire Wire Line
	11250 11000 10750 11000
Wire Wire Line
	10750 11000 9300 11000
Connection ~ 10750 11000
Text GLabel 9950 9650 2    50   Input ~ 0
AUX12-TGL
Text GLabel 11250 9650 2    50   Input ~ 0
AUX11-TGL
Wire Wire Line
	9750 10200 8750 10200
Connection ~ 9750 10200
Text GLabel 8750 10200 0    50   Input ~ 0
BIAS
Wire Wire Line
	9950 9650 9750 9650
Connection ~ 9750 9650
Text Notes 1000 1400 0    118  ~ 0
This requires external ngspice for simulation. See:\nhttp://ngspice.sourceforge.net/ngspice-eeschema.html\nsection 6
$EndSCHEMATC

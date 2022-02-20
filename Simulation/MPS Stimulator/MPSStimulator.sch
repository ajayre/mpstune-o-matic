EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr C 22000 17000
encoding utf-8
Sheet 1 1
Title "Bosch D-Jetronic MPS Stimulator"
Date "2022-02-18"
Rev "1.00"
Comp ""
Comment1 "M117.982 Engine"
Comment2 ""
Comment3 ""
Comment4 ""
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
Wire Wire Line
	2650 4450 2650 4600
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
Text GLabel 7500 4650 0    50   Input ~ 0
IN
$Comp
L Device:R_US R48
U 1 1 61B7C36B
P 8050 4100
F 0 "R48" H 7900 4150 50  0000 L CNN
F 1 "1k" H 7900 4050 50  0000 L CNN
F 2 "Upper Center K" V 8090 4090 50  0001 C CNN
F 3 "~" H 8050 4100 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8050 4100 50  0001 C CNN "Notes"
	1    8050 4100
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q8
U 1 1 61B7C79E
P 7950 4650
F 0 "Q8" H 8140 4696 50  0000 L CNN
F 1 "BCY58" H 8140 4605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8150 4575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7950 4650 50  0001 L CNN
F 4 "Center K" H 7950 4650 50  0001 C CNN "Notes"
	1    7950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4650 7750 4650
Wire Wire Line
	8050 4450 8050 4350
Text GLabel 12150 3550 2    50   Input ~ 0
E24-12V
Text GLabel 12200 5950 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	8050 3550 8050 3950
$Comp
L Transistor_BJT:BC547 Q10
U 1 1 61B8CA77
P 9400 4900
F 0 "Q10" H 9590 4946 50  0000 L CNN
F 1 "BCY58" H 9590 4855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9600 4825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9400 4900 50  0001 L CNN
F 4 "Center K" H 9400 4900 50  0001 C CNN "Notes"
	1    9400 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R50
U 1 1 61B8D9D0
P 8850 4900
F 0 "R50" V 8950 4950 50  0000 L CNN
F 1 "10k" V 8950 4800 50  0000 L CNN
F 2 "Upper Center K" V 8890 4890 50  0001 C CNN
F 3 "~" H 8850 4900 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8850 4900 50  0001 C CNN "Notes"
	1    8850 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 4350 8500 4350
Wire Wire Line
	8500 4350 8500 4900
Wire Wire Line
	8500 4900 8700 4900
Connection ~ 8050 4350
Wire Wire Line
	8050 4350 8050 4250
Wire Wire Line
	9000 4900 9200 4900
$Comp
L Device:R_US R53
U 1 1 61BA3F02
P 9500 4050
F 0 "R53" H 9300 4100 50  0000 L CNN
F 1 "1k" H 9350 4000 50  0000 L CNN
F 2 "Upper Center K" V 9540 4040 50  0001 C CNN
F 3 "~" H 9500 4050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9500 4050 50  0001 C CNN "Notes"
	1    9500 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 3900 9500 3550
Connection ~ 9500 3550
Wire Wire Line
	9500 3550 8050 3550
Wire Wire Line
	9500 5950 8050 5950
Connection ~ 9500 5950
Text GLabel 8500 4100 1    50   Output ~ 0
AUX12-TGL
Text GLabel 9850 4100 1    50   Output ~ 0
AUX11-TGL
Connection ~ 8500 4350
Text Notes 1100 1150 0    118  ~ 0
For external ngspice for simulation see: http://ngspice.sourceforge.net/ngspice-eeschema.html, section 6
Wire Wire Line
	9500 4200 9500 4350
Connection ~ 9500 4350
Wire Wire Line
	9500 4350 9500 4700
Wire Wire Line
	9850 4100 9850 4350
Wire Wire Line
	9850 4350 9500 4350
Wire Wire Line
	8500 4100 8500 4350
Wire Wire Line
	9500 5100 9500 5950
Wire Wire Line
	8050 4850 8050 5950
Text GLabel 14150 5200 0    50   Input ~ 0
AUX11-TGL
$Comp
L Device:C C5
U 1 1 6206C36B
P 14750 5200
F 0 "C5" V 14600 5250 50  0000 L CNN
F 1 "6.8n" V 14600 5050 50  0000 L CNN
F 2 "Right D Line" H 14788 5050 50  0001 C CNN
F 3 "~" H 14750 5200 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 14750 5200 50  0001 C CNN "Notes"
	1    14750 5200
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R30
U 1 1 6207DDA2
P 15200 4250
F 0 "R30" H 15000 4300 50  0000 L CNN
F 1 "130k" H 14950 4200 50  0000 L CNN
F 2 "Upper Center K" V 15240 4240 50  0001 C CNN
F 3 "~" H 15200 4250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15200 4250 50  0001 C CNN "Notes"
	1    15200 4250
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R31
U 1 1 6207E46F
P 15200 5550
F 0 "R31" H 15000 5600 50  0000 L CNN
F 1 "68k" H 14950 5500 50  0000 L CNN
F 2 "Upper Center K" V 15240 5540 50  0001 C CNN
F 3 "~" H 15200 5550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15200 5550 50  0001 C CNN "Notes"
	1    15200 5550
	1    0    0    1   
$EndComp
Wire Wire Line
	15200 4550 15200 4400
Wire Wire Line
	15200 4550 15200 5400
Connection ~ 15200 4550
$Comp
L Simulation_SPICE:DIODE D4
U 1 1 620A24B9
P 15850 4550
F 0 "D4" H 15800 4450 50  0000 L CNN
F 1 "DIODE" V 15895 4630 50  0001 L CNN
F 2 "" H 15850 4550 50  0001 C CNN
F 3 "~" H 15850 4550 50  0001 C CNN
F 4 "Y" H 15850 4550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 15850 4550 50  0001 L CNN "Spice_Primitive"
	1    15850 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15700 4550 15200 4550
$Comp
L Device:R_US R26
U 1 1 620C6553
P 15550 5550
F 0 "R26" H 15350 5600 50  0000 L CNN
F 1 "68k" H 15300 5500 50  0000 L CNN
F 2 "Upper Center K" V 15590 5540 50  0001 C CNN
F 3 "~" H 15550 5550 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15550 5550 50  0001 C CNN "Notes"
	1    15550 5550
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R25
U 1 1 620C69DA
P 15550 4250
F 0 "R25" H 15350 4300 50  0000 L CNN
F 1 "130k" H 15300 4200 50  0000 L CNN
F 2 "Upper Center K" V 15590 4240 50  0001 C CNN
F 3 "~" H 15550 4250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 15550 4250 50  0001 C CNN "Notes"
	1    15550 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	15550 4400 15550 5200
Wire Wire Line
	14900 5200 15550 5200
Connection ~ 15550 5200
Wire Wire Line
	15550 5200 15550 5400
$Comp
L Simulation_SPICE:DIODE D5
U 1 1 620FD22E
P 15850 5200
F 0 "D5" H 15800 5100 50  0000 L CNN
F 1 "DIODE" V 15895 5280 50  0001 L CNN
F 2 "" H 15850 5200 50  0001 C CNN
F 3 "~" H 15850 5200 50  0001 C CNN
F 4 "Y" H 15850 5200 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 15850 5200 50  0001 L CNN "Spice_Primitive"
	1    15850 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15700 5200 15550 5200
Wire Wire Line
	14150 5200 14600 5200
$Comp
L Device:R_US R23
U 1 1 6217D9BB
P 16200 4250
F 0 "R23" H 16000 4300 50  0000 L CNN
F 1 "100k" H 15950 4200 50  0000 L CNN
F 2 "Upper Center K" V 16240 4240 50  0001 C CNN
F 3 "~" H 16200 4250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16200 4250 50  0001 C CNN "Notes"
	1    16200 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	16200 4400 16200 4550
Wire Wire Line
	16200 5200 16000 5200
Wire Wire Line
	16000 4550 16200 4550
Connection ~ 16200 4550
Wire Wire Line
	16200 4550 16200 5200
Wire Wire Line
	16200 4100 16200 3900
Wire Wire Line
	16200 3900 15550 3900
Wire Wire Line
	15550 4100 15550 3900
Connection ~ 15550 3900
Wire Wire Line
	15200 3900 15200 4100
Wire Wire Line
	15550 3900 15200 3900
Connection ~ 15200 3900
Wire Wire Line
	15550 5700 15550 5850
Wire Wire Line
	15550 5850 15200 5850
Wire Wire Line
	15200 5700 15200 5850
Connection ~ 15200 5850
Wire Wire Line
	16200 5200 16600 5200
Connection ~ 16200 5200
Text GLabel 16600 5200 2    50   Output ~ 0
EDGES
Text GLabel 14150 3900 0    50   Input ~ 0
AUX1-10V
Text GLabel 14150 5850 0    50   UnSpc ~ 0
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
Text GLabel 10200 8150 0    50   Input ~ 0
E15-MPS
Text GLabel 11300 8150 3    50   Input ~ 0
E7-MPS
Text GLabel 11300 8850 3    50   Input ~ 0
E8-MPS
$Comp
L Simulation_SPICE:DIODE D15
U 1 1 62457901
P 11900 8850
F 0 "D15" H 11850 8750 50  0000 L CNN
F 1 "DIODE" V 11945 8930 50  0001 L CNN
F 2 "" H 11900 8850 50  0001 C CNN
F 3 "~" H 11900 8850 50  0001 C CNN
F 4 "Y" H 11900 8850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 11900 8850 50  0001 L CNN "Spice_Primitive"
	1    11900 8850
	-1   0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D16
U 1 1 62458057
P 12450 8850
F 0 "D16" H 12400 8750 50  0000 L CNN
F 1 "DIODE" V 12495 8930 50  0001 L CNN
F 2 "" H 12450 8850 50  0001 C CNN
F 3 "~" H 12450 8850 50  0001 C CNN
F 4 "Y" H 12450 8850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 12450 8850 50  0001 L CNN "Spice_Primitive"
	1    12450 8850
	1    0    0    1   
$EndComp
Text GLabel 12200 9100 3    50   Input ~ 0
EDGES
Wire Wire Line
	12050 8850 12200 8850
Wire Wire Line
	12200 9100 12200 8850
Connection ~ 12200 8850
Wire Wire Line
	12200 8850 12300 8850
$Comp
L Transistor_BJT:BC547 Q11
U 1 1 624A5495
P 13000 8850
F 0 "Q11" H 13190 8896 50  0000 L CNN
F 1 "BCY58" H 13190 8805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13200 8775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13000 8850 50  0001 L CNN
F 4 "Center K" H 13000 8850 50  0001 C CNN "Notes"
	1    13000 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 8850 12700 8850
$Comp
L Device:R_US R65
U 1 1 624C0ACD
P 12700 9350
F 0 "R65" H 12500 9400 50  0000 L CNN
F 1 "180k" H 12450 9300 50  0000 L CNN
F 2 "Upper Center K" V 12740 9340 50  0001 C CNN
F 3 "~" H 12700 9350 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 12700 9350 50  0001 C CNN "Notes"
	1    12700 9350
	1    0    0    1   
$EndComp
Wire Wire Line
	12700 9200 12700 9150
Connection ~ 12700 8850
Wire Wire Line
	12700 8850 12600 8850
Wire Wire Line
	12700 9500 12700 9700
Wire Wire Line
	12700 9700 13100 9700
Wire Wire Line
	13100 9050 13100 9700
Connection ~ 13100 9700
$Comp
L Device:R_US R68
U 1 1 625125B1
P 13400 9150
F 0 "R68" V 13500 9200 50  0000 L CNN
F 1 "300" V 13500 9000 50  0000 L CNN
F 2 "Upper Center K" V 13440 9140 50  0001 C CNN
F 3 "~" H 13400 9150 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13400 9150 50  0001 C CNN "Notes"
	1    13400 9150
	0    1    1    0   
$EndComp
Wire Wire Line
	13250 9150 12700 9150
Connection ~ 12700 9150
Wire Wire Line
	12700 9150 12700 8850
$Comp
L Device:C C9
U 1 1 6252E59E
P 13800 8850
F 0 "C9" H 13600 8900 50  0000 L CNN
F 1 "1.0n" H 13550 8800 50  0000 L CNN
F 2 "Right D Line" H 13838 8700 50  0001 C CNN
F 3 "~" H 13800 8850 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 13800 8850 50  0001 C CNN "Notes"
	1    13800 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 9000 13800 9150
Wire Wire Line
	13800 9150 13550 9150
$Comp
L Device:R_US R67
U 1 1 6254B02E
P 13400 8400
F 0 "R67" V 13500 8450 50  0000 L CNN
F 1 "2k4" V 13500 8300 50  0000 L CNN
F 2 "Upper Center K" V 13440 8390 50  0001 C CNN
F 3 "~" H 13400 8400 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13400 8400 50  0001 C CNN "Notes"
	1    13400 8400
	0    1    1    0   
$EndComp
Wire Wire Line
	13250 8400 13100 8400
Wire Wire Line
	13100 8400 13100 8650
Wire Wire Line
	13550 8400 13800 8400
Wire Wire Line
	13800 8400 13800 8700
$Comp
L Transistor_BJT:BC547 Q12
U 1 1 625847C0
P 14200 8400
F 0 "Q12" H 14390 8446 50  0000 L CNN
F 1 "BCY58" H 14390 8355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14400 8325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 14200 8400 50  0001 L CNN
F 4 "Center K" H 14200 8400 50  0001 C CNN "Notes"
	1    14200 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 8400 13800 8400
Connection ~ 13800 8400
Wire Wire Line
	14300 8600 14300 9700
Wire Wire Line
	13100 9700 14300 9700
$Comp
L Device:R_US R66
U 1 1 625BF40D
P 13100 7850
F 0 "R66" H 12900 7900 50  0000 L CNN
F 1 "2k" H 12900 7800 50  0000 L CNN
F 2 "Upper Center K" V 13140 7840 50  0001 C CNN
F 3 "~" H 13100 7850 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 13100 7850 50  0001 C CNN "Notes"
	1    13100 7850
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R69
U 1 1 625C0721
P 14300 7850
F 0 "R69" H 14100 7900 50  0000 L CNN
F 1 "1k" H 14100 7800 50  0000 L CNN
F 2 "Upper Center K" V 14340 7840 50  0001 C CNN
F 3 "~" H 14300 7850 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 14300 7850 50  0001 C CNN "Notes"
	1    14300 7850
	1    0    0    1   
$EndComp
Wire Wire Line
	14300 8000 14300 8150
Wire Wire Line
	13100 8000 13100 8400
Connection ~ 13100 8400
Wire Wire Line
	13100 7700 13100 7250
Wire Wire Line
	13100 7250 14300 7250
Wire Wire Line
	14300 7700 14300 7250
Connection ~ 14300 7250
Wire Wire Line
	14300 7250 14800 7250
Connection ~ 14300 8150
Wire Wire Line
	14300 8150 14300 8200
Text GLabel 12750 8400 0    50   Output ~ 0
AUX10-SP
Wire Wire Line
	12750 8400 13100 8400
Wire Wire Line
	14300 9700 14800 9700
Connection ~ 14300 9700
Text GLabel 14800 9700 2    50   UnSpc ~ 0
E11-GND
Text GLabel 14800 7250 2    50   Input ~ 0
AUX1-10V
$Comp
L Device:R_US R64
U 1 1 6270DFA3
P 10200 7450
F 0 "R64" H 10000 7500 50  0000 L CNN
F 1 "510" H 10000 7400 50  0000 L CNN
F 2 "Upper Center K" V 10240 7440 50  0001 C CNN
F 3 "~" H 10200 7450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 10200 7450 50  0001 C CNN "Notes"
	1    10200 7450
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R63
U 1 1 6270E783
P 9850 7700
F 0 "R63" V 9950 7750 50  0000 L CNN
F 1 "2k2" V 9950 7600 50  0000 L CNN
F 2 "Upper Center K" V 9890 7690 50  0001 C CNN
F 3 "~" H 9850 7700 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9850 7700 50  0001 C CNN "Notes"
	1    9850 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 7300 10200 7250
Wire Wire Line
	10200 7600 10200 7700
Wire Wire Line
	10200 7700 10000 7700
Connection ~ 10200 7700
Wire Wire Line
	10200 7700 10200 8150
$Comp
L Simulation_SPICE:DIODE D14
U 1 1 6278C325
P 9400 7700
F 0 "D14" H 9350 7600 50  0000 L CNN
F 1 "DIODE" V 9445 7780 50  0001 L CNN
F 2 "" H 9400 7700 50  0001 C CNN
F 3 "~" H 9400 7700 50  0001 C CNN
F 4 "Y" H 9400 7700 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9400 7700 50  0001 L CNN "Spice_Primitive"
	1    9400 7700
	1    0    0    1   
$EndComp
Wire Wire Line
	9550 7700 9700 7700
$Comp
L Device:R_US R62
U 1 1 627AC88D
P 9100 7450
F 0 "R62" H 8900 7500 50  0000 L CNN
F 1 "1k2" H 8900 7400 50  0000 L CNN
F 2 "Upper Center K" V 9140 7440 50  0001 C CNN
F 3 "~" H 9100 7450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9100 7450 50  0001 C CNN "Notes"
	1    9100 7450
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 7300 9100 7250
Wire Wire Line
	9100 7250 10200 7250
Connection ~ 10200 7250
Wire Wire Line
	9250 7700 9100 7700
Wire Wire Line
	9100 7700 9100 7600
$Comp
L Device:R_US R61
U 1 1 627EDB3A
P 8700 7700
F 0 "R61" V 8800 7750 50  0000 L CNN
F 1 "240" V 8800 7550 50  0000 L CNN
F 2 "Upper Center K" V 8740 7690 50  0001 C CNN
F 3 "~" H 8700 7700 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8700 7700 50  0001 C CNN "Notes"
	1    8700 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 7700 9100 7700
Connection ~ 9100 7700
Wire Wire Line
	8550 7700 8050 7700
Wire Wire Line
	8050 7700 8050 7950
Wire Wire Line
	8050 9700 8050 8250
Text GLabel 8050 7700 0    50   Input ~ 0
E1-T1
Text GLabel 12050 8150 1    50   Input ~ 0
BASE_PULSE
Text GLabel 1300 3000 1    50   Input ~ 0
INT-6
$Comp
L Simulation_SPICE:VDC V7
U 1 1 628A2F39
P 1300 4250
F 0 "V7" H 1430 4341 50  0000 L CNN
F 1 "5" H 1430 4250 50  0000 L CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "~" H 1300 4250 50  0001 C CNN
F 4 "Y" H 1300 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1300 4250 50  0001 L CNN "Spice_Primitive"
F 6 "dc(5.0)" H 1430 4159 50  0000 L CNN "Spice_Model"
	1    1300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4450 1300 4600
Wire Wire Line
	1300 4600 1950 4600
Connection ~ 1950 4600
Wire Wire Line
	1300 4050 1300 3000
Wire Wire Line
	10050 8500 10050 8850
Wire Wire Line
	9950 8500 10050 8500
Text GLabel 9950 8500 0    50   Input ~ 0
E10-MPS
Text GLabel 8800 8300 0    50   Input ~ 0
INT-6
Wire Wire Line
	8050 9700 9100 9700
Connection ~ 12700 9700
Wire Wire Line
	10200 7250 13100 7250
Connection ~ 13100 7250
Text Notes 7250 8100 0    50   ~ 0
Air temp sensor
Wire Wire Line
	10500 8250 10500 8150
Wire Wire Line
	10200 8150 10500 8150
Wire Wire Line
	10900 8250 10900 8150
Wire Wire Line
	10900 8150 14300 8150
Wire Wire Line
	10900 8850 10900 8750
Wire Wire Line
	10900 8850 11750 8850
Wire Wire Line
	10500 8850 10500 8750
Wire Wire Line
	10050 8850 10500 8850
$Comp
L BritishIdeas:MPS TR1
U 1 1 620F2499
P 10700 8500
F 0 "TR1" V 10400 8450 50  0000 L CNN
F 1 "MPS" V 10950 8400 50  0000 L CNN
F 2 "" H 10700 8500 50  0001 C CNN
F 3 "" H 10700 8500 50  0001 C CNN
F 4 "X" H 10700 8500 50  0001 C CNN "Spice_Primitive"
F 5 "mps vac=15" V 11150 8500 50  0000 C CNN "Spice_Model"
F 6 "Y" H 10700 8500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "MPS.lib" H 10700 8500 50  0001 C CNN "Spice_Lib_File"
	1    10700 8500
	0    1    1    0   
$EndComp
Text Notes 850  4700 0    50   ~ 0
Lower voltage = richer
Text Notes 1350 9300 0    50   ~ 0
.model DIODE D\n.model BCY58 npn\n.model BSX95 npn\n.model AUY21 pnp\n\n.tran 0.05ms 100ms 89m\n\n.control\nrun\nrusage\nset filetype=ascii\nset color0=white\nset xbrushwidth=5\n\n*write "C:\Users\andy\OneDrive\Documents\MPS Tune-o-Matic\trunk\Simulation\Pressure Loop\PressureLoop.out" "V(BASE_PULSE)" "V(INT-7)"\nplot "V(IN)"+0 "V(BASE_PULSE)"+6 "V(OUT)"+33\n\n.endc\n
Wire Wire Line
	15200 3900 14150 3900
Wire Wire Line
	15200 5850 14150 5850
Wire Wire Line
	14900 4550 15200 4550
$Comp
L Device:C C4
U 1 1 6206BC92
P 14750 4550
F 0 "C4" V 14600 4600 50  0000 L CNN
F 1 "6.8n" V 14600 4400 50  0000 L CNN
F 2 "Right D Line" H 14788 4400 50  0001 C CNN
F 3 "~" H 14750 4550 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 14750 4550 50  0001 C CNN "Notes"
	1    14750 4550
	0    -1   1    0   
$EndComp
Wire Wire Line
	14150 4550 14600 4550
Text GLabel 14150 4550 0    50   Input ~ 0
AUX12-TGL
Wire Wire Line
	9500 3550 12150 3550
Wire Wire Line
	9500 5950 12200 5950
$Comp
L Simulation_SPICE:VPULSE V8
U 1 1 6218494C
P 3300 4250
F 0 "V8" H 3430 4341 50  0000 L CNN
F 1 "VPULSE" H 3430 4250 50  0000 L CNN
F 2 "" H 3300 4250 50  0001 C CNN
F 3 "~" H 3300 4250 50  0001 C CNN
F 4 "Y" H 3300 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3300 4250 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 5 2n 2n 2n 3ms 6ms)" H 3430 4159 50  0000 L CNN "Spice_Model"
	1    3300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4450 3300 4600
Text GLabel 3300 3000 1    50   Input ~ 0
IN
Wire Wire Line
	3300 3000 3300 4050
Wire Wire Line
	2650 4600 3300 4600
Wire Wire Line
	17300 7250 17300 7700
Text GLabel 18500 8700 2    50   Input ~ 0
OUT
Wire Wire Line
	17300 9700 18100 9700
Text GLabel 18500 9700 2    50   UnSpc ~ 0
E11-GND
Text GLabel 16300 8400 0    50   Input ~ 0
BASE_PULSE
Wire Wire Line
	17300 8100 17300 8000
Connection ~ 17300 8100
Wire Wire Line
	17300 8200 17300 8100
Wire Wire Line
	16750 8400 16900 8400
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 6211D288
P 17200 8400
F 0 "Q1" H 17390 8446 50  0000 L CNN
F 1 "BCY58" H 17390 8355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 17400 8325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 17200 8400 50  0001 L CNN
F 4 "Center K" H 17200 8400 50  0001 C CNN "Notes"
	1    17200 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	16300 8400 16450 8400
$Comp
L Device:R_US R2
U 1 1 6213D2E2
P 16600 8400
F 0 "R2" H 16450 8450 50  0000 L CNN
F 1 "20k" H 16450 8350 50  0000 L CNN
F 2 "Upper Center K" V 16640 8390 50  0001 C CNN
F 3 "~" H 16600 8400 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16600 8400 50  0001 C CNN "Notes"
	1    16600 8400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	17300 8600 17300 9700
$Comp
L Device:R_US R1
U 1 1 6211D27D
P 17300 7850
F 0 "R1" H 17150 7900 50  0000 L CNN
F 1 "2k" H 17150 7800 50  0000 L CNN
F 2 "Upper Center K" V 17340 7840 50  0001 C CNN
F 3 "~" H 17300 7850 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 17300 7850 50  0001 C CNN "Notes"
	1    17300 7850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R3
U 1 1 6213E6B1
P 16900 8950
F 0 "R3" H 16750 9000 50  0000 L CNN
F 1 "10k" H 16750 8900 50  0000 L CNN
F 2 "Upper Center K" V 16940 8940 50  0001 C CNN
F 3 "~" H 16900 8950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 16900 8950 50  0001 C CNN "Notes"
	1    16900 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	16900 8800 16900 8400
Connection ~ 16900 8400
Wire Wire Line
	16900 8400 17000 8400
Wire Wire Line
	16900 9100 16900 9700
Wire Wire Line
	16900 9700 17300 9700
Connection ~ 17300 9700
Wire Wire Line
	17300 7250 18500 7250
Text GLabel 18500 7250 2    50   Input ~ 0
AUX1-10V
$Comp
L Device:R_US R4
U 1 1 6214A30B
P 18100 8350
F 0 "R4" H 17950 8400 50  0000 L CNN
F 1 "10k" H 17900 8300 50  0000 L CNN
F 2 "Upper Center K" V 18140 8340 50  0001 C CNN
F 3 "~" H 18100 8350 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 18100 8350 50  0001 C CNN "Notes"
	1    18100 8350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R5
U 1 1 6214AC60
P 18100 9050
F 0 "R5" H 17950 9100 50  0000 L CNN
F 1 "12k" H 17900 9000 50  0000 L CNN
F 2 "Upper Center K" V 18140 9040 50  0001 C CNN
F 3 "~" H 18100 9050 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 18100 9050 50  0001 C CNN "Notes"
	1    18100 9050
	-1   0    0    1   
$EndComp
Wire Wire Line
	18100 9200 18100 9700
Connection ~ 18100 9700
Wire Wire Line
	18100 9700 18500 9700
Wire Wire Line
	18100 8900 18100 8700
Wire Wire Line
	18100 8200 18100 8100
Wire Wire Line
	17300 8100 18100 8100
Wire Wire Line
	18500 8700 18100 8700
Connection ~ 18100 8700
Wire Wire Line
	18100 8700 18100 8500
Connection ~ 9100 9700
Wire Wire Line
	9100 9700 12700 9700
Wire Wire Line
	9100 8300 8800 8300
Wire Wire Line
	9100 9350 9100 9700
Wire Wire Line
	9100 8400 9100 8300
Connection ~ 10050 8850
Wire Wire Line
	9100 8850 10050 8850
Wire Wire Line
	9100 8850 9100 9050
Connection ~ 9100 8850
Wire Wire Line
	9100 8700 9100 8850
$Comp
L Device:R_US R7
U 1 1 62182801
P 9100 9200
F 0 "R7" V 9000 9100 50  0000 L CNN
F 1 "1k" V 9200 9100 50  0000 L CNN
F 2 "Upper Center K" V 9140 9190 50  0001 C CNN
F 3 "~" H 9100 9200 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9100 9200 50  0001 C CNN "Notes"
	1    9100 9200
	-1   0    0    1   
$EndComp
$Comp
L Device:Varistor RV1
U 1 1 621ABE67
P 9100 8550
F 0 "RV1" H 9203 8596 50  0000 L CNN
F 1 "5k" H 9203 8505 50  0000 L CNN
F 2 "" V 9030 8550 50  0001 C CNN
F 3 "~" H 9100 8550 50  0001 C CNN
	1    9100 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV2
U 1 1 621AEB7C
P 8050 8100
F 0 "RV2" H 8153 8146 50  0000 L CNN
F 1 "1k" H 8153 8055 50  0000 L CNN
F 2 "" V 7980 8100 50  0001 C CNN
F 3 "~" H 8050 8100 50  0001 C CNN
	1    8050 8100
	1    0    0    -1  
$EndComp
$EndSCHEMATC

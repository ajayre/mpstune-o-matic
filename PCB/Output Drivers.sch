EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
L Device:R R?
U 1 1 61AF98D4
P 2600 2000
AR Path="/604BF505/61AF98D4" Ref="R?"  Part="1" 
AR Path="/60469920/61AF98D4" Ref="R?"  Part="1" 
AR Path="/61B44737/61AF98D4" Ref="R?"  Part="1" 
F 0 "R?" V 2393 2000 50  0000 C CNN
F 1 "1k" V 2484 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 2000 50  0001 C CNN
F 3 "~" H 2600 2000 50  0001 C CNN
	1    2600 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AF98DA
P 3250 2550
AR Path="/61AF98DA" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/61AF98DA" Ref="#PWR?"  Part="1" 
AR Path="/60469920/61AF98DA" Ref="#PWR?"  Part="1" 
AR Path="/61B44737/61AF98DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3250 2300 50  0001 C CNN
F 1 "GND" H 3255 2377 50  0000 C CNN
F 2 "" H 3250 2550 50  0001 C CNN
F 3 "" H 3250 2550 50  0001 C CNN
	1    3250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2000 2450 2000
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 61AF98E2
P 3150 2000
AR Path="/604BF505/61AF98E2" Ref="Q?"  Part="1" 
AR Path="/60469920/61AF98E2" Ref="Q?"  Part="1" 
AR Path="/61B44737/61AF98E2" Ref="Q?"  Part="1" 
F 0 "Q?" H 3340 2046 50  0000 L CNN
F 1 "MMBT2222ALT1G" H 3340 1955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3350 1925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3150 2000 50  0001 L CNN
F 4 "MMBT2222ALT1G" H 3150 2000 50  0001 C CNN "manf#"
	1    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61AF98E8
P 2850 2250
AR Path="/604BF505/61AF98E8" Ref="R?"  Part="1" 
AR Path="/60469920/61AF98E8" Ref="R?"  Part="1" 
AR Path="/61B44737/61AF98E8" Ref="R?"  Part="1" 
F 0 "R?" V 2643 2250 50  0000 C CNN
F 1 "10k" V 2734 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2780 2250 50  0001 C CNN
F 3 "~" H 2850 2250 50  0001 C CNN
	1    2850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2200 3250 2500
Wire Wire Line
	2750 2000 2850 2000
Wire Wire Line
	2850 2000 2850 2100
Connection ~ 2850 2000
Wire Wire Line
	2850 2000 2950 2000
Wire Wire Line
	2850 2400 2850 2500
Wire Wire Line
	2850 2500 3250 2500
Connection ~ 3250 2500
Wire Wire Line
	3250 2500 3250 2550
$Comp
L Device:Q_PNP_BEC Q?
U 1 1 61AF98F8
P 4000 1750
F 0 "Q?" H 4191 1704 50  0000 L CNN
F 1 "MMBT3906LT1G" H 4191 1795 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 1850 50  0001 C CNN
F 3 "~" H 4000 1750 50  0001 C CNN
F 4 "MMBT3906LT1G" H 4000 1750 50  0001 C CNN "manf#"
	1    4000 1750
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61AF98FE
P 3250 1550
AR Path="/604BF505/61AF98FE" Ref="R?"  Part="1" 
AR Path="/60469920/61AF98FE" Ref="R?"  Part="1" 
AR Path="/61B44737/61AF98FE" Ref="R?"  Part="1" 
F 0 "R?" V 3043 1550 50  0000 C CNN
F 1 "10k" V 3134 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 1550 50  0001 C CNN
F 3 "~" H 3250 1550 50  0001 C CNN
	1    3250 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 61AF9904
P 3250 1300
AR Path="/61AF9904" Ref="#PWR?"  Part="1" 
AR Path="/60479334/61AF9904" Ref="#PWR?"  Part="1" 
AR Path="/60469920/61AF9904" Ref="#PWR?"  Part="1" 
AR Path="/61B44737/61AF9904" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3250 1150 50  0001 C CNN
F 1 "+12V" H 3265 1473 50  0000 C CNN
F 2 "" H 3250 1300 50  0001 C CNN
F 3 "" H 3250 1300 50  0001 C CNN
	1    3250 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3250 1300 3250 1350
Wire Wire Line
	4100 1550 4100 1350
Wire Wire Line
	4100 1350 3250 1350
Connection ~ 3250 1350
Wire Wire Line
	3250 1350 3250 1400
Wire Wire Line
	4100 1950 4100 2050
Wire Wire Line
	4100 2050 4850 2050
$Comp
L Device:R R?
U 1 1 61AF9911
P 3550 1750
AR Path="/604BF505/61AF9911" Ref="R?"  Part="1" 
AR Path="/60469920/61AF9911" Ref="R?"  Part="1" 
AR Path="/61B44737/61AF9911" Ref="R?"  Part="1" 
F 0 "R?" V 3343 1750 50  0000 C CNN
F 1 "1k" V 3434 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 1750 50  0001 C CNN
F 3 "~" H 3550 1750 50  0001 C CNN
	1    3550 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1700 3250 1750
Wire Wire Line
	3700 1750 3800 1750
Wire Wire Line
	3400 1750 3250 1750
Connection ~ 3250 1750
Wire Wire Line
	3250 1750 3250 1800
Text HLabel 2350 2000 0    50   Input ~ 0
SPEED_SENSOR_PULSE
Text HLabel 2350 3900 0    50   Input ~ 0
ENABLE_II_IV
$Comp
L Device:R R?
U 1 1 61AF9969
P 2600 3900
AR Path="/604BF505/61AF9969" Ref="R?"  Part="1" 
AR Path="/60469920/61AF9969" Ref="R?"  Part="1" 
AR Path="/61B44737/61AF9969" Ref="R?"  Part="1" 
F 0 "R?" V 2393 3900 50  0000 C CNN
F 1 "1k" V 2484 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 3900 50  0001 C CNN
F 3 "~" H 2600 3900 50  0001 C CNN
	1    2600 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AF996F
P 3250 4450
AR Path="/61AF996F" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/61AF996F" Ref="#PWR?"  Part="1" 
AR Path="/60469920/61AF996F" Ref="#PWR?"  Part="1" 
AR Path="/61B44737/61AF996F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3250 4200 50  0001 C CNN
F 1 "GND" H 3255 4277 50  0000 C CNN
F 2 "" H 3250 4450 50  0001 C CNN
F 3 "" H 3250 4450 50  0001 C CNN
	1    3250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3900 2450 3900
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 61AF9977
P 3150 3900
AR Path="/604BF505/61AF9977" Ref="Q?"  Part="1" 
AR Path="/60469920/61AF9977" Ref="Q?"  Part="1" 
AR Path="/61B44737/61AF9977" Ref="Q?"  Part="1" 
F 0 "Q?" H 3340 3946 50  0000 L CNN
F 1 "MMBT2222ALT1G" H 3340 3855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3350 3825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3150 3900 50  0001 L CNN
F 4 "MMBT2222ALT1G" H 3150 3900 50  0001 C CNN "manf#"
	1    3150 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61AF997D
P 2850 4150
AR Path="/604BF505/61AF997D" Ref="R?"  Part="1" 
AR Path="/60469920/61AF997D" Ref="R?"  Part="1" 
AR Path="/61B44737/61AF997D" Ref="R?"  Part="1" 
F 0 "R?" V 2643 4150 50  0000 C CNN
F 1 "10k" V 2734 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2780 4150 50  0001 C CNN
F 3 "~" H 2850 4150 50  0001 C CNN
	1    2850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4100 3250 4400
Wire Wire Line
	2750 3900 2850 3900
Wire Wire Line
	2850 3900 2850 4000
Connection ~ 2850 3900
Wire Wire Line
	2850 3900 2950 3900
Wire Wire Line
	2850 4300 2850 4400
Wire Wire Line
	2850 4400 3250 4400
Connection ~ 3250 4400
Wire Wire Line
	3250 4400 3250 4450
$Comp
L Device:Q_PNP_BEC Q?
U 1 1 61AF998D
P 4000 3650
F 0 "Q?" H 4191 3604 50  0000 L CNN
F 1 "MMBT3906LT1G" H 4191 3695 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 3750 50  0001 C CNN
F 3 "~" H 4000 3650 50  0001 C CNN
F 4 "MMBT3906LT1G" H 4000 3650 50  0001 C CNN "manf#"
	1    4000 3650
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61AF9993
P 3250 3450
AR Path="/604BF505/61AF9993" Ref="R?"  Part="1" 
AR Path="/60469920/61AF9993" Ref="R?"  Part="1" 
AR Path="/61B44737/61AF9993" Ref="R?"  Part="1" 
F 0 "R?" V 3043 3450 50  0000 C CNN
F 1 "10k" V 3134 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 3450 50  0001 C CNN
F 3 "~" H 3250 3450 50  0001 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 61AF9999
P 3250 3200
AR Path="/61AF9999" Ref="#PWR?"  Part="1" 
AR Path="/60479334/61AF9999" Ref="#PWR?"  Part="1" 
AR Path="/60469920/61AF9999" Ref="#PWR?"  Part="1" 
AR Path="/61B44737/61AF9999" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3250 3050 50  0001 C CNN
F 1 "+12V" H 3265 3373 50  0000 C CNN
F 2 "" H 3250 3200 50  0001 C CNN
F 3 "" H 3250 3200 50  0001 C CNN
	1    3250 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3250 3200 3250 3250
Wire Wire Line
	4100 3450 4100 3250
Wire Wire Line
	4100 3250 3250 3250
Connection ~ 3250 3250
Wire Wire Line
	3250 3250 3250 3300
Wire Wire Line
	4100 3850 4100 3950
Wire Wire Line
	4100 3950 4850 3950
$Comp
L Device:R R?
U 1 1 61AF99A6
P 3550 3650
AR Path="/604BF505/61AF99A6" Ref="R?"  Part="1" 
AR Path="/60469920/61AF99A6" Ref="R?"  Part="1" 
AR Path="/61B44737/61AF99A6" Ref="R?"  Part="1" 
F 0 "R?" V 3343 3650 50  0000 C CNN
F 1 "1k" V 3434 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 3650 50  0001 C CNN
F 3 "~" H 3550 3650 50  0001 C CNN
	1    3550 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3600 3250 3650
Wire Wire Line
	3700 3650 3800 3650
Wire Wire Line
	3400 3650 3250 3650
Connection ~ 3250 3650
Wire Wire Line
	3250 3650 3250 3700
Text HLabel 4850 2050 2    50   Output ~ 0
SPEED_SENSOR_PULSE_12V
Text HLabel 4850 3950 2    50   Output ~ 0
ENABLE_II_IV_12V
$EndSCHEMATC

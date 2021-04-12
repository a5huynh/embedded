EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 3350 1150 2    50   ~ 0
GND
$Comp
L Connector:USB_C_Receptacle_USB2.0 J2
U 1 1 606484AC
P 4250 1150
F 0 "J2" V 4311 1880 50  0000 L CNN
F 1 "USB_C_Receptacle_USB2.0" V 4402 1880 50  0000 L CNN
F 2 "Connector_USB:USB_C_Receptacle_GCT_USB4085" H 4400 1150 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 4400 1150 50  0001 C CNN
	1    4250 1150
	0    1    1    0   
$EndComp
Text Label 7050 1650 2    50   ~ 0
3V3OUT
Text Label 7050 1950 2    50   ~ 0
TX
Text Label 7050 2050 2    50   ~ 0
RX
Text Label 5650 2550 2    50   ~ 0
VCC
Wire Wire Line
	4050 1750 4050 1800
Wire Wire Line
	4150 1750 4150 1800
Wire Wire Line
	4250 1750 4250 1800
Wire Wire Line
	4350 1750 4350 1800
NoConn ~ 3650 1750
NoConn ~ 3750 1750
$Comp
L Device:R R2
U 1 1 60640A84
P 3400 3850
F 0 "R2" V 3500 3850 50  0000 C CNN
F 1 "27" V 3600 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3330 3850 50  0001 C CNN
F 3 "~" H 3400 3850 50  0001 C CNN
	1    3400 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 60642F55
P 3400 3750
F 0 "R1" V 3193 3750 50  0000 C CNN
F 1 "27" V 3284 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3330 3750 50  0001 C CNN
F 3 "~" H 3400 3750 50  0001 C CNN
	1    3400 3750
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 60644F2B
P 2850 4150
F 0 "C1" H 2650 4200 50  0000 L CNN
F 1 "47pF" H 2550 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2888 4000 50  0001 C CNN
F 3 "~" H 2850 4150 50  0001 C CNN
	1    2850 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6064611A
P 3100 4150
F 0 "C2" H 2985 4104 50  0000 R CNN
F 1 "47pF" H 2985 4195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3138 4000 50  0001 C CNN
F 3 "~" H 3100 4150 50  0001 C CNN
	1    3100 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 606479FC
P 5300 1900
F 0 "C4" H 5350 1550 50  0000 R CNN
F 1 "10nF" H 5400 1650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5338 1750 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	-1   0    0    1   
$EndComp
NoConn ~ 5450 4650
NoConn ~ 5450 4350
Wire Wire Line
	6650 4550 6650 3750
Wire Wire Line
	5450 4550 6650 4550
Wire Wire Line
	6150 4450 6150 3750
Wire Wire Line
	5450 4450 6150 4450
$Comp
L Device:LED_Small D2
U 1 1 606588A1
P 6650 3350
F 0 "D2" V 6696 3280 50  0000 R CNN
F 1 "TX Green" V 6605 3280 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6650 3350 50  0001 C CNN
F 3 "~" V 6650 3350 50  0001 C CNN
	1    6650 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 60657C28
P 6150 3350
F 0 "D1" V 6196 3280 50  0000 R CNN
F 1 "RX Red" V 6105 3280 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6150 3350 50  0001 C CNN
F 3 "~" V 6150 3350 50  0001 C CNN
	1    6150 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 60656301
P 6650 3600
F 0 "R4" H 6580 3554 50  0000 R CNN
F 1 "270" H 6580 3645 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6580 3600 50  0001 C CNN
F 3 "~" H 6650 3600 50  0001 C CNN
	1    6650 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 60655864
P 6150 3600
F 0 "R3" H 6080 3554 50  0000 R CNN
F 1 "270" H 6080 3645 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6080 3600 50  0001 C CNN
F 3 "~" H 6150 3600 50  0001 C CNN
	1    6150 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 5050 4650 4950
Connection ~ 4650 5050
Wire Wire Line
	4850 5050 4650 5050
NoConn ~ 5450 4150
NoConn ~ 5450 4050
NoConn ~ 5450 3950
NoConn ~ 5450 3750
NoConn ~ 5450 3650
Text Label 5450 3550 0    50   ~ 0
RX
Text Label 5450 3450 0    50   ~ 0
TX
Wire Wire Line
	4850 4950 4850 5050
Wire Wire Line
	4650 5250 4650 5050
Text Label 4650 5250 2    50   ~ 0
GND
$Comp
L Interface_USB:FT231XS U1
U 1 1 6063D4B7
P 4750 4050
F 0 "U1" H 4750 4150 50  0000 C CNN
F 1 "FT231XS" H 4750 4050 50  0000 C CNN
F 2 "Package_SO:SSOP-20_3.9x8.7mm_P0.635mm" H 5750 3250 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 4750 4050 50  0001 C CNN
	1    4750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1800 4050 1800
Connection ~ 4150 1800
Wire Wire Line
	4350 1800 4250 1800
Connection ~ 4350 1800
Text Label 4350 1900 3    50   ~ 0
D-
Text Label 4150 1900 3    50   ~ 0
D+
Wire Wire Line
	3100 3850 3100 4000
Wire Wire Line
	2850 3750 2850 4000
Wire Wire Line
	2850 3750 2750 3750
Connection ~ 2850 3750
Connection ~ 3100 3850
$Comp
L Device:C C5
U 1 1 60664F2B
P 5950 1900
F 0 "C5" H 5900 2250 50  0000 L CNN
F 1 "100nF" H 5850 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5988 1750 50  0001 C CNN
F 3 "~" H 5950 1900 50  0001 C CNN
	1    5950 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60665A4C
P 5650 1900
F 0 "C6" H 5600 2250 50  0000 L CNN
F 1 "47pF" H 5550 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5688 1750 50  0001 C CNN
F 3 "~" H 5650 1900 50  0001 C CNN
	1    5650 1900
	1    0    0    -1  
$EndComp
Text Label 5650 2150 0    50   ~ 0
GND
Wire Wire Line
	6650 3250 6400 3250
Wire Wire Line
	6400 3250 6400 3100
Connection ~ 6400 3250
Wire Wire Line
	6400 3250 6150 3250
Text Label 3900 4050 0    50   ~ 0
RST
Text Label 4050 3250 0    50   ~ 0
3V3OUT
$Comp
L Device:C C3
U 1 1 6066FC83
P 5000 2850
F 0 "C3" V 4748 2850 50  0000 C CNN
F 1 "100nF" V 4839 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5038 2700 50  0001 C CNN
F 3 "~" H 5000 2850 50  0001 C CNN
	1    5000 2850
	0    1    1    0   
$EndComp
Text Label 7050 1750 2    50   ~ 0
VCC
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60677464
P 4650 5250
F 0 "#FLG0101" H 4650 5325 50  0001 C CNN
F 1 "PWR_FLAG" V 4650 5378 50  0000 L CNN
F 2 "" H 4650 5250 50  0001 C CNN
F 3 "~" H 4650 5250 50  0001 C CNN
	1    4650 5250
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60678B7A
P 6700 1750
F 0 "#FLG0102" H 6700 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 1900 50  0000 C CNN
F 2 "" H 6700 1750 50  0001 C CNN
F 3 "~" H 6700 1750 50  0001 C CNN
	1    6700 1750
	1    0    0    -1  
$EndComp
Text Label 3350 850  2    50   ~ 0
GND
Text Label 5050 1750 0    50   ~ 0
VBUS
Text Label 5650 4450 0    50   ~ 0
CBUS1
Text Label 5650 4550 0    50   ~ 0
CBUS2
Text Label 7050 1850 2    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 606F27E6
P 7250 1850
F 0 "J1" H 7330 1842 50  0000 L CNN
F 1 "Conn_01x06" H 7330 1751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7250 1850 50  0001 C CNN
F 3 "~" H 7250 1850 50  0001 C CNN
	1    7250 1850
	1    0    0    -1  
$EndComp
Text Label 7050 2150 2    50   ~ 0
DTR
Text Label 5450 3850 0    50   ~ 0
DTR
Wire Wire Line
	7050 1750 6800 1750
Connection ~ 6700 1750
$Comp
L power:GND #PWR0101
U 1 1 607502D8
P 5650 2150
F 0 "#PWR0101" H 5650 1900 50  0001 C CNN
F 1 "GND" H 5655 1977 50  0000 C CNN
F 2 "" H 5650 2150 50  0001 C CNN
F 3 "" H 5650 2150 50  0001 C CNN
	1    5650 2150
	1    0    0    -1  
$EndComp
Text Notes 7550 1400 2    50   ~ 0
Breakout Pins
Text Notes 3600 700  0    50   ~ 0
USB-C, only USB 2.0 supported
$Comp
L Device:R R5
U 1 1 606FBDCA
P 4550 1900
F 0 "R5" H 4500 1950 50  0000 L CNN
F 1 "5.1K" H 4400 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4480 1900 50  0001 C CNN
F 3 "~" H 4550 1900 50  0001 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 606FDDEF
P 4650 1900
F 0 "R6" H 4600 1950 50  0000 L CNN
F 1 "5.1K" H 4600 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4580 1900 50  0001 C CNN
F 3 "~" H 4650 1900 50  0001 C CNN
	1    4650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2050 4600 2050
Wire Wire Line
	4600 2050 4600 2150
Connection ~ 4600 2050
Wire Wire Line
	4600 2050 4650 2050
$Comp
L power:GND #PWR0102
U 1 1 607421F7
P 4600 2150
F 0 "#PWR0102" H 4600 1900 50  0001 C CNN
F 1 "GND" H 4605 1977 50  0000 C CNN
F 2 "" H 4600 2150 50  0001 C CNN
F 3 "" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2750 2750 2750
Wire Wire Line
	2750 2750 2750 3750
Wire Wire Line
	4350 1800 4350 2750
Wire Wire Line
	4150 2600 2600 2600
Wire Wire Line
	2600 2600 2600 3850
Wire Wire Line
	4150 1800 4150 2600
Wire Wire Line
	2600 3850 3100 3850
$Comp
L power:GND #PWR0103
U 1 1 6079676C
P 3100 4300
F 0 "#PWR0103" H 3100 4050 50  0001 C CNN
F 1 "GND" H 3105 4127 50  0000 C CNN
F 2 "" H 3100 4300 50  0001 C CNN
F 3 "" H 3100 4300 50  0001 C CNN
	1    3100 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60796ED1
P 2850 4300
F 0 "#PWR0104" H 2850 4050 50  0001 C CNN
F 1 "GND" H 2855 4127 50  0000 C CNN
F 2 "" H 2850 4300 50  0001 C CNN
F 3 "" H 2850 4300 50  0001 C CNN
	1    2850 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 607971D0
P 4650 5250
F 0 "#PWR0105" H 4650 5000 50  0001 C CNN
F 1 "GND" H 4655 5077 50  0000 C CNN
F 2 "" H 4650 5250 50  0001 C CNN
F 3 "" H 4650 5250 50  0001 C CNN
	1    4650 5250
	1    0    0    -1  
$EndComp
Connection ~ 4650 5250
Wire Wire Line
	6800 1750 6800 2550
Wire Wire Line
	6800 2550 4650 2550
Wire Wire Line
	4650 2550 4650 3150
Connection ~ 6800 1750
Wire Wire Line
	6800 1750 6700 1750
Wire Wire Line
	4050 3050 4050 3450
Wire Wire Line
	4050 4050 3800 4050
Wire Wire Line
	3800 4050 3800 3050
Wire Wire Line
	3800 3050 4050 3050
Connection ~ 4050 3050
Wire Wire Line
	3250 3750 2850 3750
Wire Wire Line
	3250 3850 3100 3850
Wire Wire Line
	3550 3750 4050 3750
Wire Wire Line
	3550 3850 4050 3850
Wire Wire Line
	4050 3050 4850 3050
Wire Wire Line
	4850 3150 4850 3100
$Comp
L power:GND #PWR0106
U 1 1 607B666F
P 5150 2850
F 0 "#PWR0106" H 5150 2600 50  0001 C CNN
F 1 "GND" H 5155 2677 50  0000 C CNN
F 2 "" H 5150 2850 50  0001 C CNN
F 3 "" H 5150 2850 50  0001 C CNN
	1    5150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2850 4850 3050
Connection ~ 4850 3050
Wire Wire Line
	4850 3100 6400 3100
Connection ~ 4850 3100
Wire Wire Line
	4850 3100 4850 3050
Wire Wire Line
	4850 1750 5300 1750
Connection ~ 5650 1750
Wire Wire Line
	5650 1750 5950 1750
Connection ~ 5950 1750
Connection ~ 5300 1750
Wire Wire Line
	5300 1750 5650 1750
Wire Wire Line
	5650 2050 5300 2050
Wire Wire Line
	5950 2050 5650 2050
Connection ~ 5650 2050
Wire Wire Line
	5650 2050 5650 2150
$Comp
L Device:R R7
U 1 1 6082D2DD
P 6300 2100
F 0 "R7" H 6230 2054 50  0000 R CNN
F 1 "270" H 6230 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6230 2100 50  0001 C CNN
F 3 "~" H 6300 2100 50  0001 C CNN
	1    6300 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6082D69A
P 6300 2250
F 0 "#PWR01" H 6300 2000 50  0001 C CNN
F 1 "GND" H 6305 2077 50  0000 C CNN
F 2 "" H 6300 2250 50  0001 C CNN
F 3 "" H 6300 2250 50  0001 C CNN
	1    6300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 6082E224
P 6300 1850
F 0 "D3" V 6346 1780 50  0000 R CNN
F 1 "RX Red" V 6255 1780 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6300 1850 50  0001 C CNN
F 3 "~" V 6300 1850 50  0001 C CNN
	1    6300 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 1750 6300 1750
Connection ~ 6300 1750
Wire Wire Line
	6300 1750 6700 1750
Text Label 6150 3250 0    50   ~ 0
RXLED
Text Label 6650 3250 0    50   ~ 0
TXLED
$EndSCHEMATC

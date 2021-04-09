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
Text Label 4200 1200 2    50   ~ 0
GND
$Comp
L Connector:USB_C_Receptacle_USB2.0 J2
U 1 1 606484AC
P 5100 1200
F 0 "J2" V 5161 1930 50  0000 L CNN
F 1 "USB_C_Receptacle_USB2.0" V 5252 1930 50  0000 L CNN
F 2 "Connector_USB:USB_C_Receptacle_GCT_USB4085" H 5250 1200 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 5250 1200 50  0001 C CNN
	1    5100 1200
	0    1    1    0   
$EndComp
Text Label 1850 1450 0    50   ~ 0
3V3OUT
Text Label 1850 1050 0    50   ~ 0
TX
Text Label 1850 1150 0    50   ~ 0
RX
Text Label 3300 2500 2    50   ~ 0
VCC
Wire Wire Line
	4900 1800 4900 1850
Wire Wire Line
	5000 1800 5000 1850
Wire Wire Line
	5100 1800 5100 1850
Wire Wire Line
	5200 1800 5200 1850
NoConn ~ 4500 1800
NoConn ~ 4600 1800
$Comp
L Device:Fuse F1
U 1 1 60651A55
P 3050 1350
F 0 "F1" V 3250 1350 50  0000 C CNN
F 1 "MF-MSMF050-2 500mA" V 3150 1350 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2980 1350 50  0001 C CNN
F 3 "~" H 3050 1350 50  0001 C CNN
	1    3050 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 1800 5900 1800
$Comp
L Device:R R2
U 1 1 60640A84
P 2550 3200
F 0 "R2" V 2650 3200 50  0000 C CNN
F 1 "27" V 2550 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2480 3200 50  0001 C CNN
F 3 "~" H 2550 3200 50  0001 C CNN
	1    2550 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 60642F55
P 2550 3100
F 0 "R1" V 2343 3100 50  0000 C CNN
F 1 "27" V 2434 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2480 3100 50  0001 C CNN
F 3 "~" H 2550 3100 50  0001 C CNN
	1    2550 3100
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 60644F2B
P 2000 3500
F 0 "C1" H 1800 3550 50  0000 L CNN
F 1 "47pF" H 1700 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2038 3350 50  0001 C CNN
F 3 "~" H 2000 3500 50  0001 C CNN
	1    2000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6064611A
P 2250 3500
F 0 "C2" H 2135 3454 50  0000 R CNN
F 1 "47pF" H 2135 3545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2288 3350 50  0001 C CNN
F 3 "~" H 2250 3500 50  0001 C CNN
	1    2250 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 606479FC
P 5700 1950
F 0 "C4" H 5585 1904 50  0000 R CNN
F 1 "10nF" H 5585 1995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 1800 50  0001 C CNN
F 3 "~" H 5700 1950 50  0001 C CNN
	1    5700 1950
	-1   0    0    1   
$EndComp
Connection ~ 5700 1800
Text Label 5700 2100 0    50   ~ 0
GND
NoConn ~ 4100 4000
NoConn ~ 4100 3700
Wire Wire Line
	5300 3900 5300 3100
Wire Wire Line
	4100 3900 5300 3900
Wire Wire Line
	4800 3800 4800 3100
Wire Wire Line
	4100 3800 4800 3800
$Comp
L Device:LED_Small D2
U 1 1 606588A1
P 5300 2700
F 0 "D2" V 5346 2630 50  0000 R CNN
F 1 "TX Green" V 5255 2630 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5300 2700 50  0001 C CNN
F 3 "~" V 5300 2700 50  0001 C CNN
	1    5300 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 60657C28
P 4800 2700
F 0 "D1" V 4846 2630 50  0000 R CNN
F 1 "RX Red" V 4755 2630 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4800 2700 50  0001 C CNN
F 3 "~" V 4800 2700 50  0001 C CNN
	1    4800 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 60656301
P 5300 2950
F 0 "R4" H 5230 2904 50  0000 R CNN
F 1 "270" H 5230 2995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5230 2950 50  0001 C CNN
F 3 "~" H 5300 2950 50  0001 C CNN
	1    5300 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 60655864
P 4800 2950
F 0 "R3" H 4730 2904 50  0000 R CNN
F 1 "270" H 4730 2995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4730 2950 50  0001 C CNN
F 3 "~" H 4800 2950 50  0001 C CNN
	1    4800 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 4400 3300 4300
Connection ~ 3300 4400
Wire Wire Line
	3500 4400 3300 4400
NoConn ~ 4100 3500
NoConn ~ 4100 3400
NoConn ~ 4100 3300
NoConn ~ 4100 3100
NoConn ~ 4100 3000
Text Label 4100 2900 0    50   ~ 0
TX
Text Label 4100 2800 0    50   ~ 0
RX
Wire Wire Line
	3500 4300 3500 4400
Wire Wire Line
	3300 4600 3300 4400
Text Label 3300 4600 2    50   ~ 0
GND
$Comp
L Interface_USB:FT231XS U1
U 1 1 6063D4B7
P 3400 3400
F 0 "U1" H 3400 3500 50  0000 C CNN
F 1 "FT231XS" H 3400 3400 50  0000 C CNN
F 2 "Package_SO:SSOP-20_3.9x8.7mm_P0.635mm" H 4400 2600 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 3400 3400 50  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1850 4900 1850
Connection ~ 5000 1850
Wire Wire Line
	5000 1850 5000 1950
Wire Wire Line
	5200 1850 5100 1850
Connection ~ 5200 1850
Wire Wire Line
	5200 1850 5200 1950
Text Label 5200 1950 3    50   ~ 0
DMINUS
Text Label 5000 1950 3    50   ~ 0
DPLUS
Wire Wire Line
	2400 3200 2250 3200
Wire Wire Line
	2250 3200 2250 3350
Wire Wire Line
	2000 3100 2000 3350
Wire Wire Line
	2400 3100 2000 3100
Text Label 1850 3100 2    50   ~ 0
DMINUS
Text Label 1850 3200 2    50   ~ 0
DPLUS
Wire Wire Line
	2000 3100 1850 3100
Connection ~ 2000 3100
Wire Wire Line
	2250 3200 1850 3200
Connection ~ 2250 3200
Text Label 2000 3750 2    50   ~ 0
GND
Text Label 2250 3750 2    50   ~ 0
GND
Wire Wire Line
	2000 3650 2000 3750
Wire Wire Line
	2250 3650 2250 3750
Wire Wire Line
	2900 1350 2650 1350
$Comp
L Device:C C5
U 1 1 60664F2B
P 2350 1500
F 0 "C5" H 2465 1546 50  0000 L CNN
F 1 "100nF" H 2465 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2388 1350 50  0001 C CNN
F 3 "~" H 2350 1500 50  0001 C CNN
	1    2350 1500
	1    0    0    -1  
$EndComp
Connection ~ 2650 1350
Wire Wire Line
	2650 1350 2350 1350
$Comp
L Device:C C6
U 1 1 60665A4C
P 2650 1500
F 0 "C6" H 2765 1546 50  0000 L CNN
F 1 "47pF" H 2765 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2688 1350 50  0001 C CNN
F 3 "~" H 2650 1500 50  0001 C CNN
	1    2650 1500
	1    0    0    -1  
$EndComp
Connection ~ 2350 1350
Wire Wire Line
	2350 1650 2500 1650
Wire Wire Line
	2500 1650 2500 1750
Connection ~ 2500 1650
Wire Wire Line
	2500 1650 2650 1650
Text Label 2500 1750 0    50   ~ 0
GND
Wire Wire Line
	5300 2600 5050 2600
Wire Wire Line
	5050 2600 5050 2550
Connection ~ 5050 2600
Wire Wire Line
	5050 2600 4800 2600
Text Label 2700 3400 2    50   ~ 0
RST
Text Label 3500 2350 1    50   ~ 0
RST
Text Label 2700 2800 2    50   ~ 0
3V3OUT
$Comp
L Device:C C3
U 1 1 6066FC83
P 3850 2400
F 0 "C3" V 3598 2400 50  0000 C CNN
F 1 "100nF" V 3689 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3888 2250 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	0    1    1    0   
$EndComp
Text Label 4000 2400 0    50   ~ 0
GND
Wire Wire Line
	3500 2500 3500 2400
Wire Wire Line
	3500 2400 3600 2400
Wire Wire Line
	3500 2350 3500 2400
Connection ~ 3500 2400
Text Label 3600 2350 1    50   ~ 0
3V3OUT
Wire Wire Line
	3600 2350 3600 2400
Connection ~ 3600 2400
Wire Wire Line
	3600 2400 3700 2400
Text Label 1850 1350 0    50   ~ 0
VCC
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60677464
P 3300 4600
F 0 "#FLG0101" H 3300 4675 50  0001 C CNN
F 1 "PWR_FLAG" V 3300 4728 50  0000 L CNN
F 2 "" H 3300 4600 50  0001 C CNN
F 3 "~" H 3300 4600 50  0001 C CNN
	1    3300 4600
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60678B7A
P 2200 1350
F 0 "#FLG0102" H 2200 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 1523 50  0000 C CNN
F 2 "" H 2200 1350 50  0001 C CNN
F 3 "~" H 2200 1350 50  0001 C CNN
	1    2200 1350
	1    0    0    -1  
$EndComp
Text Label 4200 900  2    50   ~ 0
GND
Text Label 5900 1800 0    50   ~ 0
VBUS
Text Label 4300 3800 0    50   ~ 0
CBUS1
Text Label 4300 3900 0    50   ~ 0
CBUS2
Text Label 1850 1250 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 606F27E6
P 1650 1250
F 0 "J1" H 1730 1242 50  0000 L CNN
F 1 "Conn_01x06" H 1730 1151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1650 1250 50  0001 C CNN
F 3 "~" H 1650 1250 50  0001 C CNN
	1    1650 1250
	-1   0    0    1   
$EndComp
Text Label 1850 950  0    50   ~ 0
DTR
$Comp
L Device:C C7
U 1 1 606F5CC9
P 4350 3200
F 0 "C7" V 4602 3200 50  0000 C CNN
F 1 "100nF" V 4511 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4388 3050 50  0001 C CNN
F 3 "~" H 4350 3200 50  0001 C CNN
	1    4350 3200
	0    -1   -1   0   
$EndComp
Text Label 4500 3200 0    50   ~ 0
DTR
Wire Wire Line
	4100 3200 4200 3200
Wire Wire Line
	2200 1350 2350 1350
Wire Wire Line
	1850 1350 2200 1350
Connection ~ 2200 1350
$Comp
L power:GND #PWR0101
U 1 1 607502D8
P 2500 1750
F 0 "#PWR0101" H 2500 1500 50  0001 C CNN
F 1 "GND" H 2505 1577 50  0000 C CNN
F 2 "" H 2500 1750 50  0001 C CNN
F 3 "" H 2500 1750 50  0001 C CNN
	1    2500 1750
	1    0    0    -1  
$EndComp
Text Label 3200 1350 0    50   ~ 0
VBUS
Text Notes 1350 1750 0    50   ~ 0
Breakout Pins
Text Notes 4450 750  0    50   ~ 0
USB-C, only USB 2.0 supported
$Comp
L Device:R R5
U 1 1 606FBDCA
P 5400 1950
F 0 "R5" H 5300 2000 50  0000 L CNN
F 1 "5.1K" H 5250 1900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5330 1950 50  0001 C CNN
F 3 "~" H 5400 1950 50  0001 C CNN
	1    5400 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 606FDDEF
P 5500 1950
F 0 "R6" H 5570 1996 50  0000 L CNN
F 1 "5.1K" H 5570 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5430 1950 50  0001 C CNN
F 3 "~" H 5500 1950 50  0001 C CNN
	1    5500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2100 5450 2100
Wire Wire Line
	5450 2100 5450 2200
Connection ~ 5450 2100
Wire Wire Line
	5450 2100 5500 2100
Text Label 5450 2200 0    50   ~ 0
GND
Wire Wire Line
	5050 2550 3600 2550
Wire Wire Line
	3600 2550 3600 2400
$EndSCHEMATC

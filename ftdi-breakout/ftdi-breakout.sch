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
Text Label 3500 3200 2    50   ~ 0
VCC
Wire Wire Line
	4900 1800 4900 1850
Wire Wire Line
	5000 1800 5000 1850
Wire Wire Line
	5100 1800 5100 1850
Wire Wire Line
	5200 1800 5200 1850
NoConn ~ 5400 1800
NoConn ~ 5500 1800
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
P 2750 3900
F 0 "R2" V 2850 3900 50  0000 C CNN
F 1 "27" V 2750 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2680 3900 50  0001 C CNN
F 3 "~" H 2750 3900 50  0001 C CNN
	1    2750 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 60642F55
P 2750 3800
F 0 "R1" V 2543 3800 50  0000 C CNN
F 1 "27" V 2634 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2680 3800 50  0001 C CNN
F 3 "~" H 2750 3800 50  0001 C CNN
	1    2750 3800
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 60644F2B
P 2200 4200
F 0 "C1" H 2000 4250 50  0000 L CNN
F 1 "47pF" H 1900 4150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2238 4050 50  0001 C CNN
F 3 "~" H 2200 4200 50  0001 C CNN
	1    2200 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6064611A
P 2450 4200
F 0 "C2" H 2335 4154 50  0000 R CNN
F 1 "47pF" H 2335 4245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2488 4050 50  0001 C CNN
F 3 "~" H 2450 4200 50  0001 C CNN
	1    2450 4200
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
NoConn ~ 4300 4700
NoConn ~ 4300 4400
Wire Wire Line
	5500 4600 5500 3800
Wire Wire Line
	4300 4600 5500 4600
Wire Wire Line
	5000 4500 5000 3800
Wire Wire Line
	4300 4500 5000 4500
$Comp
L Device:LED_Small D2
U 1 1 606588A1
P 5500 3400
F 0 "D2" V 5546 3330 50  0000 R CNN
F 1 "TX Green" V 5455 3330 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5500 3400 50  0001 C CNN
F 3 "~" V 5500 3400 50  0001 C CNN
	1    5500 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 60657C28
P 5000 3400
F 0 "D1" V 5046 3330 50  0000 R CNN
F 1 "RX Red" V 4955 3330 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5000 3400 50  0001 C CNN
F 3 "~" V 5000 3400 50  0001 C CNN
	1    5000 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 60656301
P 5500 3650
F 0 "R4" H 5430 3604 50  0000 R CNN
F 1 "270" H 5430 3695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5430 3650 50  0001 C CNN
F 3 "~" H 5500 3650 50  0001 C CNN
	1    5500 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 60655864
P 5000 3650
F 0 "R3" H 4930 3604 50  0000 R CNN
F 1 "270" H 4930 3695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4930 3650 50  0001 C CNN
F 3 "~" H 5000 3650 50  0001 C CNN
	1    5000 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 5100 3500 5000
Connection ~ 3500 5100
Wire Wire Line
	3700 5100 3500 5100
NoConn ~ 4300 4200
NoConn ~ 4300 4100
NoConn ~ 4300 4000
NoConn ~ 4300 3800
NoConn ~ 4300 3700
Text Label 4300 3600 0    50   ~ 0
TX
Text Label 4300 3500 0    50   ~ 0
RX
Wire Wire Line
	3700 5000 3700 5100
Wire Wire Line
	3500 5300 3500 5100
Text Label 3500 5300 2    50   ~ 0
GND
$Comp
L Interface_USB:FT231XS U1
U 1 1 6063D4B7
P 3600 4100
F 0 "U1" H 3600 4200 50  0000 C CNN
F 1 "FT231XS" H 3600 4100 50  0000 C CNN
F 2 "Package_SO:SSOP-20_3.9x8.7mm_P0.635mm" H 4600 3300 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 3600 4100 50  0001 C CNN
	1    3600 4100
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
Text Label 5200 1950 0    50   ~ 0
DMINUS
Text Label 5000 1950 2    50   ~ 0
DPLUS
Wire Wire Line
	2600 3900 2450 3900
Wire Wire Line
	2450 3900 2450 4050
Wire Wire Line
	2200 3800 2200 4050
Wire Wire Line
	2600 3800 2200 3800
Text Label 2050 3800 2    50   ~ 0
DMINUS
Text Label 2050 3900 2    50   ~ 0
DPLUS
Wire Wire Line
	2200 3800 2050 3800
Connection ~ 2200 3800
Wire Wire Line
	2450 3900 2050 3900
Connection ~ 2450 3900
Text Label 2200 4450 2    50   ~ 0
GND
Text Label 2450 4450 2    50   ~ 0
GND
Wire Wire Line
	2200 4350 2200 4450
Wire Wire Line
	2450 4350 2450 4450
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
	5500 3300 5250 3300
Wire Wire Line
	5250 3300 5250 3250
Connection ~ 5250 3300
Wire Wire Line
	5250 3300 5000 3300
Text Label 5250 3250 0    50   ~ 0
VCC
Text Label 2900 4100 2    50   ~ 0
RST
Text Label 3700 3050 1    50   ~ 0
RST
Text Label 2900 3500 2    50   ~ 0
3V3OUT
$Comp
L Device:C C3
U 1 1 6066FC83
P 4050 3100
F 0 "C3" V 3798 3100 50  0000 C CNN
F 1 "100nF" V 3889 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4088 2950 50  0001 C CNN
F 3 "~" H 4050 3100 50  0001 C CNN
	1    4050 3100
	0    1    1    0   
$EndComp
Text Label 4200 3100 0    50   ~ 0
GND
Wire Wire Line
	3700 3200 3700 3100
Wire Wire Line
	3700 3100 3800 3100
Wire Wire Line
	3700 3050 3700 3100
Connection ~ 3700 3100
Text Label 3800 3050 1    50   ~ 0
3V3OUT
Wire Wire Line
	3800 3050 3800 3100
Connection ~ 3800 3100
Wire Wire Line
	3800 3100 3900 3100
Text Label 1850 1350 0    50   ~ 0
VCC
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60677464
P 3500 5300
F 0 "#FLG0101" H 3500 5375 50  0001 C CNN
F 1 "PWR_FLAG" V 3500 5428 50  0000 L CNN
F 2 "" H 3500 5300 50  0001 C CNN
F 3 "~" H 3500 5300 50  0001 C CNN
	1    3500 5300
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
Text Label 4500 4500 0    50   ~ 0
CBUS1
Text Label 4500 4600 0    50   ~ 0
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
P 4550 3900
F 0 "C7" V 4802 3900 50  0000 C CNN
F 1 "100nF" V 4711 3900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4588 3750 50  0001 C CNN
F 3 "~" H 4550 3900 50  0001 C CNN
	1    4550 3900
	0    -1   -1   0   
$EndComp
Text Label 4700 3900 0    50   ~ 0
DTR
Wire Wire Line
	4300 3900 4400 3900
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
$EndSCHEMATC

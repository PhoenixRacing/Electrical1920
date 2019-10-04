EESchema Schematic File Version 5
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Text Label 950  1950 2    50   ~ 0
RESET
$Comp
L power:GND #PWR?
U 1 1 5D821711
P 1550 5650
F 0 "#PWR?" H 1550 5400 50  0001 C CNN
F 1 "GND" H 1555 5477 50  0000 C CNN
F 2 "" H 1550 5650 50  0001 C CNN
F 3 "" H 1550 5650 50  0001 C CNN
	1    1550 5650
	1    0    0    -1  
$EndComp
Text Label 2150 3350 0    50   ~ 0
MOSI
Text Label 2150 3450 0    50   ~ 0
MISO
Text Label 2150 3550 0    50   ~ 0
SCK
$Comp
L Device:C C0
U 1 1 5D836740
P 900 2750
F 0 "C0" H 1200 2700 50  0000 R CNN
F 1 "100nf" H 1250 2800 50  0000 R CNN
F 2 "" H 938 2600 50  0001 C CNN
F 3 "~" H 900 2750 50  0001 C CNN
	1    900  2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  2600 900  2550
$Comp
L power:GND #PWR?
U 1 1 5D83B2E2
P 900 2900
F 0 "#PWR?" H 900 2650 50  0001 C CNN
F 1 "GND" H 905 2727 50  0000 C CNN
F 2 "" H 900 2900 50  0001 C CNN
F 3 "" H 900 2900 50  0001 C CNN
	1    900  2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1650 1550 900 
Wire Wire Line
	1550 900  1650 900 
Wire Wire Line
	1650 1650 1650 900 
Connection ~ 1650 900 
Wire Wire Line
	1650 900  1950 900 
Wire Wire Line
	1950 900  1950 800 
$Comp
L power:+5V #PWR?
U 1 1 5D83DCD1
P 1950 800
F 0 "#PWR?" H 1950 650 50  0001 C CNN
F 1 "+5V" H 1965 973 50  0000 C CNN
F 2 "" H 1950 800 50  0001 C CNN
F 3 "" H 1950 800 50  0001 C CNN
	1    1950 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 900  1950 1050
Connection ~ 1950 900 
Connection ~ 1950 1050
Wire Wire Line
	1950 1050 1800 1050
$Comp
L Device:C C1
U 1 1 5D83F61B
P 1800 1200
F 0 "C1" H 1915 1246 50  0000 L CNN
F 1 "1uF" H 1915 1155 50  0000 L CNN
F 2 "" H 1838 1050 50  0001 C CNN
F 3 "~" H 1800 1200 50  0001 C CNN
	1    1800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D840A96
P 2850 1200
F 0 "C3" H 2965 1246 50  0000 L CNN
F 1 "1uF" H 2965 1155 50  0000 L CNN
F 2 "" H 2888 1050 50  0001 C CNN
F 3 "~" H 2850 1200 50  0001 C CNN
	1    2850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D841FEA
P 2700 1350
F 0 "#PWR?" H 2700 1100 50  0001 C CNN
F 1 "GND" H 2705 1177 50  0000 C CNN
F 2 "" H 2700 1350 50  0001 C CNN
F 3 "" H 2700 1350 50  0001 C CNN
	1    2700 1350
	1    0    0    -1  
$EndComp
Connection ~ 2700 1350
Wire Wire Line
	2700 1350 2850 1350
$Comp
L Switch:SW_Push SW0
U 1 1 5D843BC6
P 2900 6750
F 0 "SW0" H 2900 7035 50  0000 C CNN
F 1 "RESET" H 2900 6944 50  0000 C CNN
F 2 "" H 2900 6950 50  0001 C CNN
F 3 "~" H 2900 6950 50  0001 C CNN
	1    2900 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6750 3300 6750
Wire Wire Line
	2700 6750 2450 6750
Wire Wire Line
	2450 6750 2450 6850
$Comp
L power:GND #PWR?
U 1 1 5D845887
P 2450 6850
F 0 "#PWR?" H 2450 6600 50  0001 C CNN
F 1 "GND" H 2455 6677 50  0000 C CNN
F 2 "" H 2450 6850 50  0001 C CNN
F 3 "" H 2450 6850 50  0001 C CNN
	1    2450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6750 3300 6700
$Comp
L Device:R RP0
U 1 1 5D848534
P 3300 6550
F 0 "RP0" H 3370 6596 50  0000 L CNN
F 1 "10k" H 3370 6505 50  0000 L CNN
F 2 "" V 3230 6550 50  0001 C CNN
F 3 "~" H 3300 6550 50  0001 C CNN
	1    3300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6400 3300 6300
$Comp
L power:+5V #PWR?
U 1 1 5D84A868
P 3300 6300
F 0 "#PWR?" H 3300 6150 50  0001 C CNN
F 1 "+5V" H 3315 6473 50  0000 C CNN
F 2 "" H 3300 6300 50  0001 C CNN
F 3 "" H 3300 6300 50  0001 C CNN
	1    3300 6300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-5.0 U1
U 1 1 5D84DBEE
P 8100 1000
F 0 "U1" H 8100 1242 50  0000 C CNN
F 1 "LM1117-5.0" H 8100 1151 50  0000 C CNN
F 2 "" H 8100 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 8100 1000 50  0001 C CNN
	1    8100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1000 7350 1000
Wire Wire Line
	7350 1000 7350 900 
Wire Wire Line
	8100 1300 8100 1450
$Comp
L power:GND #PWR?
U 1 1 5D85249C
P 8100 1450
F 0 "#PWR?" H 8100 1200 50  0001 C CNN
F 1 "GND" H 8105 1277 50  0000 C CNN
F 2 "" H 8100 1450 50  0001 C CNN
F 3 "" H 8100 1450 50  0001 C CNN
	1    8100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1000 8750 1000
Wire Wire Line
	8750 1000 8750 750 
Connection ~ 8750 1000
Wire Wire Line
	8750 1000 8850 1000
$Comp
L power:+5V #PWR?
U 1 1 5D852F90
P 8750 750
F 0 "#PWR?" H 8750 600 50  0001 C CNN
F 1 "+5V" H 8765 923 50  0000 C CNN
F 2 "" H 8750 750 50  0001 C CNN
F 3 "" H 8750 750 50  0001 C CNN
	1    8750 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1000 8750 1150
$Comp
L Device:C C6
U 1 1 5D853774
P 8750 1300
F 0 "C6" H 8865 1346 50  0000 L CNN
F 1 "1uF" H 8865 1255 50  0000 L CNN
F 2 "" H 8788 1150 50  0001 C CNN
F 3 "~" H 8750 1300 50  0001 C CNN
	1    8750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D853FD5
P 8750 1450
F 0 "#PWR?" H 8750 1200 50  0001 C CNN
F 1 "GND" H 8755 1277 50  0000 C CNN
F 2 "" H 8750 1450 50  0001 C CNN
F 3 "" H 8750 1450 50  0001 C CNN
	1    8750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R RP1
U 1 1 5D854719
P 9000 1000
F 0 "RP1" V 8793 1000 50  0000 C CNN
F 1 "1k" V 8884 1000 50  0000 C CNN
F 2 "" V 8930 1000 50  0001 C CNN
F 3 "~" H 9000 1000 50  0001 C CNN
	1    9000 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 1000 9450 1000
Wire Wire Line
	9450 1000 9450 1150
$Comp
L Device:LED PLED_5V
U 1 1 5D8553FE
P 9450 1300
F 0 "PLED_5V" V 9600 1250 50  0000 R CNN
F 1 "Green" V 9500 1200 50  0000 R CNN
F 2 "" H 9450 1300 50  0001 C CNN
F 3 "~" H 9450 1300 50  0001 C CNN
	1    9450 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D85875D
P 9450 1450
F 0 "#PWR?" H 9450 1200 50  0001 C CNN
F 1 "GND" H 9455 1277 50  0000 C CNN
F 2 "" H 9450 1450 50  0001 C CNN
F 3 "" H 9450 1450 50  0001 C CNN
	1    9450 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5D85C07C
P 10650 1150
F 0 "J1" H 10700 1467 50  0000 C CNN
F 1 "ICSP" H 10700 1376 50  0000 C CNN
F 2 "" H 10650 1150 50  0001 C CNN
F 3 "~" H 10650 1150 50  0001 C CNN
	1    10650 1150
	1    0    0    -1  
$EndComp
Text Label 10450 1050 2    50   ~ 0
MISO
Text Label 10950 1150 0    50   ~ 0
MOSI
Text Label 10450 1150 2    50   ~ 0
SCK
Text Label 10450 1250 2    50   ~ 0
RESET
Wire Wire Line
	10950 1050 11000 1050
Wire Wire Line
	11000 1050 11000 900 
Wire Wire Line
	10950 1250 11000 1250
Wire Wire Line
	11000 1250 11000 1400
$Comp
L power:GND #PWR?
U 1 1 5D85E941
P 11000 1400
F 0 "#PWR?" H 11000 1150 50  0001 C CNN
F 1 "GND" H 11005 1227 50  0000 C CNN
F 2 "" H 11000 1400 50  0001 C CNN
F 3 "" H 11000 1400 50  0001 C CNN
	1    11000 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D85EECF
P 11000 900
F 0 "#PWR?" H 11000 750 50  0001 C CNN
F 1 "+5V" H 11015 1073 50  0000 C CNN
F 2 "" H 11000 900 50  0001 C CNN
F 3 "" H 11000 900 50  0001 C CNN
	1    11000 900 
	1    0    0    -1  
$EndComp
Text Label 2150 1950 0    50   ~ 0
A0
Text Label 2150 2050 0    50   ~ 0
A1
Text Label 2150 2150 0    50   ~ 0
A2
Text Label 2150 2250 0    50   ~ 0
A3
Text Label 2150 2350 0    50   ~ 0
A4
Text Label 2150 2450 0    50   ~ 0
A5
Text Label 2150 2550 0    50   ~ 0
A6
Text Label 2150 2650 0    50   ~ 0
A7
Text Label 2150 3250 0    50   ~ 0
SS
Text Label 2150 3150 0    50   ~ 0
AIN1{slash}
Text Label 2400 3150 0    50   ~ 0
OC0A{slash}
Text Label 2700 3150 0    50   ~ 0
PCINT11
Wire Wire Line
	2700 3150 2150 3150
Text Label 2150 3050 0    50   ~ 0
AIN0{slash}
Wire Wire Line
	2700 3050 2150 3050
Wire Wire Line
	2550 2950 2150 2950
Wire Notes Line
	2400 3500 2450 3500
Wire Notes Line
	2450 3500 2450 3200
Wire Notes Line
	2450 3200 2400 3200
Text Notes 2500 3350 0    50   ~ 0
SPI
Text Notes 3150 2950 0    50   ~ 0
Digital I/O
Wire Notes Line
	2300 2600 2350 2600
Wire Notes Line
	2350 2600 2350 1900
Wire Notes Line
	2350 1900 2300 1900
Text Notes 2400 2100 0    50   ~ 0
 ADC\n[Analog Input]
Text Label 2150 4450 0    50   ~ 0
TOSC2{slash}
Text Label 2450 4450 0    50   ~ 0
PCINT23
Wire Wire Line
	2450 4450 2150 4450
Text Label 2150 3750 0    50   ~ 0
SCL
Text Label 2150 2950 0    50   ~ 0
T1{slash}
Wire Wire Line
	2550 2850 2150 2850
Text Label 2150 2850 0    50   ~ 0
T0{slash}
Text Label 2300 2850 0    50   ~ 0
XCK0{slash}
Wire Notes Line
	3100 2800 3050 2800
Text Label 2400 3050 0    50   ~ 0
INT2 {slash}
Text Label 2550 2950 0    50   ~ 0
PCINT9
Text Label 2300 2950 0    50   ~ 0
CLKO{slash}
Text Label 2700 3050 0    50   ~ 0
PCINT10
Wire Notes Line
	3050 3100 3100 3100
Text Label 2550 2850 0    50   ~ 0
PCINT8
Wire Notes Line
	3100 3100 3100 2800
Text Label 2150 3850 0    50   ~ 0
SDA
Text Label 2450 4350 0    50   ~ 0
PCINT22
Wire Wire Line
	2450 4350 2150 4350
Text Label 2150 4350 0    50   ~ 0
TOSC1{slash}
Text Label 2350 4250 0    50   ~ 0
PCINT21
Text Label 2150 4250 0    50   ~ 0
TDI{slash}
Wire Wire Line
	2350 4250 2150 4250
Text Label 2150 4150 0    50   ~ 0
TDO{slash}
Text Label 2350 4150 0    50   ~ 0
PCINT20
Wire Wire Line
	2350 4150 2150 4150
Text Label 2350 4050 0    50   ~ 0
PCINT19
Wire Wire Line
	2350 4050 2150 4050
Text Label 2150 4050 0    50   ~ 0
TMS{slash}
Text Label 2350 3950 0    50   ~ 0
PCINT18
Wire Wire Line
	2350 3950 2150 3950
Text Label 2150 3950 0    50   ~ 0
TCK{slash}
Text Notes 2900 4400 0    50   ~ 0
Digital I/O\n
Wire Notes Line
	2400 3800 2450 3800
Wire Notes Line
	2450 3800 2450 3700
Wire Notes Line
	2450 3700 2400 3700
Text Notes 2500 3800 0    50   ~ 0
I2C\n
Text Notes 2800 4100 0    50   ~ 0
 JTAG\n[Programming]
Wire Notes Line
	2800 4300 2850 4300
Wire Notes Line
	2850 4450 2800 4450
Wire Notes Line
	2850 4300 2850 4450
Wire Notes Line
	2700 3900 2750 3900
Wire Notes Line
	2750 3900 2750 4200
Wire Notes Line
	2750 4200 2700 4200
Text Label 2150 4650 0    50   ~ 0
RX0
Text Label 2150 4750 0    50   ~ 0
TX0
Text Label 2150 4850 0    50   ~ 0
RX1
Text Label 2150 4950 0    50   ~ 0
TX1
Text Label 2150 5050 0    50   ~ 0
OC1B{slash}
Text Label 2450 5050 0    50   ~ 0
XCK1{slash}
Text Label 2750 5050 0    50   ~ 0
PCINT28
Wire Wire Line
	2750 5050 2150 5050
Text Label 2150 5150 0    50   ~ 0
OC1A{slash}
Text Label 2400 5150 0    50   ~ 0
PCINT29
Wire Wire Line
	2400 5150 2150 5150
Text Label 2150 5250 0    50   ~ 0
ICP1{slash}
Text Label 2400 5250 0    50   ~ 0
OC2B{slash}
Text Label 2700 5250 0    50   ~ 0
PCINT30
Wire Wire Line
	2700 5250 2150 5250
Text Label 2150 5350 0    50   ~ 0
OC2A{slash}
Text Label 2400 5350 0    50   ~ 0
PCINT31
Wire Wire Line
	2400 5350 2150 5350
Wire Notes Line
	2350 4600 2400 4600
Wire Notes Line
	2400 4600 2400 4750
Wire Notes Line
	2400 4750 2350 4750
Wire Notes Line
	2350 4800 2400 4800
Wire Notes Line
	2400 4800 2400 4950
Wire Notes Line
	2400 4950 2350 4950
Text Notes 2450 4700 0    50   ~ 0
Line 0\n
Text Notes 2450 4900 0    50   ~ 0
Line 1\n
Wire Notes Line
	2750 4900 2800 4900
Wire Notes Line
	2800 4900 2800 4650
Wire Notes Line
	2800 4650 2750 4650
Text Notes 2800 4900 0    50   ~ 0
 Serial\n RX -> Recieve\n TX -> Transmit
Wire Notes Line
	3100 5000 3150 5000
Wire Notes Line
	3150 5000 3150 5350
Wire Notes Line
	3150 5350 3100 5350
Text Notes 3200 5100 0    50   ~ 0
Digital I/O
Text Label 7350 900  1    50   ~ 0
Vsupply
Text Notes 7650 650  0    50   ~ 0
5V Voltage Regulation
Wire Notes Line
	7200 500  9850 500 
Wire Notes Line
	9850 500  9850 1750
Wire Notes Line
	9850 1750 7200 1750
Wire Notes Line
	7200 1750 7200 500 
Text Notes 10050 650  0    50   ~ 0
ICSP Programming Header
Wire Notes Line
	9900 1750 9900 500 
Wire Notes Line
	9900 500  11200 500 
Wire Notes Line
	11200 500  11200 1750
Wire Notes Line
	11200 1750 9900 1750
Wire Notes Line
	2300 7150 3600 7150
Wire Notes Line
	3600 7150 3600 6050
Wire Notes Line
	3600 6050 2300 6050
Wire Notes Line
	2300 6050 2300 7150
Text Notes 2450 6250 0    50   ~ 0
Reset Button\n
Text Notes 1850 1600 0    50   ~ 0
Caps filter noise\nfrom +5Vin
Text Notes 600  7050 0    50   ~ 0
 Xtal to determine uC clock speed\n[16Mhz xtal -> 16Mhz core clock]
Wire Wire Line
	900  2550 950  2550
Text Notes 650  850  0    50   ~ 0
 Microcontroller\n[AtMEGA1284P-AU]
Wire Notes Line
	500  5950 3700 5950
Wire Notes Line
	3700 5950 3700 500 
Wire Notes Line
	3700 500  500  500 
Wire Notes Line
	500  500  500  5950
$Comp
L Device:Crystal Y0
U 1 1 5D95F0BB
P 1100 6550
F 0 "Y0" V 1054 6681 50  0000 L CNN
F 1 "16MHz" V 1145 6681 50  0000 L CNN
F 2 "" H 1100 6550 50  0001 C CNN
F 3 "~" H 1100 6550 50  0001 C CNN
	1    1100 6550
	0    1    1    0   
$EndComp
Text Label 1000 6350 2    50   ~ 0
XTAL1
Text Label 1000 6750 2    50   ~ 0
XTAL2
Text Label 950  2150 2    50   ~ 0
XTAL1
Text Label 950  2350 2    50   ~ 0
XTAL2
$Comp
L Device:C_Small C5
U 1 1 5D96662A
P 1600 6750
F 0 "C5" V 1371 6750 50  0000 C CNN
F 1 "22pf" V 1462 6750 50  0000 C CNN
F 2 "" H 1600 6750 50  0001 C CNN
F 3 "~" H 1600 6750 50  0001 C CNN
	1    1600 6750
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D9672E2
P 1600 6350
F 0 "C4" V 1371 6350 50  0000 C CNN
F 1 "22pf" V 1462 6350 50  0000 C CNN
F 2 "" H 1600 6350 50  0001 C CNN
F 3 "~" H 1600 6350 50  0001 C CNN
	1    1600 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 6750 1100 6750
Wire Wire Line
	1100 6700 1100 6750
Connection ~ 1100 6750
Wire Wire Line
	1100 6750 1500 6750
Wire Wire Line
	1000 6350 1100 6350
Wire Wire Line
	1100 6350 1100 6400
Wire Wire Line
	1100 6350 1500 6350
Connection ~ 1100 6350
Wire Wire Line
	1700 6750 1800 6750
Wire Wire Line
	1800 6750 1800 6550
Wire Wire Line
	1800 6350 1700 6350
Wire Wire Line
	1800 6550 2100 6550
Connection ~ 1800 6550
Wire Wire Line
	1800 6550 1800 6350
$Comp
L power:GND #PWR?
U 1 1 5D97886E
P 2100 6850
F 0 "#PWR?" H 2100 6600 50  0001 C CNN
F 1 "GND" H 2105 6677 50  0000 C CNN
F 2 "" H 2100 6850 50  0001 C CNN
F 3 "" H 2100 6850 50  0001 C CNN
	1    2100 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6550 2100 6850
Wire Notes Line
	2250 7150 2250 6050
Wire Notes Line
	550  6050 550  7150
Text Notes 800  6200 0    50   ~ 0
Crystal Oscillator
Wire Notes Line
	2250 7150 550  7150
Wire Notes Line
	550  6050 2250 6050
$Comp
L MCU_Microchip_ATmega:ATmega1284-AU U0
U 1 1 5D84B034
P 1550 3650
F 0 "U0" H 1450 4400 50  0000 C CNN
F 1 "ATmega1284-AU" H 1450 4300 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 1550 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8272-8-bit-AVR-microcontroller-ATmega164A_PA-324A_PA-644A_PA-1284_P_datasheet.pdf" H 1550 3650 50  0001 C CNN
	1    1550 3650
	1    0    0    -1  
$EndComp
$Comp
L Timer:MCP7940N-xSN U2
U 1 1 5D8E0402
P 9550 3150
F 0 "U2" H 9050 4200 50  0000 C CNN
F 1 "MCP7940N-xSN" H 9050 4100 50  0000 C CNN
F 2 "" H 9550 3150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005010F.pdf" H 9550 3150 50  0001 C CNN
	1    9550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D900A65
P 9950 2050
F 0 "#PWR?" H 9950 1900 50  0001 C CNN
F 1 "+5V" H 9965 2223 50  0000 C CNN
F 2 "" H 9950 2050 50  0001 C CNN
F 3 "" H 9950 2050 50  0001 C CNN
	1    9950 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5D900A73
P 9950 2300
F 0 "C10" H 10065 2346 50  0000 L CNN
F 1 "1uF" H 10065 2255 50  0000 L CNN
F 2 "" H 9988 2150 50  0001 C CNN
F 3 "~" H 9950 2300 50  0001 C CNN
	1    9950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2150 9950 2050
$Comp
L power:GND #PWR?
U 1 1 5D900AB4
P 9950 2450
F 0 "#PWR?" H 9950 2200 50  0001 C CNN
F 1 "GND" H 9955 2277 50  0000 C CNN
F 2 "" H 9950 2450 50  0001 C CNN
F 3 "" H 9950 2450 50  0001 C CNN
	1    9950 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 5D904F60
P 10050 3150
F 0 "Y1" V 10004 3238 50  0000 L CNN
F 1 "32.768 kHz" V 10095 3238 50  0000 L CNN
F 2 "" H 10050 3150 50  0001 C CNN
F 3 "~" H 10050 3150 50  0001 C CNN
	1    10050 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5D9824ED
P 10700 3350
F 0 "C11" V 10550 3350 50  0000 C CNN
F 1 "18pF" V 10450 3350 50  0000 C CNN
F 2 "" H 10700 3350 50  0001 C CNN
F 3 "~" H 10700 3350 50  0001 C CNN
	1    10700 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5D91067C
P 10700 2950
F 0 "C12" V 10929 2950 50  0000 C CNN
F 1 "18pF" V 10838 2950 50  0000 C CNN
F 2 "" H 10700 2950 50  0001 C CNN
F 3 "~" H 10700 2950 50  0001 C CNN
	1    10700 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 3050 10050 3050
Wire Wire Line
	10050 3050 10050 2950
Wire Wire Line
	10050 2950 10600 2950
Connection ~ 10050 3050
Wire Wire Line
	9950 3250 10050 3250
Wire Wire Line
	10050 3250 10050 3350
Wire Wire Line
	10050 3350 10600 3350
Connection ~ 10050 3250
Wire Wire Line
	10800 3350 10850 3350
Wire Wire Line
	10850 3350 10850 3150
Wire Wire Line
	10850 2950 10800 2950
Wire Wire Line
	10850 3150 10950 3150
Wire Wire Line
	10950 3150 10950 3400
Connection ~ 10850 3150
Wire Wire Line
	10850 3150 10850 2950
$Comp
L power:GND #PWR?
U 1 1 5D925405
P 10950 3400
F 0 "#PWR?" H 10950 3150 50  0001 C CNN
F 1 "GND" H 10955 3227 50  0000 C CNN
F 2 "" H 10950 3400 50  0001 C CNN
F 3 "" H 10950 3400 50  0001 C CNN
	1    10950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2150 9950 2150
$Comp
L power:GND #PWR?
U 1 1 5D926DE9
P 9550 3550
F 0 "#PWR?" H 9550 3300 50  0001 C CNN
F 1 "GND" H 9555 3377 50  0000 C CNN
F 2 "" H 9550 3550 50  0001 C CNN
F 3 "" H 9550 3550 50  0001 C CNN
	1    9550 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2150 9550 2750
Text Label 9150 2950 2    50   ~ 0
SCL
Text Label 9150 3050 2    50   ~ 0
SDA
Wire Notes Line
	11200 1800 11200 3800
Wire Notes Line
	11200 3800 8700 3800
Wire Notes Line
	8700 3800 8700 1800
Wire Notes Line
	8700 1800 11200 1800
Text Notes 8750 2000 0    50   ~ 0
RTC Module\n 
$Comp
L power:+5V #PWR?
U 1 1 5D9550E7
P 9100 5800
F 0 "#PWR?" H 9100 5650 50  0001 C CNN
F 1 "+5V" H 9115 5973 50  0000 C CNN
F 2 "" H 9100 5800 50  0001 C CNN
F 3 "" H 9100 5800 50  0001 C CNN
	1    9100 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R RP4
U 1 1 5D956FCD
P 8950 6100
F 0 "RP4" H 9020 6146 50  0000 L CNN
F 1 "1.6k" H 9020 6055 50  0000 L CNN
F 2 "" V 8880 6100 50  0001 C CNN
F 3 "~" H 8950 6100 50  0001 C CNN
	1    8950 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R RP3
U 1 1 5D9824EE
P 9250 6100
F 0 "RP3" H 9320 6146 50  0000 L CNN
F 1 "1.6k" H 9320 6055 50  0000 L CNN
F 2 "" V 9180 6100 50  0001 C CNN
F 3 "~" H 9250 6100 50  0001 C CNN
	1    9250 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5950 8950 5800
Wire Wire Line
	8950 5800 9100 5800
Wire Wire Line
	9100 5800 9250 5800
Wire Wire Line
	9250 5800 9250 5950
Connection ~ 9100 5800
Wire Wire Line
	9250 6250 9250 6400
Wire Wire Line
	8950 6250 8950 6400
Text Label 9250 6400 2    50   ~ 0
SDA
Text Label 8950 6400 2    50   ~ 0
SCL
Wire Notes Line
	9500 5400 9500 6500
Wire Notes Line
	9500 5400 8500 5400
Wire Notes Line
	8500 5400 8500 6500
Wire Notes Line
	8500 6500 9500 6500
Text Notes 8600 5550 0    50   ~ 0
I2C Pullup\n
$Comp
L Regulator_Linear:LM1117-5.0 U2
U 1 1 5D98A33D
P 5350 1000
F 0 "U2" H 5350 1242 50  0000 C CNN
F 1 "LM1117-3.3" H 5350 1151 50  0000 C CNN
F 2 "" H 5350 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5350 1000 50  0001 C CNN
	1    5350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1000 4600 1000
Wire Wire Line
	4600 1000 4600 900 
Wire Wire Line
	5350 1300 5350 1450
$Comp
L power:GND #PWR?
U 1 1 5D98A355
P 5350 1450
F 0 "#PWR?" H 5350 1200 50  0001 C CNN
F 1 "GND" H 5355 1277 50  0000 C CNN
F 2 "" H 5350 1450 50  0001 C CNN
F 3 "" H 5350 1450 50  0001 C CNN
	1    5350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1000 6000 1000
Wire Wire Line
	6000 1000 6000 750 
Connection ~ 6000 1000
Wire Wire Line
	6000 1000 6100 1000
Wire Wire Line
	6000 1000 6000 1150
$Comp
L Device:C C7
U 1 1 5D98A376
P 6000 1300
F 0 "C7" H 6115 1346 50  0000 L CNN
F 1 "1uF" H 6115 1255 50  0000 L CNN
F 2 "" H 6038 1150 50  0001 C CNN
F 3 "~" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D98A387
P 6000 1450
F 0 "#PWR?" H 6000 1200 50  0001 C CNN
F 1 "GND" H 6005 1277 50  0000 C CNN
F 2 "" H 6000 1450 50  0001 C CNN
F 3 "" H 6000 1450 50  0001 C CNN
	1    6000 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R RP2
U 1 1 5D98A395
P 6250 1000
F 0 "RP2" V 6043 1000 50  0000 C CNN
F 1 "1k" V 6134 1000 50  0000 C CNN
F 2 "" V 6180 1000 50  0001 C CNN
F 3 "~" H 6250 1000 50  0001 C CNN
	1    6250 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 1000 6700 1000
Wire Wire Line
	6700 1000 6700 1150
$Comp
L Device:LED PLED_3V3
U 1 1 5D98A3A8
P 6700 1300
F 0 "PLED_3V3" V 6850 1250 50  0000 R CNN
F 1 "Green" V 6750 1150 50  0000 R CNN
F 2 "" H 6700 1300 50  0001 C CNN
F 3 "~" H 6700 1300 50  0001 C CNN
	1    6700 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D98A3B9
P 6700 1450
F 0 "#PWR?" H 6700 1200 50  0001 C CNN
F 1 "GND" H 6705 1277 50  0000 C CNN
F 2 "" H 6700 1450 50  0001 C CNN
F 3 "" H 6700 1450 50  0001 C CNN
	1    6700 1450
	1    0    0    -1  
$EndComp
Text Label 4600 900  1    50   ~ 0
Vsupply
Text Notes 4900 650  0    50   ~ 0
3V3 Voltage Regulation
Wire Notes Line
	7150 500  7150 1750
Wire Notes Line
	4450 1750 4450 500 
$Comp
L Connector:Micro_SD_Card_Det_Hirose_DM3AT J1
U 1 1 5D99C4D1
P 7750 2800
F 0 "J1" H 7700 3617 50  0000 C CNN
F 1 "Micro_SD_Card_Det_Hirose_DM3AT" H 7700 3526 50  0000 C CNN
F 2 "" H 9800 3500 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 7750 2900 50  0001 C CNN
	1    7750 2800
	1    0    0    -1  
$EndComp
Text Label 6850 2600 2    50   ~ 0
MOSI_3V3
Text Label 6850 2800 2    50   ~ 0
SCK_3V3
Text Label 6850 3000 2    50   ~ 0
MISO_3V3
Text Label 6850 2500 2    50   ~ 0
CS_3V3
Wire Notes Line
	4450 1750 7150 1750
Wire Notes Line
	4450 500  7150 500 
NoConn ~ 6850 3100
NoConn ~ 6850 2400
$Comp
L power:GND #PWR?
U 1 1 5D9D0CF9
P 6300 3250
F 0 "#PWR?" H 6300 3000 50  0001 C CNN
F 1 "GND" H 6305 3077 50  0000 C CNN
F 2 "" H 6300 3250 50  0001 C CNN
F 3 "" H 6300 3250 50  0001 C CNN
	1    6300 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D9D3DB1
P 6000 750
F 0 "#PWR?" H 6000 600 50  0001 C CNN
F 1 "+3V3" H 6015 923 50  0000 C CNN
F 2 "" H 6000 750 50  0001 C CNN
F 3 "" H 6000 750 50  0001 C CNN
	1    6000 750 
	1    0    0    -1  
$EndComp
NoConn ~ 8550 3300
Wire Notes Line
	8650 1800 8650 3550
Text Notes 6650 1950 0    50   ~ 0
MicroSD\n
NoConn ~ 9150 3250
$Comp
L Device:C C?
U 1 1 5DA75BF1
P 6150 2350
F 0 "C?" H 6265 2396 50  0000 L CNN
F 1 "1uF" H 6265 2305 50  0000 L CNN
F 2 "" H 6188 2200 50  0001 C CNN
F 3 "~" H 6150 2350 50  0001 C CNN
	1    6150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1050 2200 1050
Wire Wire Line
	1800 1350 2200 1350
$Comp
L Device:C C?
U 1 1 5DA82869
P 2200 1200
F 0 "C?" H 2315 1246 50  0000 L CNN
F 1 "4.7uF_16V" H 2315 1155 50  0000 L CNN
F 2 "" H 2238 1050 50  0001 C CNN
F 3 "~" H 2200 1200 50  0001 C CNN
	1    2200 1200
	1    0    0    -1  
$EndComp
NoConn ~ 6850 3200
NoConn ~ 6850 3300
Text Label 3300 6750 3    50   ~ 0
RESET
$Comp
L Device:Battery_Cell BT?
U 1 1 5DB20F97
P 10350 2750
F 0 "BT?" V 10605 2800 50  0000 C CNN
F 1 "3V Coin Cell" V 10514 2800 50  0000 C CNN
F 2 "" V 10350 2810 50  0001 C CNN
F 3 "~" V 10350 2810 50  0001 C CNN
	1    10350 2750
	0    -1   -1   0   
$EndComp
Connection ~ 9950 2150
Wire Wire Line
	10150 2750 9650 2750
Wire Wire Line
	10450 2750 11100 2750
Wire Wire Line
	11100 2750 11100 2800
$Comp
L power:GND #PWR?
U 1 1 5DB51105
P 11100 2800
F 0 "#PWR?" H 11100 2550 50  0001 C CNN
F 1 "GND" H 11105 2627 50  0000 C CNN
F 2 "" H 11100 2800 50  0001 C CNN
F 3 "" H 11100 2800 50  0001 C CNN
	1    11100 2800
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0104D U?
U 1 1 5DB7CE97
P 10400 5500
F 0 "U?" H 10400 4711 50  0000 C CNN
F 1 "TXB0104D" H 10400 4620 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0104.pdf" H 10510 5595 50  0001 C CNN
	1    10400 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA7D44C
P 6150 2500
F 0 "#PWR?" H 6150 2250 50  0001 C CNN
F 1 "GND" H 6155 2327 50  0000 C CNN
F 2 "" H 6150 2500 50  0001 C CNN
F 3 "" H 6150 2500 50  0001 C CNN
	1    6150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2900 6300 3250
Wire Wire Line
	6300 2900 6850 2900
Wire Wire Line
	6450 2700 6850 2700
$Comp
L power:+3V3 #PWR?
U 1 1 5DBE883E
P 6450 2050
F 0 "#PWR?" H 6450 1900 50  0001 C CNN
F 1 "+3V3" H 6465 2223 50  0000 C CNN
F 2 "" H 6450 2050 50  0001 C CNN
F 3 "" H 6450 2050 50  0001 C CNN
	1    6450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2050 6450 2150
Wire Wire Line
	6150 2200 6150 2150
Wire Wire Line
	6150 2150 6450 2150
Connection ~ 6450 2150
Wire Wire Line
	6450 2150 6450 2700
Wire Notes Line
	6000 3550 6000 1800
Wire Notes Line
	6000 3550 8650 3550
Wire Notes Line
	6000 1800 8650 1800
$Comp
L power:+3V3 #PWR?
U 1 1 5DC053F6
P 10300 4150
F 0 "#PWR?" H 10300 4000 50  0001 C CNN
F 1 "+3V3" H 10315 4323 50  0000 C CNN
F 2 "" H 10300 4150 50  0001 C CNN
F 3 "" H 10300 4150 50  0001 C CNN
	1    10300 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC05404
P 9900 4450
F 0 "C?" H 10015 4496 50  0000 L CNN
F 1 "1uF" H 10015 4405 50  0000 L CNN
F 2 "" H 9938 4300 50  0001 C CNN
F 3 "~" H 9900 4450 50  0001 C CNN
	1    9900 4450
	1    0    0    -1  
$EndComp
Connection ~ 10300 4250
$Comp
L power:GND #PWR?
U 1 1 5DC05417
P 9900 4600
F 0 "#PWR?" H 9900 4350 50  0001 C CNN
F 1 "GND" H 9905 4427 50  0000 C CNN
F 2 "" H 9900 4600 50  0001 C CNN
F 3 "" H 9900 4600 50  0001 C CNN
	1    9900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4150 10300 4250
Wire Wire Line
	10300 4250 10300 4750
Wire Wire Line
	9900 4300 9900 4250
Wire Wire Line
	9900 4250 10300 4250
Wire Wire Line
	10000 5000 10000 4750
Wire Wire Line
	10000 4750 10300 4750
Connection ~ 10300 4750
Wire Wire Line
	10300 4750 10300 4800
$Comp
L Device:C C?
U 1 1 5DC14854
P 10650 4450
F 0 "C?" H 10535 4404 50  0000 R CNN
F 1 "1uF" H 10535 4495 50  0000 R CNN
F 2 "" H 10688 4300 50  0001 C CNN
F 3 "~" H 10650 4450 50  0001 C CNN
	1    10650 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10500 4150 10500 4250
Wire Wire Line
	10650 4300 10650 4250
Wire Wire Line
	10650 4250 10500 4250
Connection ~ 10500 4250
Wire Wire Line
	10500 4250 10500 4800
$Comp
L power:GND #PWR?
U 1 1 5DC19D61
P 10650 4600
F 0 "#PWR?" H 10650 4350 50  0001 C CNN
F 1 "GND" H 10655 4427 50  0000 C CNN
F 2 "" H 10650 4600 50  0001 C CNN
F 3 "" H 10650 4600 50  0001 C CNN
	1    10650 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC1C838
P 10500 4150
F 0 "#PWR?" H 10500 4000 50  0001 C CNN
F 1 "+5V" H 10515 4323 50  0000 C CNN
F 2 "" H 10500 4150 50  0001 C CNN
F 3 "" H 10500 4150 50  0001 C CNN
	1    10500 4150
	1    0    0    -1  
$EndComp
Text Label 10000 5200 2    50   ~ 0
MOSI_3V3
Text Label 10000 5400 2    50   ~ 0
MISO_3V3
Text Label 10000 5600 2    50   ~ 0
SCK_3V3
Text Label 10000 5800 2    50   ~ 0
CS_3V3
Text Label 10800 5800 0    50   ~ 0
PCINT11
Text Label 10800 5600 0    50   Italic 0
SCK
Text Label 10800 5400 0    50   ~ 0
MISO
Text Label 10800 5200 0    50   ~ 0
MOSI
Wire Notes Line
	11200 6500 11200 3850
Wire Notes Line
	11200 3850 9550 3850
Wire Notes Line
	9550 3850 9550 6500
Wire Notes Line
	9550 6500 11200 6500
Text Notes 9600 4000 0    50   ~ 0
Level Shifter\n
Wire Wire Line
	3950 1350 3850 1350
Wire Wire Line
	3850 1350 3850 1450
Wire Wire Line
	3950 1250 3850 1250
Wire Wire Line
	3850 1250 3850 1150
Wire Wire Line
	3950 1150 3850 1150
Text Label 3850 1050 1    50   ~ 0
Vsupply
$Comp
L power:GND #PWR?
U 1 1 5DC51FF3
P 3850 1450
F 0 "#PWR?" H 3850 1200 50  0001 C CNN
F 1 "GND" H 3855 1277 50  0000 C CNN
F 2 "" H 3850 1450 50  0001 C CNN
F 3 "" H 3850 1450 50  0001 C CNN
	1    3850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1050 3850 1150
Connection ~ 3850 1150
Wire Notes Line
	4400 1750 3750 1750
Wire Notes Line
	3750 1750 3750 500 
Wire Notes Line
	3750 500  4400 500 
Wire Notes Line
	4400 500  4400 1750
Text Notes 3800 700  0    50   ~ 0
Li-Po Battery\nConnector\n
Connection ~ 2200 1050
Wire Wire Line
	2200 1050 2850 1050
Connection ~ 2200 1350
Wire Wire Line
	2200 1350 2700 1350
$Sheet
S 11950 0    6100 4000
U 5D97DF5D
F0 "IMUlogic" 50
F1 "IMUlogic.sch" 50
$EndSheet
$Sheet
S 11950 4200 6100 4100
U 5D98434B
F0 "HallEffect" 50
F1 "HallEffect.sch" 50
$EndSheet
$Sheet
S 18150 0    6200 4000
U 5D989250
F0 "BlueTooth" 50
F1 "BlueTooth.sch" 50
$EndSheet
$Sheet
S 18150 4200 6200 4100
U 5D989829
F0 "GPS" 50
F1 "GPS.sch" 50
$EndSheet
$EndSCHEMATC

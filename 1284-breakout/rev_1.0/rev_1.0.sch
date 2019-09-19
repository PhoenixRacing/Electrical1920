EESchema Schematic File Version 5
LIBS:rev_1.0-cache
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
L MCU_Microchip_ATmega:ATmega1284P-PU U0
U 1 1 5D817C61
P 1550 3650
F 0 "U0" H 1450 4550 50  0000 C CNN
F 1 "ATmega1284P-PU" H 1450 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 1550 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8272-8-bit-AVR-microcontroller-ATmega164A_PA-324A_PA-644A_PA-1284_P_datasheet.pdf" H 1550 3650 50  0001 C CNN
	1    1550 3650
	1    0    0    -1  
$EndComp
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
L Device:CP C2
U 1 1 5D83FCC5
P 2200 1200
F 0 "C2" H 2318 1246 50  0000 L CNN
F 1 "4.7uF_16V" H 2318 1155 50  0000 L CNN
F 2 "" H 2238 1050 50  0001 C CNN
F 3 "~" H 2200 1200 50  0001 C CNN
	1    2200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1050 2200 1050
Wire Wire Line
	1800 1350 2200 1350
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
Connection ~ 2200 1050
Wire Wire Line
	2200 1050 2850 1050
Connection ~ 2200 1350
Wire Wire Line
	2200 1350 2700 1350
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
P 6450 1200
F 0 "SW0" H 6450 1485 50  0000 C CNN
F 1 "RESET" H 6450 1394 50  0000 C CNN
F 2 "" H 6450 1400 50  0001 C CNN
F 3 "~" H 6450 1400 50  0001 C CNN
	1    6450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1200 6850 1200
Wire Wire Line
	6250 1200 6000 1200
Wire Wire Line
	6000 1200 6000 1300
$Comp
L power:GND #PWR?
U 1 1 5D845887
P 6000 1300
F 0 "#PWR?" H 6000 1050 50  0001 C CNN
F 1 "GND" H 6005 1127 50  0000 C CNN
F 2 "" H 6000 1300 50  0001 C CNN
F 3 "" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1200 6850 1150
$Comp
L Device:R RP0
U 1 1 5D848534
P 6850 1000
F 0 "RP0" H 6920 1046 50  0000 L CNN
F 1 "1k" H 6920 955 50  0000 L CNN
F 2 "" V 6780 1000 50  0001 C CNN
F 3 "~" H 6850 1000 50  0001 C CNN
	1    6850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 850  6850 750 
$Comp
L power:+5V #PWR?
U 1 1 5D84A868
P 6850 750
F 0 "#PWR?" H 6850 600 50  0001 C CNN
F 1 "+5V" H 6865 923 50  0000 C CNN
F 2 "" H 6850 750 50  0001 C CNN
F 3 "" H 6850 750 50  0001 C CNN
	1    6850 750 
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
L Device:LED PLED
U 1 1 5D8553FE
P 9450 1300
F 0 "PLED" V 9489 1183 50  0000 R CNN
F 1 "Green" V 9398 1183 50  0000 R CNN
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
L Connector_Generic:Conn_02x03_Odd_Even J0
U 1 1 5D85C07C
P 10650 1150
F 0 "J0" H 10700 1467 50  0000 C CNN
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
$Comp
L Interface_USB:FT232RL U3
U 1 1 5D86257D
P 9400 3200
F 0 "U3" H 9400 4381 50  0000 C CNN
F 1 "FT232RL" H 9400 4290 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 9400 3200 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT232RL.htm" H 9400 3200 50  0001 C CNN
	1    9400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4200 9200 4350
Wire Wire Line
	9200 4350 9400 4350
Wire Wire Line
	9600 4350 9600 4200
Wire Wire Line
	9500 4200 9500 4350
Connection ~ 9500 4350
Wire Wire Line
	9500 4350 9600 4350
Wire Wire Line
	9400 4200 9400 4350
Connection ~ 9400 4350
Wire Wire Line
	9400 4350 9500 4350
Wire Wire Line
	9600 4350 9600 4400
Connection ~ 9600 4350
$Comp
L power:GND #PWR?
U 1 1 5D86AD38
P 9600 4400
F 0 "#PWR?" H 9600 4150 50  0001 C CNN
F 1 "GND" H 9605 4227 50  0000 C CNN
F 2 "" H 9600 4400 50  0001 C CNN
F 3 "" H 9600 4400 50  0001 C CNN
	1    9600 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R RP2
U 1 1 5D874DF4
P 10350 2500
F 0 "RP2" V 10143 2500 50  0000 C CNN
F 1 "1k" V 10234 2500 50  0000 C CNN
F 2 "" V 10280 2500 50  0001 C CNN
F 3 "~" H 10350 2500 50  0001 C CNN
	1    10350 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R RP2
U 1 1 5D874DF4
P 10350 2600
F 0 "RP2" V 10143 2600 50  0000 C CNN
F 1 "1k" V 10234 2600 50  0000 C CNN
F 2 "" V 10280 2600 50  0001 C CNN
F 3 "~" H 10350 2600 50  0001 C CNN
	1    10350 2600
	0    -1   -1   0   
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
	5850 1600 7150 1600
Wire Notes Line
	7150 1600 7150 500 
Wire Notes Line
	7150 500  5850 500 
Wire Notes Line
	5850 500  5850 1600
Text Notes 6000 700  0    50   ~ 0
Reset Button\n
Text Notes 1850 1600 0    50   ~ 0
Caps filter noise\nfrom +5Vin
Text Notes 4150 1500 0    50   ~ 0
 Xtal to determine uC clock speed\n[16Mhz xtal -> 16Mhz core clock]
Wire Wire Line
	900  2550 950  2550
Text Notes 650  850  0    50   ~ 0
 Microcontroller\n[AtMEGA1284P-PU]
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
P 4650 1000
F 0 "Y0" V 4604 1131 50  0000 L CNN
F 1 "16MHz" V 4695 1131 50  0000 L CNN
F 2 "" H 4650 1000 50  0001 C CNN
F 3 "~" H 4650 1000 50  0001 C CNN
	1    4650 1000
	0    1    1    0   
$EndComp
Text Label 4550 800  2    50   ~ 0
XTAL1
Text Label 4550 1200 2    50   ~ 0
XTAL2
Text Label 950  2150 2    50   ~ 0
XTAL1
Text Label 950  2350 2    50   ~ 0
XTAL2
$Comp
L Device:C_Small C5
U 1 1 5D96662A
P 5150 1200
F 0 "C5" V 4921 1200 50  0000 C CNN
F 1 "22pf" V 5012 1200 50  0000 C CNN
F 2 "" H 5150 1200 50  0001 C CNN
F 3 "~" H 5150 1200 50  0001 C CNN
	1    5150 1200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D9672E2
P 5150 800
F 0 "C4" V 4921 800 50  0000 C CNN
F 1 "22pf" V 5012 800 50  0000 C CNN
F 2 "" H 5150 800 50  0001 C CNN
F 3 "~" H 5150 800 50  0001 C CNN
	1    5150 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 1200 4650 1200
Wire Wire Line
	4650 1150 4650 1200
Connection ~ 4650 1200
Wire Wire Line
	4650 1200 5050 1200
Wire Wire Line
	4550 800  4650 800 
Wire Wire Line
	4650 800  4650 850 
Wire Wire Line
	4650 800  5050 800 
Connection ~ 4650 800 
Wire Wire Line
	5250 1200 5350 1200
Wire Wire Line
	5350 1200 5350 1000
Wire Wire Line
	5350 800  5250 800 
Wire Wire Line
	5350 1000 5650 1000
Connection ~ 5350 1000
Wire Wire Line
	5350 1000 5350 800 
$Comp
L power:GND #PWR?
U 1 1 5D97886E
P 5650 1300
F 0 "#PWR?" H 5650 1050 50  0001 C CNN
F 1 "GND" H 5655 1127 50  0000 C CNN
F 2 "" H 5650 1300 50  0001 C CNN
F 3 "" H 5650 1300 50  0001 C CNN
	1    5650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1000 5650 1300
Wire Notes Line
	5800 1600 5800 500 
Wire Notes Line
	4100 500  4100 1600
Text Notes 4350 650  0    50   ~ 0
Crystal Oscillator
Wire Notes Line
	5800 1600 4100 1600
Wire Notes Line
	4100 500  5800 500 
$EndSCHEMATC

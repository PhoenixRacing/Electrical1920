// I2C device class (I2Cdev) demonstration Arduino sketch for MPU6050 class
// 10/7/2011 by Jeff Rowberg <jeff@rowberg.net>
// Updates should (hopefully) always be available at https://github.com/jrowberg/i2cdevlib
//
// Changelog:
//     2011-10-07 - initial release

/* ============================================
I2Cdev device library code is placed under the MIT license
Copyright (c) 2011 Jeff Rowberg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
===============================================
*/

// Arduino Wire library is required if I2Cdev I2CDEV_ARDUINO_WIRE implementation
// is used in I2Cdev.h
#include "Wire.h"
#include <SPI.h>

#include <SD.h>

#define WRITE_INTERVAL 100

unsigned long firstWriteTime = 0;
unsigned long lastWriteTime = 0;

#define FILENAME_SIZE 9
File logFile;
char fileName[FILENAME_SIZE];

void getFileName(char *filename){
  unsigned int i = 0;
  while(SD.exists(filename)){
    i++;
    filename[0] = (i%10000)/1000;
    filename[1] = (i%1000)/100;
    filename[2] = (i%100)/10;
    filename[3] = i%10;
  }
}

void writeLine(unsigned int tachData, float speedData, int16_t axData, int16_t ayData, int16_t azData){
  lastWriteTime = millis();
  char line[33];
  char SPED[6];
  char TACH[6];
  char AX[7];
  char AY[7];
  char AZ[7];
    
  sprintf(line,"%06d:", lastWriteTime-firstWriteTime);
  //sprintf included with arduino does not handle floats, so this:
  sprintf(SPED, "%02d.%01d,", int(speedData), (round(speedData*10)%10));
  sprintf(TACH, "%04d,", tachData);
  sprintf(AX, "%05d,", round(axData));
  sprintf(AY, "%05d,", round(ayData));
  sprintf(AZ, "%05d,", round(azData));

  strcat(line, SPED);
  strcat(line, TACH);
  strcat(line, AX);
  strcat(line, AY);
  strcat(line, AZ);

  Serial.println(line);

  logFile = SD.open(fileName, FILE_WRITE);
  if(logFile){
    logFile.println(line);
    logFile.close();
  }
}


#include <movingAvg.h>

#define BUFF_LEN 10


// I2Cdev and MPU6050 must be installed as libraries, or else the .cpp/.h files
// for both classes must be in the include path of your project
#include "I2Cdev.h"
#include "MPU6050.h"

// class default I2C address is 0x68
// specific I2C addresses may be passed as a parameter here
// AD0 low = 0x68 (default for InvenSense evaluation board)
// AD0 high = 0x69
MPU6050 accelgyro;

int16_t ax, ay, az;

#define LED_PIN 13

bool blinkState = false;


#define TACH_PIN 2

#define THRESHOLD 700
#define DEBOUNCE_TACH 7500 //(us) this is calculated, a little lower than the wavelength of our highest frequency 
#define MAXTIME_TACH 17000 //wavelength of lowest measurable frequency
unsigned long lastTach;

movingAvg tach(BUFF_LEN);
unsigned int tachData;

unsigned int convertRPM(unsigned long period){
  if(period<=DEBOUNCE_TACH){
    return 9999;
  }
  if(period>=MAXTIME_TACH){
    return 0;
  }
  unsigned int RPM = (30*1000000)/period;
  return RPM;
}


#define SPEED_PIN 5

#define RREF  430.0
#define RNOMINAL  100.0  if(period<=lastRevTime){

#define MAXTIME_HALL 10000 //
#define DEBOUNCE_HALL 370
#define CONVERTER 7411 //wheel diameter is 22"

unsigned long lastHall;
//unsigned float lastfreqmeasurement = 0.6; //start with the frequency for going at 5MPH
unsigned long lastRevTime = 0;

movingAvg hall(BUFF_LEN);
float speedData = 0;

float convertMPS(unsigned long period){ 
  if(period<=DEBOUNCE_HALL){
    return 9999;
  }
  if(period>=MAXTIME_HALL){
    return 0;
  }
  float MPS = CONVERTER/float(period);
  return MPS;
}


void setup() {
    // join I2C bus (I2Cdev library doesn't do this automatically)
    Wire.begin();
    tach.begin();
    hall.begin();

    // initialize serial communication
    // (38400 chosen because it works as well at 8MHz as it does at 16MHz, but
    // it's really up to you depending on your project)
    Serial.begin(38400);

    // initialize device
    Serial.println("Initializing I2C devices...");
    accelgyro.initialize();

    // verify connection
    Serial.println("Testing device connections...");
    Serial.println(accelgyro.testConnection() ? "MPU6050 connection successful" : "MPU6050 connection failed");

    pinMode(TACH_PIN, INPUT);
    pinMode(SPEED_PIN, INPUT);

    // configure Arduino LED for
    pinMode(LED_PIN, OUTPUT);

    strcat(fileName,"0000.CSV");
    getFileName(filename);
    
    logFile = SD.open(fileName, FILE_WRITE);
    logFile.close();
    
    firstWriteTime = millis();
    lastTach = micros();
    lastHall = micros();
}

void loop() {
    unsigned long hallTime;
    if(digitalRead(SPEED_PIN) && ((micros() - lastHall) > DEBOUNCE_HALL)){
      hallTime = micros() - lastHall;
      lastHall = micros();
      hall.reading(hallTime);
    }
    if((micros() - lastHall) > MAXTIME_HALL){
      hall.reset();
    }
    
    unsigned long tachTime;
    if(digitalRead(TACH_PIN) && ((micros() - lastTach) > DEBOUNCE_TACH)){
      tachTime = micros() - lastTach;
      lastTach = micros();
      tach.reading(tachTime);
    }
    if((micros() - lastTach) > MAXTIME_TACH){
      tach.reset();
    }

    

    if((millis()-lastWriteTime) > WRITE_INTERVAL){

      accelgyro.getAcceleration(&ax, &ay, &az);

      unsigned long tachPeriod = tach.getAvg();
      unsigned long hallPeriod = hall.getAvg();
      
      tachData = convertRPM(tachPeriod);
      speedData = convertMPS(hallPeriod);
  
      // display tab-separated accel/gyro x/y/z values
      
      // Serial.print("tach/mph/a:\t");
      // Serial.print(tachPeriod); Serial.print("\t");
      // Serial.print(hallPeriod); Serial.print("\t");
      // Serial.print(tachData); Serial.print("\t");
      // Serial.print(speedData); Serial.print("\t");
      // Serial.print(ax); Serial.print("\t");
      // Serial.print(ay); Serial.print("\t");
      // Serial.println(az);
      
      writeLine(tachData, speedData, ax, ay, az);

      
  
      // blink LED to indicate activity
      blinkState = !blinkState;
      digitalWrite(LED_PIN, blinkState);
    }
}

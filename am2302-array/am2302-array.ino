/*
*	Arduino_Nano_Sensor_Array_Example.ino
*
*	Author: Frank Häfele
*	Date:	23.04.2024
*
*	Objective:
    Measure sensor data of AM2302-Sensor-Array with Arduino IDE.
    Use 3 sensors and compare them with serial output 
*/

#include <Arduino.h>
#include <AM2302-Sensor.h>

constexpr int SIZE {7};
constexpr int PIN[SIZE] = {2, 3, 4, 5, 6, 7, 8};

// Create Sensor Object array with std:array
AM2302::AM2302_Sensor sensor_arr[SIZE] = {
  AM2302::AM2302_Sensor{PIN[0]},
  AM2302::AM2302_Sensor{PIN[1]},
  AM2302::AM2302_Sensor{PIN[2]},
  AM2302::AM2302_Sensor{PIN[3]},
  AM2302::AM2302_Sensor{PIN[4]},
  AM2302::AM2302_Sensor{PIN[5]},
  AM2302::AM2302_Sensor{PIN[6]}
};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  while(!Serial) {
    yield();
  }
//  Serial.print(">>> Test Sensor Array of AM2302 (DHT22) Sensors <<<\n\n");
//  delay(5000);

  for (size_t i = 0; i < SIZE; ++i) {
//    Serial.print("Sensor ");
//    Serial.print(i);
//    Serial.print(" available - ");
    Serial.println(sensor_arr[i].begin());
  }
//  Serial.print("\n");
  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly:
  
//  Serial.print("\tSensor Status : ");
//  for (size_t i = 0; i < SIZE; ++i) {
//    Serial.print(AM2302::AM2302_Sensor::get_sensorState(sensor_arr[i].read()));
//    Serial.print("\t");
//  }
//  Serial.print("\n\tTemperature   : ");
  for (size_t i = 0; i < SIZE; ++i) {
    AM2302::AM2302_Sensor::get_sensorState(sensor_arr[i].read());
    int temp = int((sensor_arr[i].get_Temperature() + 0.005) * 100);
    Serial.print(temp);
    Serial.print(" ");
  }
//  Serial.print("\n\tHumidity      : ");
  for (size_t i = 0; i < SIZE-1; ++i) {
    int hum = int((sensor_arr[i].get_Humidity() + 0.005) * 100);
    Serial.print(hum);
    Serial.print(" ");
  }
  // last
  int hum = int((sensor_arr[SIZE-1].get_Humidity() + 0.005) * 100);
  Serial.println(hum);
  delay(1000);
}

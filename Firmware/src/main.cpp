// D-Jetronic Tune-o-Matic
// (C) andy@britishideas.com 2022

#include <Arduino.h>
#include "Serial.h"

#define MAJOR_VERSION 1
#define MINOR_VERSION 0
#define PRODUCT_UID   0x02   // Tune-o-Matic

// initialization
void setup() {
  Serial_Init(MAJOR_VERSION, MINOR_VERSION, PRODUCT_UID);
}

// continually called
void loop() {
  Serial_Process();
}

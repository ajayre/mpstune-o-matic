// D-Jetronic Tune-o-Matic
// (C) andy@britishideas.com 2022

#include <Arduino.h>
#include "Serial.h"

#define MAJOR_VERSION 1
#define MINOR_VERSION 0
#define PRODUCT_UID   0x02   // Tune-o-Matic

#define FALSE 0
#define TRUE  1

// mcu pins
#define PIN_STATUS_LED A3  // PC3

// time between turning the status LED on or off in milliseconds
#define LED_FLASH_PERIOD 1000

// IO macros
#define STATUS_LED_ON    digitalWrite(PIN_STATUS_LED, LOW)
#define STATUS_LED_OFF   digitalWrite(PIN_STATUS_LED, HIGH);
#define IS_STATUS_LED_ON (digitalRead(PIN_STATUS_LED) == 1 ? FALSE : TRUE)

static unsigned long LEDTimestamp;

// Gets the current time in milliseconds since last power on
static unsigned long GetTime
  (
  void
  )
{
  return millis();
}

// Checks if a timestamp is in the past, handles 32-bit timer overflow
static uint8_t IsTimeExpired
  (
  unsigned long timestamp            // timestamp to check
  )
{
  unsigned long time_now;

  time_now = millis();
  if (time_now >= timestamp)
  {
    if ((time_now - timestamp) < 0x80000000)
      return 1;
    else
      return 0;
  }
  else
  {
    if ((timestamp - time_now) >= 0x80000000)
      return 1;
    else
      return 0;
  }
}

// initialization
void setup() {
  Serial_Init(MAJOR_VERSION, MINOR_VERSION, PRODUCT_UID);

  // set up outputs
  pinMode(PIN_STATUS_LED, OUTPUT);
  STATUS_LED_OFF;

  LEDTimestamp = GetTime() + LED_FLASH_PERIOD;
}

// continually called
void loop() {
  Serial_Process();

  // flash status LED to show we are alive
  if (IsTimeExpired(LEDTimestamp))
  {
    if (IS_STATUS_LED_ON)
    {
      STATUS_LED_OFF;
    }
    else
    {
      STATUS_LED_ON;
    }

    LEDTimestamp = GetTime() + LED_FLASH_PERIOD;
  }
}

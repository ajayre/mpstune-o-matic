// D-Jetronic MPS Tune-o-Matic
// (C) andy@britishideas.com 2022

#include <Arduino.h>
#include "Tuner.h"
#include "Serial.h"
#include "Adafruit_BMP3XX-master/Adafruit_BMP3XX.h"

// mcu pins
#define PIN_STATUS_LED A3  // PC3
#define PIN_BMP_CS     8   // PB0

// time between turning the status LED on or off in milliseconds
#define LED_FLASH_PERIOD 1000

// time between measurement periods in milliseconds
#define MEASUREMENT_PERIOD 100

// IO macros
#define STATUS_LED_ON    digitalWrite(PIN_STATUS_LED, LOW)
#define STATUS_LED_OFF   digitalWrite(PIN_STATUS_LED, HIGH);
#define IS_STATUS_LED_ON (digitalRead(PIN_STATUS_LED) == 1 ? FALSE : TRUE)

// define to 1 to similate pressure and pulse widths
#define SIMULATE 1

static unsigned long LEDTimestamp;
static bool ContinuousMeasurementEnabled;
static unsigned long MeasurementTimestamp;
static Adafruit_BMP3XX Bmp;

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

/////////////////////////////////////////////////////////////////////
// PUBLIC FUNCTIONS

// initializes the module
void Tuner_Init
  (
  void
  )
{
  // set up outputs
  pinMode(PIN_STATUS_LED, OUTPUT);
  STATUS_LED_OFF;

  randomSeed(analogRead(6));

  ContinuousMeasurementEnabled = false;

  if (!Bmp.begin_SPI(PIN_BMP_CS))
  {
    //Serial.println("Could not find a valid BMP3 sensor, check wiring!");
  }

  // Set up oversampling and filter initialization
  //Bmp.setTemperatureOversampling(BMP3_OVERSAMPLING_2X);
  //Bmp.setPressureOversampling(BMP3_OVERSAMPLING_32X);
  //Bmp.setIIRFilterCoeff(BMP3_IIR_FILTER_COEFF_3);
  //Bmp.setOutputDataRate(BMP3_ODR_12_5_HZ);

  LEDTimestamp = GetTime() + LED_FLASH_PERIOD;
}

// operates the module
void Tuner_Process
  (
  void
  )
{
  // perform measurements if enabled
  if (ContinuousMeasurementEnabled)
  {
    if (IsTimeExpired(MeasurementTimestamp))
    {
      Serial_SendPressure(Tuner_GetPressure());
      Serial_SendPulseWidth(Tuner_GetPulseWidth());

      MeasurementTimestamp = GetTime() + MEASUREMENT_PERIOD;
    }
  }

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

// gets the current atmospheric pressure in Pa
double Tuner_GetPressure
  (
  void  
  )
{
  double Pressure;

#if SIMULATE == 1
  Pressure = random(0, 2000) + 99000.25;
#else
  if (Bmp.performReading())
  {
    Pressure = Bmp.pressure;
  }
  else
  {
    Pressure = 0;
  }

#endif // SIMULATE == 1

  return Pressure;
}

// gets the current pulse width
uint16_t Tuner_GetPulseWidth
  (
  void  
  )
{
  uint16_t Width;

#if SIMULATE == 1
  Width = random(11000, 12000);
#else
  Width = 0;
#endif // SIMULATE == 1

  return Width;
}

// turns continuous measurement on or off
extern void Tuner_SetContinuousMeasurement
  (
  bool Enable            // true to turn on
  )
{
  ContinuousMeasurementEnabled = Enable;

  if (Enable)
  {
    MeasurementTimestamp = GetTime() + MEASUREMENT_PERIOD;
  }
}

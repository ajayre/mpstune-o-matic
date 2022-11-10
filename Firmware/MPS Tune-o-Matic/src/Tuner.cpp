// D-Jetronic MPS Tune-o-Matic
// (C) andy@britishideas.com 2022

#include <Arduino.h>
#include "Tuner.h"
#include "Serial.h"
#include "Adafruit_BMP3XX-master/Adafruit_BMP3XX.h"
#include "TimerOne-master/TimerOne.h"

// mcu pins
#define PIN_STATUS_LED   A3  // PC3
#define PIN_BMP_CS       8   // PB0
#define PIN_MPS_PULSE    2   // PD2
#define PIN_MPS_STIMULUS 9   // PB1

// time between turning the status LED on or off in milliseconds
#define LED_FLASH_PERIOD 1000

// time between measurement periods in milliseconds
#define MEASUREMENT_PERIOD 250

// time between edges on mps stimulator signal, in microseconds
#define MPS_STIMULATOR_PERIOD_US 20000

// IO macros
#define STATUS_LED_ON    digitalWrite(PIN_STATUS_LED, LOW)
#define STATUS_LED_OFF   digitalWrite(PIN_STATUS_LED, HIGH);
#define IS_STATUS_LED_ON (digitalRead(PIN_STATUS_LED) == 1 ? FALSE : TRUE)

// define to 1 to simulate pressure and pulse widths
#define SIMULATE 0

// number of pulses to generate before making the first measurement
#define NUM_STABILIZATION_PULSES 10

static unsigned long LEDTimestamp;
static bool ContinuousMeasurementEnabled;
static unsigned long MeasurementTimestamp;
static Adafruit_BMP3XX Bmp;
static unsigned long MPSPulseBeginTime;
static unsigned long MPSPulseDuration;
static bool MPSPulseMeasured;

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

// called when edge detected on mps pulse pin
static void MPSPulseInterrupt
  (
  void  
  )
{
  if (digitalRead(PIN_MPS_PULSE) == LOW)
  {
    // start measuring
    MPSPulseBeginTime = micros();
  }
  else
  {
    // stop measuring
    MPSPulseDuration = micros() - MPSPulseBeginTime;
    MPSPulseMeasured = true;
  }
}

// stimulates the MPS by providing a pulse, called from timer 1 interrupt
static void MPSStimulator
  (
  void
  )
{
  if (digitalRead(PIN_MPS_STIMULUS) == HIGH)
  {
    digitalWrite(PIN_MPS_STIMULUS, LOW);
  }
  else
  {
    digitalWrite(PIN_MPS_STIMULUS, HIGH);
  }

  // restart
  Timer1.setPeriod(MPS_STIMULATOR_PERIOD_US);
  Timer1.attachInterrupt(MPSStimulator);
}

// starts the mps stimulation
static void StartMPSStimulation
  (
  void
  )
{
  // start MPS stimulation
  Timer1.setPeriod(MPS_STIMULATOR_PERIOD_US);
  Timer1.attachInterrupt(MPSStimulator);
  Timer1.start();

  // wait for pulses to stabilize
  delay(MPS_STIMULATOR_PERIOD_US / 1000 * NUM_STABILIZATION_PULSES);
}

// stops the mps stimulation
static void StopMPSStimulation
  (
  void  
  )
{
  Timer1.stop();
}

/////////////////////////////////////////////////////////////////////
// PUBLIC FUNCTIONS

// initializes the module
void Tuner_Init
  (
  void
  )
{
  int p;

  // set up pins
  pinMode(PIN_STATUS_LED,   OUTPUT);
  pinMode(PIN_MPS_PULSE,    INPUT);
  pinMode(PIN_MPS_STIMULUS, OUTPUT);

  STATUS_LED_OFF;

  // set up pulse measurement
  MPSPulseMeasured = false;
  attachInterrupt(digitalPinToInterrupt(PIN_MPS_PULSE), MPSPulseInterrupt, CHANGE);

  // set up stimulator
  Timer1.initialize(0);

  randomSeed(analogRead(6));

  ContinuousMeasurementEnabled = false;

  if (!Bmp.begin_SPI(PIN_BMP_CS))
  {
    //Serial.println("Could not find a valid BMP3 sensor, check wiring!");
  }

  // Set up oversampling and filter initialization
  Bmp.setTemperatureOversampling(BMP3_OVERSAMPLING_2X);
  Bmp.setPressureOversampling(BMP3_OVERSAMPLING_32X);
  Bmp.setIIRFilterCoeff(BMP3_IIR_FILTER_COEFF_3);
  Bmp.setOutputDataRate(BMP3_ODR_12_5_HZ);

  // perform initial reads of the pressure because the first
  // few readings are always incorrect
  for (p = 0; p < 10; p++)
  {
    Tuner_GetPressure();
    delay(10);
  }

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

// gets the current pulse width in microseconds
uint16_t Tuner_GetPulseWidth
  (
  void  
  )
{
  uint16_t Width;

#if SIMULATE == 1
  Width = random(11000, 12000);
#else
  if (!ContinuousMeasurementEnabled)
  {
    StartMPSStimulation();
  }

  if (MPSPulseMeasured)
  {
    Width = MPSPulseDuration;
    MPSPulseMeasured = false;
  }
  // no pulse detected
  else
  {
    Width = 0;
  }

  if (!ContinuousMeasurementEnabled)
  {
    StopMPSStimulation();
  }

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
    StartMPSStimulation();
    MeasurementTimestamp = GetTime() + MEASUREMENT_PERIOD;
  }
  else
  {
    StopMPSStimulation();
  }
}

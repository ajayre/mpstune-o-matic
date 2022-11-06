// D-Jetronic MPS Tune-o-Matic
// (C) andy@britishideas.com 2022

#include <Arduino.h>
#include <Firmata.h>
#include "Serial.h"
#include "Tuner.h"

#define MAX_DEBUG_LINE_LENGTH 128

// sysex message identifiers
typedef enum _messageids_t
{
  RequestProduct = 0xF0,
  CurrentProduct = 0xF1,
  
  RequestPulseWidth = 0x02,
  CurrentPulseWidth = 0x03,
  RequestPressure   = 0x04,
  CurrentPressure   = 0x05,
  StartContinuousMeasurement = 0x06,
  StopContinuousMeasurement = 0x07
} messageids_t;

typedef struct _status_t
{
  uint32_t EngineSpeed;
  int32_t CoolantTemperature;
  int32_t AirTemperature;
  uint32_t Throttle;
  uint32_t PulseAngle;
  uint32_t Pressure;
} status_t __attribute__ ((aligned (1)));

static byte OurProductUID;
static byte OurFirmwareMajorVersion;
static byte OurFirmwareMinorVersion;

// sends the product details
static void SendProduct
  (
  void
  )
{
  byte Buffer[3];

  Buffer[0] = OurProductUID;
  Buffer[1] = OurFirmwareMajorVersion;
  Buffer[2] = OurFirmwareMinorVersion;

  Firmata.sendSysex(CurrentProduct, 3, Buffer);
}

// called when a sysex message is received
// processes the message
static void sysexCallback(byte command, byte argc, byte *argv)
{
  double Pressure;
  uint16_t PulseWidth;

  switch (command)
  {
    case RequestProduct:
      SendProduct();
      break;

    case RequestPulseWidth:
      PulseWidth = Tuner_GetPulseWidth();
      Serial_SendPulseWidth(PulseWidth);
      break;

    case RequestPressure:
      Pressure = Tuner_GetPressure();
      Serial_SendPressure(Pressure);
      break;

    case StartContinuousMeasurement:
      Tuner_SetContinuousMeasurement(true);
      break;

    case StopContinuousMeasurement:
      Tuner_SetContinuousMeasurement(false);
      break;
  }

  Firmata.sendSysex(command, argc, argv);
}

/////////////////////////////////////////////////////////////////////
// PUBLIC FUNCTIONS

// func: debug_printf
// desc: outputs a debug line and has the same prototype as printf
int Serial_printf
  (
  char const *format,
  ...
  )
{
  va_list args;
  int charswritten = 0;
  char line[MAX_DEBUG_LINE_LENGTH];

  // construct line
  va_start(args, format);
  charswritten = vsnprintf(line, MAX_DEBUG_LINE_LENGTH, format, args);
  va_end(args);

  Firmata.sendString(line);

  return charswritten;
}

// initializes the module
void Serial_Init
  (
  byte FirmwareMajorVersion,
  byte FirmwareMinorVersion,
  byte ProductUID
  )
{
  OurProductUID = ProductUID;
  OurFirmwareMajorVersion = FirmwareMajorVersion;
  OurFirmwareMinorVersion = FirmwareMinorVersion;

  Firmata.setFirmwareVersion(2, 0);
  //Firmata.attach(STRING_DATA, stringCallback);
  Firmata.attach(START_SYSEX, sysexCallback);
  Firmata.begin(57600);
}

// operates module
void Serial_Process
  (
  void
  )
{
  while (Firmata.available())
  {
    Firmata.processInput();
  }
}

// sends a pulse width measurement
void Serial_SendPulseWidth
  (
  uint16_t PulseWidth
  )
{
  byte Buffer[2];

  Buffer[0] = PulseWidth & 0xFF;
  Buffer[1] = (PulseWidth >> 8) & 0xFF;

  Firmata.sendSysex(CurrentPulseWidth, 2, Buffer);
}

// sends an atmospheric pressure measurement
void Serial_SendPressure
  (
  double Pressure     // pressure in Pa
  )
{
  byte Buffer[4];

  // for atmega double is the same as float
  memcpy(Buffer, (byte *)&Pressure, 4);

  Firmata.sendSysex(CurrentPressure, 4, Buffer);
}

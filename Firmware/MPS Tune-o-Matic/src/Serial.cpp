// Mercedes V8 DJet Engine Simulator
// (C) andy@britishideas.com 2021-2022

#include <Arduino.h>
#include <Firmata.h>
#include "Serial.h"

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
  Ping              = 0x06
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

// sends the latest pulse width measurement
static void SendPulseWidth
  (
  void
  )
{
  byte Buffer[2];
  uint16_t Width;

  Width = 0;

  Buffer[0] = Width & 0xFF;
  Buffer[1] = (Width >> 8) & 0xFF;

  Firmata.sendSysex(CurrentPulseWidth, 2, Buffer);
}

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

// sends the latest atmospheric pressure measurement
static void SendPressure
  (
  void
  )
{
  byte Buffer[2];
  uint16_t Pressure;

  Pressure = 0;

  Buffer[0] = Pressure & 0xFF;
  Buffer[1] = (Pressure >> 8) & 0xFF;

  Firmata.sendSysex(CurrentPressure, 2, Buffer);
}

// called when a sysex message is received
// processes the message
static void sysexCallback(byte command, byte argc, byte *argv)
{
  switch (command)
  {
    case RequestProduct:
      SendProduct();
      break;

    case RequestPulseWidth:
      SendPulseWidth();
      break;

    case RequestPressure:
      SendPressure();
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

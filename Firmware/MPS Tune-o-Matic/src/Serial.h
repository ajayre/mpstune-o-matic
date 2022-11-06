// D-Jetronic MPS Tune-o-Matic
// (C) andy@britishideas.com 2022

#ifndef _SERIALH_
#define _SERIALH_

// initializes the module
extern void Serial_Init
  (
  byte FirmwareMajorVersion,
  byte FirmwareMinorVersion,
  byte ProductUID
  );

// operates the module
extern void Serial_Process
  (
  void
  );

// func: debug_printf
// desc: outputs a debug line and has the same prototype as printf
extern int Serial_printf
  (
  char const *format,
  ...
  );

// sends a pulse width measurement
extern void Serial_SendPulseWidth
  (
  uint16_t PulseWidth
  );

// sends an atmospheric pressure measurement
extern void Serial_SendPressure
  (
  double Pressure     // pressure in Pa
  );

#endif // _SERIALH_

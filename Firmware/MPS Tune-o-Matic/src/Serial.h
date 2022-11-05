// Mercedes V8 DJet Engine Simulator
// (C) andy@britishideas.com 2021-2022

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

#endif // _SERIALH_

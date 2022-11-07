// D-Jetronic MPS Tune-o-Matic
// (C) andy@britishideas.com 2022

#ifndef _TUNERH_
#define _TUNERH_

#include <stdint.h>

// initializes the module
extern void Tuner_Init
  (
  void
  );

// operates the module
extern void Tuner_Process
  (
  void
  );

// gets the current atmospheric pressure in Pa
extern double Tuner_GetPressure
  (
  void  
  );

// gets the current pulse width in microseconds
extern uint16_t Tuner_GetPulseWidth
  (
  void  
  );

// turns continuous measurement on or off
extern void Tuner_SetContinuousMeasurement
  (
  bool Enable            // true to turn on
  );

#endif // _TUNERH_

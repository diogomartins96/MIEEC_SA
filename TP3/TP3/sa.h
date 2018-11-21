#ifndef sa_h
#define sa_h

#if defined(ARDUINO) && ARDUINO >= 100
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

typedef struct {
  unsigned long start_time;
  unsigned long p;
  byte q, last_q;
} timer_t;


#endif

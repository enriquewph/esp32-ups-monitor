#ifndef HEADER_H
#define HEADER_H

#include "define.h"

#include <WiFi.h>
#include <Arduino.h>

#include <secrets.h>
#include <ota.h>

#include "debug.h"
#include "statemachine.h"



extern uint16_t fan_duty; //used for pwm duty set & get functions.

#endif
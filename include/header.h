#ifndef HEADER_H
#define HEADER_H

#include <hw_define.h>

#include <WiFi.h>
#include <Arduino.h>

#include <secrets.h>
#include <ota.h>

#include "debug.h"
#include "statemachine.h"

//Incluir capa HAL
#include <hw_hal.h>



extern uint16_t fan_duty; //used for pwm duty set & get functions.

#endif
#ifndef HEADER_H
#define HEADER_H

#include "define.h"

#include <WiFi.h>
#include <Arduino.h>

#include <secrets.h>
#include <ota.h>

#include "debug.h"
#include "statemachine.h"

//Incluir capa HAL
#include "hal/cooling.h"
#include "hal/current.h"
#include "hal/relays.h"
#include "hal/temp.h"
#include "hal/ups.h"
#include "hal/voltage.h"



extern uint16_t fan_duty; //used for pwm duty set & get functions.

#endif
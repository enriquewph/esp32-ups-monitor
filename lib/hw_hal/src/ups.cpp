/**
 * @file ups.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Manejo de interfaz con el UPS
 * @version 0.1
 * @date 2021-06-01
 * 
 */

#include "ups.h"


void hal_ups_init()
{
    pinMode(PIN_UPS_OFF, OUTPUT);
    pinMode(PIN_UPS_NORMAL, INPUT);
    pinMode(PIN_UPS_CARGA, INPUT);
    pinMode(PIN_UPS_INVERTER, INPUT);
}

void hal_ups_set_on(bool set)
{
    digitalWrite(PIN_UPS_OFF, !set);
}

bool hal_ups_get_on()
{
    return !digitalRead(PIN_UPS_OFF);
}

bool hal_ups_get_carga()
{
    return !digitalRead(PIN_UPS_CARGA);
}

bool hal_ups_get_normal()
{
    return !digitalRead(PIN_UPS_NORMAL);
}

bool hal_ups_get_falla()
{
    return !digitalRead(PIN_UPS_INVERTER);
}
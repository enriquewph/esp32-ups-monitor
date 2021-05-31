/**
 * @file relays.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Contiene funciones para manejo, consulta e inicializacion de los relays.
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#include "relays.h"

void hal_relays_init()
{
    pinMode(PIN_RELAY_1, OUTPUT);
    pinMode(PIN_RELAY_2, OUTPUT);
    hal_relay_set(relay_t::RELAY_1, LOW);
    hal_relay_set(relay_t::RELAY_2, LOW);
}

void hal_relay_set(relay_t r, bool set)
{
    digitalWrite((r == relay_t::RELAY_1) ? PIN_RELAY_1 : PIN_RELAY_2, set);
}

bool hal_relay_get(relay_t r)
{
    return digitalRead((r == relay_t::RELAY_1) ? PIN_RELAY_1 : PIN_RELAY_2);
}
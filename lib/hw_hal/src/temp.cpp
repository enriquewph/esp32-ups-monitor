#include "temp.h"

void temp_init()
{
    pinMode(PIN_TBAT, INPUT);
}

uint16_t temp_get_reading()
{
    uint32_t prom = 0;
    for (uint_fast8_t i = 0; i < PROM_READING; i++)
        prom += analogRead(PIN_TBAT);

    return (prom / PROM_READING);
}

float temp_reading_to_degrees(uint16_t reading)
{
    return LM35READMACRO(reading);
}

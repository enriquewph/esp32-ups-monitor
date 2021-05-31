/**
 * @file temp.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Funciones para leer sensores de temperatura y convertir mediciones.
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#include "temp.h"

void hal_temp_init()
{
    adc1_config_channel_atten(PIN_TBAT_ADC_CH, ADC_ATTEN_DB_0);
}

uint16_t hal_temp_get_reading()
{
    return hal_adc_get(PIN_TBAT_ADC_CH);
}

float hal_temp_reading_to_degrees(uint16_t reading)
{
    return LM35_READ(reading);
}

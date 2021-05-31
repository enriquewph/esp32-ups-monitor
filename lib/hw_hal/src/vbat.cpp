/**
 * @file vbat.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief 
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#include "vbat.h"


void hal_vbat_init()
{
    adc1_config_channel_atten(PIN_VBAT_ADC_CH, ADC_ATTEN_DB_11);
}

uint16_t hal_vbat_get_reading()
{
    return hal_adc_get(PIN_VBAT_ADC_CH);
}

float hal_vbat_reading_to_mv(uint16_t reading)
{
    return VBAT_READ(reading);
}
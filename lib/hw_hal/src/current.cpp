/**
 * @file current.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief 
 * @version 0.1
 * @date 2021-06-01
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#include "current.h"


void hal_current_init()
{
    adc1_config_channel_atten(PIN_IBAT_ADC_CH, ADC_ATTEN_DB_11);
}

uint16_t hal_current_get_reading()
{
    return hal_adc_get(PIN_IBAT_ADC_CH);
}

float hal_current_reading_to_amp(uint16_t reading)
{
    return CURRENT_READ(reading);
}
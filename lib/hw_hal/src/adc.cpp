/**
 * @file adc.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Funciones para inicializar y leer el ADC
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#include "adc.h"

void hal_adc_init()
{
    adc1_config_width(ADC_WIDTH_BIT_12);
}

uint16_t hal_adc_get(adc1_channel_t ch)
{
    uint64_t prom = 0;
    for (int i = 0; i < HAL_ADC_PROM_READING; i++)
        prom += adc1_get_raw(ch);

    return (prom / HAL_ADC_PROM_READING);
}
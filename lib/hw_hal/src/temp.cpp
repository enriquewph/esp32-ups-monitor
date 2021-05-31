#include "temp.h"

void hal_temp_init()
{
    adc1_config_channel_atten(PIN_TBAT_ADC_CH, ADC_ATTEN_DB_0);
}

uint16_t temp_get_reading()
{
    return hal_adc_get(PIN_TBAT_ADC_CH);
}

float temp_reading_to_degrees(uint16_t reading)
{
    return LM35_READ(reading);
}

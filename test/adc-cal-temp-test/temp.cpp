#include <Arduino.h>
#include <unity.h>
#include <hw_hal.h>

void setup()
{
    hal_init();
    Serial.begin(115200);

    float real, temp;
    uint16_t reading;

    Serial.printf("real;reading;adc_read");
    while (1)
    {
        reading = hal_temp_get_reading();
        real = ADC_GET_MV_0dB(reading);
        temp = hal_temp_reading_to_degrees(reading);
        Serial.printf("%.3f mV - %.1f *C [%04u]\n", real, temp, reading);
        delay(1000);
    }
    
}

void loop()
{

}
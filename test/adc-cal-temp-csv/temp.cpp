#include <Arduino.h>
#include <unity.h>
#include <hw_hal.h>

void setup()
{
    hal_init();
    Serial.begin(115200);

    float real, read;
    uint16_t reading;

    Serial.printf("real;reading;adc_read");
    while (1)
    {
        while (!Serial.available());
        real = Serial.readStringUntil('\n').toFloat();
        reading = temp_get_reading();
        read = ADC_GET_MV_0dB(reading);
        Serial.printf("%3.6f;%3.6f;%u\n", real, read, reading);
    }
    
}

void loop()
{

}
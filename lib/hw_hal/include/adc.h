#ifndef HALADC_H
#define HALADC_H

#include <Arduino.h>
#include <driver/adc.h>
#include <hw_define.h>

#define VCC_MV 3300.0f
#define ADC_RES 4096
#define CORRECCION_PORCENTUAL 1.0f
#define OFFSET 151.18f
#define HAL_ADC_PROM_READING 256

//Valores para 0dB
#define VCC_MV_0dB 1100.0f
#define OFFSET_0dB 62.66f
#define CORRECCION_PORCENTUAL_0dB 1.0f

/**
 * @brief Inicializar adc del dispositivo.
 * 
 */
void hal_adc_init();

/**
 * @brief Ejecuta HAL_ADC_PROM_READING lecturas y devuelve el promedio.
 * 
 * @param ch canal del adc a utilizar
 * @return uint16_t lectura
 */
uint16_t hal_adc_get(adc1_channel_t ch);

/**
 * @brief Macro para convertir lectura de ADC en milivoltios.
 * 
 */
#define ADC_GET_MV(reading) (float) (CORRECCION_PORCENTUAL * ((float) reading + OFFSET) * VCC_MV) / (ADC_RES)

/**
 * @brief Macro para convertir milivoltios en la lectura del ADC requerida.
 * 
 */
#define ADC_GET_MV_REV(mV) (uint16_t) ((mV) * ((ADC_RES) / (CORRECCION_PORCENTUAL * VCC_MV)) - OFFSET)

/**
 * @brief Macro para convertir lectura de ADC en milivoltios. USAR CON ATENUACION DE 0dB
 * 
 */
#define ADC_GET_MV_0dB(reading) (float) (CORRECCION_PORCENTUAL_0dB * ((float) reading + OFFSET_0dB) * VCC_MV_0dB) / (ADC_RES)

/**
 * @brief Macro para convertir milivoltios en la lectura del ADC requerida. USAR CON ATENUACION DE 0dB
 * 
 */
#define ADC_GET_MV_REV_0dB(mV) (uint16_t) ((mV) * ((ADC_RES) / (CORRECCION_PORCENTUAL_0dB * VCC_MV_0dB)) - OFFSET_0dB)


#endif
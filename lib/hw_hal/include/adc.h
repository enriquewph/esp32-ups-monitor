/**
 * @file adc.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Macros, definiciones y valores de calibracion para el uso del ADC.
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#ifndef HALADC_H
#define HALADC_H

#include <Arduino.h>
#include <driver/adc.h>
#include <hw_define.h>

/**
 * @brief Voltaje de referencia para macros de conversion del ADC.
 * 
 */
#define HAL_ADC_VCC_MV 3300.0f

/**
 * @brief Resolucion de 12 bits, indica 4096 divisiones.
 * 
 */
#define HAL_ADC_RES 4096

/**
 * @brief Correccion porcentual para ajustar el ADC.
 * 
 */
#define HAL_ADC_CORRECCION_PORCENTUAL 1.0f

/**
 * @brief Offset para ajustar el ADC.
 * 
 */
#define HAL_ADC_OFFSET 151.18f

/**
 * @brief Numero de lecturas a realizar y promediar
 * 
 */
#define HAL_ADC_PROM_READING 256

/**
 * @brief Voltaje de referencia para macros de conversion del ADC al usar atenuacion de 0dB.
 * 
 */
#define HAL_ADC_VCC_MV_0dB 1100.0f

/**
 * @brief Offset para ajustar el ADC al usar atenuacion de 0dB.
 * 
 */
#define HAL_ADC_OFFSET_0dB 82.66f

/**
 * @brief Correccion porcentual para ajustar el ADC al usar atenuacion de 0dB.
 * 
 */
#define HAL_ADC_CORRECCION_PORCENTUAL_0dB 1.0f

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
#define ADC_GET_MV(reading) (float) (HAL_ADC_CORRECCION_PORCENTUAL * ((float) reading + HAL_ADC_OFFSET) * HAL_ADC_VCC_MV) / (HAL_ADC_RES)

/**
 * @brief Macro para convertir milivoltios en la lectura del ADC requerida.
 * 
 */
#define ADC_GET_MV_REV(mV) (uint16_t) ((mV) * ((HAL_ADC_RES) / (HAL_ADC_CORRECCION_PORCENTUAL * VCC_MV)) - HAL_ADC_OFFSET)

/**
 * @brief Macro para convertir lectura de ADC en milivoltios. USAR CON ATENUACION DE 0dB
 * 
 */
#define ADC_GET_MV_0dB(reading) (float) (HAL_ADC_CORRECCION_PORCENTUAL_0dB * ((float) reading + HAL_ADC_OFFSET_0dB) * HAL_ADC_VCC_MV_0dB) / (HAL_ADC_RES)

/**
 * @brief Macro para convertir milivoltios en la lectura del ADC requerida. USAR CON ATENUACION DE 0dB
 * 
 */
#define ADC_GET_MV_REV_0dB(mV) (uint16_t) ((mV) * ((HAL_ADC_RES) / (HAL_ADC_CORRECCION_PORCENTUAL_0dB * HAL_ADC_VCC_MV_0dB)) - HAL_ADC_OFFSET_0dB)


#endif
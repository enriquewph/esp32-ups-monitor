/**
 * @file current.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Interfaz para leer la corriente que circula desde y hacia la bateria.
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#ifndef CURRENT_H
#define CURRENT_H

#include <Arduino.h>
#include <hw_define.h>
#include "adc.h"

/**
 * @brief Amperaje maximo que mide el sensor.
 * 
 */
#define HAL_CURRENT_ACS712_RATING 30 

/**
 * @brief Usar -1 si la corriente marca al reves.
 * 
 */
#define HAL_CURRENT_ACS712_POLARITY 1

/**
 * @brief Inicializa lo necesario para el sensor de corriente de la bateria.
 * 
 */
void hal_current_init();

/**
 * @brief Usa el adc y devuelve la lectura de la corriente de la bateria.
 * 
 * @return uint16_t lectura del adc. 0-4095 (12bits)
 */
uint16_t hal_current_get_reading();

/**
 * @brief Convierte una lectura de adc en amperes.
 * valores negativos -> la corriente SALE de la bateria.
 * valores positivos -> la corriente ENTRA a la bateria.
 * @param reading lectura a convertir.
 * @return float A - amper
 */
float hal_current_reading_to_amp(uint16_t reading);

/**
 * @brief Macro para convertir lectura de ADC en la corriente de la bateria
 * 
 */
#define CURRENT_READ(reading) (float) ((ADC_GET_MV(reading) * HAL_CURRENT_ACS712_RATING * HAL_CURRENT_ACS712_POLARITY)/( 2 * HAL_ADC_VCC_MV ))


#endif
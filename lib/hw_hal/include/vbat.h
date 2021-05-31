/**
 * @file vbat.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Interfaz para leer el voltaje de la bateria
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#ifndef VBAT_H
#define VBAT_H

#include <Arduino.h>
#include <hw_define.h>
#include "adc.h"

/**
 * @brief Resistencia R1 del divisor resistivo
 * 
 */
#define HAL_VBAT_R_HIGH 22.0f //!< 22 KOhm

/**
 * @brief Resistencia R2 del divisor resistivo
 * 
 */
#define HAL_VBAT_R_LOW 5.54f  //!< 5.54 KOhm

/**
 * @brief Inicializa lo necesario para el sensor de voltaje de bateria.
 * 
 */
void hal_vbat_init();

/**
 * @brief Usa el adc y devuelve la lectura del voltaje de bateria.
 * 
 * @return uint16_t lectura del adc. 0-4095 (12bits)
 */
uint16_t hal_vbat_get_reading();

/**
 * @brief Convierte una lectura de adc en milivoltios
 * 
 * @param reading lectura a convertir.
 * @return float mV - milivoltios
 */
float hal_vbat_reading_to_mv(uint16_t reading);

/**
 * @brief Macro para obtener relacion de Vout/Vin del divisor resistivo.
 * 
 */
#define HAL_VBAT_R_MULTIPLIER (HAL_VBAT_R_LOW / (HAL_VBAT_R_HIGH + HAL_VBAT_R_LOW))

/**
 * @brief Macro para convertir lectura de ADC en milivoltios de la bateria
 * 
 */
#define VBAT_READ(reading) (float) ((ADC_GET_MV(reading))/( HAL_VBAT_R_MULTIPLIER ))

/**
 * @brief Macro para convertir milivoltios de la bateria (float) en aprox. la lectura del ADC requerida.
 */
#define VBAT_READ_REV(vbat) ADC_GET_MV_REV((vbat * HAL_VBAT_R_MULTIPLIER))


#endif
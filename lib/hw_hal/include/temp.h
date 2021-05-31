#ifndef TEMP_H
#define TEMP_H

#include <Arduino.h>
#include <hw_define.h>
#include "adc.h"

/**
 * @brief LM-35, la salida representa 1ºC cada 10mV
 * 
 */
#define MV_PER_DEGREE 10.0f

/**
 * @brief Inicializa lo necesario para usar el sensor de temperatura.
 * 
 */
void hal_temp_init();

/**
 * @brief Usa el adc y devuelve la lectura del sensor de temperatura.
 * 
 * @return uint16_t lectura del adc. 0-4095 (12bits)
 */
uint16_t temp_get_reading();

/**
 * @brief Convierte una lectura del ADC en grados centigrados.
 * 
 * @param reading Lectura a convertir
 * @return float Grados centigrados
 */
float temp_reading_to_degrees(uint16_t reading);

/**
 * @brief Macro para convertir lectura de ADC en grados centigrados (float).
 * 
 */
#define LM35_READ(reading) (float) ((ADC_GET_MV_0dB(reading))/( MV_PER_DEGREE ))

/**
 * @brief Macro para convertir grados centigrados (float) en aprox. la lectura del ADC requerida.
 * Esto es util para comparar temperaturas mas efectivamente.
 */
#define LM35_READ_REV(temp) ADC_GET_MV_REV_0dB((temp * MV_PER_DEGREE))


#endif
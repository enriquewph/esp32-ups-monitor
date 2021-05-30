#ifndef TEMP_H
#define TEMP_H

#include <Arduino.h>
#include <hw_define.h>


#define VCC_MV 3300.0
#define ADC_RES 4096
#define MV_PER_DEGREE 10.0
#define CORRECCION_PORCENTUAL 1.0
#define OFFSET 0.0
#define PROM_READING 5

// TODO: Ajustar por atenuacion.

/**
 * @brief Inicializa lo necesario para usar el sensor de temperatura.
 * 
 */
void temp_init();

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
#define LM35READMACRO(reading) (float) OFFSET + (CORRECCION_PORCENTUAL * (float) reading * VCC_MV) / (ADC_RES * MV_PER_DEGREE)

/**
 * @brief Macro para convertir grados centigrados (float) en aprox. la lectura del ADC requerida.
 * 
 */
#define LM35READREVERSEMACRO(temp) (temp - OFFSET) * ((MV_PER_DEGREE * ADC_RES) / (CORRECCION_PORCENTUAL * VCC_MV))

#endif
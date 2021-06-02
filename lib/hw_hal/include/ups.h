/**
 * @file ups.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Interfaz para levantar estados y encender/apagar el UPS.
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#ifndef UPS_H
#define UPS_H

#include <Arduino.h>
#include <hw_define.h>

/* TODO: Hacer que hal_ups_get_falla() considere cuando parpadea el led... */

/**
 * @brief Inicializar capa HAl para manejo de UPS.
 * 
 */
void hal_ups_init();

/**
 * @brief Encender / apagar el UPS (y todas las salidas)
 * 
 * @param set Estado ( ENCENDIDO: HIGH[1] / APAGADO: LOW[0] )
 */
void hal_ups_set_on(bool set);

/**
 * @brief Retorna si se activo el encendido del UPS (no quiere decir que este encendido.)
 * 
 * @return true Encendido
 * @return false Apagado
 */
bool hal_ups_get_on();

/**
 * @brief Retorna si el UPS encendio el led de estado NORMAL.
 * 
 * @return true Encendido
 * @return false Apagado
 */
bool hal_ups_get_normal();

/**
 * @brief Retorna si el UPS encendio el led de carga de bateria.
 * 
 * @return true Encendido
 * @return false Apagado
 */
bool hal_ups_get_carga();

/**
 * @brief Retorna si el UPS encendio el led de FALLA.
 * 
 * @return true Encendido
 * @return false Apagado
 */
bool hal_ups_get_falla();

#endif
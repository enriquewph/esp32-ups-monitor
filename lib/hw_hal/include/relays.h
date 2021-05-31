/**
 * @file relays.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Archivo header para cosas vinculadas al manejo de relays.
 * @version 0.1
 * @date 2021-05-31
 * 
 */
#ifndef RELAYS_H
#define RELAYS_H

#include <Arduino.h>
#include <hw_define.h>

/**
 * @brief Relay a utilizar 
 * 
 */
typedef enum
{
    RELAY_1, //!< Conectado a PIN_RELAY_1 (GPIO13)
    RELAY_2  //!< Conectado a PIN_RELAY_2 (GPIO27)
} relay_t;

/**
 * @brief Inicializar capa HAl para manejo de relays.
 * 
 */
void hal_relays_init();

/**
 * @brief Cambiar el estado de un relay
 * 
 * @param r Relay a utilizar
 * @param set Estado ( HIGH[1] / LOW[0] )
 */
void hal_relay_set(relay_t r, bool set);

/**
 * @brief Devuelve el estado de un relay
 * 
 * @param r Relay a consultar
 * @return true Encendido
 * @return false Apagado
 */
bool hal_relay_get(relay_t r);


#endif
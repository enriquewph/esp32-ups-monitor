/**
 * @file cooling.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Archivo header para todo lo relacionado al manejo de coolers.
 * @version 0.1
 * @date 2021-05-31
 * 
 * 
 */

#ifndef COOLING_H
#define COOLING_H

#include <Arduino.h>
#include <hw_define.h>

/**
 * @brief Modo de funcionamiento del cooler.
 * 
 */
enum fan_mode_e
{
    FANMODE_PWM,    //!< Funciona con PWM.
    FANMODE_ONOFF   //!< Solo lo encendemos y apagamos. Se enciende si el duty_cycle > 0.
};

/**
 * @brief Modo de funcionamiento del cooler por defecto al iniciar el programa.
 * 
 */
#define HAL_COOLING_DEFAULT_FANMODE FANMODE_PWM


//PWM Setup

/**
 * @brief Canal de ADC a utilizar.
 * 
 */
#define FAN_PWM_CH 0

/**
 * @brief Frecuencia del pwm, en Hz.
 * 
 */
#define FAN_PWM_FR 30

/**
 * @brief Resolucion del pwm, en bits.
 * 
 */
#define FAN_PWM_RS 8

/**
 * @brief Inicializar pwm para el cooler.
 * 
 */
void            hal_cooling_init();

/**
 * @brief Cambiar el duty cycle del cooler.
 * 
 * @param pwm Duty cycle (0 - 255).
 */
void            hal_cooling_set_fan_pwm(uint8_t pwm);

/**
 * @brief Retorna el duty cycle del cooler.
 * 
 * @return uint8_t duty cycle (0 - 255).
 */
uint8_t         hal_cooling_get_fan_pwm();

/**
 * @brief Retorna el estado del cooler.
 * 
 * @return true -> Esta encendido.
 * @return false -> Esta apagado.
 */
bool            hal_cooling_fan_get_state();

/**
 * @brief Retorna un string que contiene ON/OFF o 0%-100% segun el modo de funcionamiento.
 * 
 * @return const char * Puntero a cadena de texto que devuelve la funcion.
 */
const char *    hal_cooling_fan_get_state_str();

/**
 * @brief Cambiar el modo de funcionamiento del cooler.
 * 
 * @param mode puede ser: FANMODE_PWM o FANMODE_ONOFF
 */
void            hal_cooling_set_fan_mode(fan_mode_e mode);

/**
 * @brief Retorna el modo de funcionamiento del cooler.
 * 
 * @return fan_mode_e puede ser: FANMODE_PWM o FANMODE_ONOFF
 */
fan_mode_e      hal_cooling_get_fan_mode();

/**
 * @brief Almacena el modo del cooler.
 * 
 */
extern fan_mode_e _cooling_fan_mode;

/**
 * @brief Almacena el duty cycle de funcionamiento del cooler.
 * 
 */
extern uint8_t _cooling_fan_pwm;

#endif
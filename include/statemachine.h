/**
 * @file statemachine.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Maquina de estados principal del sistema
 * @version 0.1
 * @date 2021-05-28
 * 
 * Estados de ejecucion automatica:
 * - STANDBY
 * - CARGANDO
 * - DESCARGANDO
 *   - AUTO
 *      - L1
 *      - L2
 * - BATTERYLOW
 * 
 * Estados de ejecucion manual:
 * - DESCARGANDO
 *   - MANUAL_*
 *      - L1
 *      - L2
 * - APAGADO
 * 
 * -> NOTA: al completar la descarga segun lo programado al ingresar a modo descarga manual, se pasara al estado APAGADO o STANDBY <-
 */


#ifndef STATEMACHINE_H
#define STATEMACHINE_H

#include <Arduino.h>

/**
 * @brief Estados posibles del sistema
 * 
 */
typedef enum 
{
    STANDBY,        //!< El sistema funciona normalmente, la energia proviene de la red.
    CARGANDO,       //!< El sistema funciona normalmente, la energia proviene de la red. Se carga la bateria.
    DESCARGANDO,    //!< La energia proviene de la bateria.
    BATTERYLOW      //!< Todas las salidas se han apagado. No hay bateria restante para restaurar la energia electrica.
} sysState_t;
extern sysState_t sysState;

/**
 * @brief Modo de descarga del sistema
 * 
 */
typedef enum
{
    AUTO,           //!< El suministro electrico no funciona. Se entro automaticamente a este estado por el UPS.
    MANUAl          //!< El suministro electrico funciona correctamente, pero se descargara hasta acabar por activacion manual, luego se pasara a modo automatico.
} sysDischargeMode_t;
extern sysDischargeMode_t sysDischargeMode;

/**
 * @brief Sub estados cuando se encuentra en DESCARGANDO-X
 * 
 */
typedef enum
{
    L1,             //!< Todas las salidas estan encendidas.
    L2              //!< Se apago la salida secundaria para ahorrar energia. Le da prioridad a la salida principal.
} sysDischargeState_t;
extern sysDischargeState_t sysDischargeState;

/**
 * @brief Ejecuta cada estado, y cambia de estado si pasa los requisitos.
 * 
 */
void stateMachine_yield();

//Funciones de estados

/**
 * @brief El sistema funciona normalmente, la energia proviene de la red.
 * 
 */
void state_standby();

/**
 * @brief El sistema funciona normalmente, la energia proviene de la red. Se carga la bateria.
 * 
 */
void state_cargando();

/**
 * @brief La energia proviene de la bateria.
 * 
 * @param trigger De que manera se ingreso al estado.
 * @param sub Subestado de descarga
 */
void state_descargando(sysDischargeMode_t trigger, sysDischargeState_t sub);

/**
 * @brief Todas las salidas se han apagado. No hay bateria restante para restaurar la energia electrica.
 * 
 */
void state_batterylow();


#endif
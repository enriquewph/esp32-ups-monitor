/**
 * @file statemachine.h
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Maquina de estados principal del sistema
 * @version 0.1
 * @date 2021-05-28
 * 
 * Esquema general de estados
 * 
 * - STANDBY        -> El sistema funciona normalmente, la energia proviene de la red.
 * - CARGANDO       -> El sistema funciona normalmente, la energia proviene de la red. Se esta cargando la bateria.
 * - DESCARGANDO    -> La energia proviene de la bateria.
 *   - MANUAL       -> El suministro electrico funciona correctamente, pero se descargara hasta acabar por activacion manual.
 *      - L1        -> Todas las salidas estan encendidas.
 *      - L2        -> Se apago la salida secundaria para ahorrar energia. Le da prioridad a la salida principal.
 *   - AUTO         -> El suministro electrico no funciona. Se entro automaticamente a este estado por el UPS.
 *      - L1        -> Todas las salidas estan encendidas.
 *      - L2        -> Se apago la salida secundaria para ahorrar energia. Le da prioridad a la salida principal.
 * - BATTERYLOW     -> Todas las salidas se han apagado. No hay bateria restante para restaurar la energia electrica.
 * - APAGADO        -> Todas las salidas se han apagado de forma manual. No se saldra de este estado hasta cumplir un criterio.
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
 *   - MANUAL
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
    STANDBY,
    CARGANDO,
    DESCARGANDO,
    BATTERYLOW,
    APAGADO
} sysState_t;
extern sysState_t sysState;

/**
 * @brief Sub estados cuando se encuentra en DESCARGANDO
 * 
 */
typedef enum
{
    MANUAL,
    AUTO
} sysDischargeState_t;
extern sysDischargeState_t sysDischargeState;

/**
 * @brief Sub-sub estados cuando se encuentra en DESCARGANDO-X
 * 
 */
typedef enum
{
    L1,
    L2
} sysSubDischargeState_t;
extern sysSubDischargeState_t sysSubDischargeState;

//Funcion ejecutora
void stateMachine_yield();

//Funciones de estados
void state_standby();
void state_cargando();
void state_descargando(sysDischargeState_t sub1, sysSubDischargeState_t sub2);
void state_batterylow();
void state_apagado();


#endif
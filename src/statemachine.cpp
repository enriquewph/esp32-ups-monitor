#include "header.h"

sysState_t sysState = STANDBY;
sysDischargeMode_t sysDischargeMode = AUTO;
sysDischargeState_t sysDischargeState = L1;

// TODO: Llamar funciones de cambio de estado.
void stateMachine_yield()
{
    switch (sysState)
    {
    case sysState_t::STANDBY:
        state_standby();
        /* Cambios de estado:
         * -> CARGANDO:         Se encendio la entrada UPS_CARGA.
         * -> DESCARGANDO(L1):  Se apago la entrada UPS_NORMAL.
         */

        break;
    case sysState_t::CARGANDO:
        state_cargando();
        /* Cambios de estado:
         * -> STANDBY:          Se apago la entrada UPS_CARGA.
         * -> DESCARGANDO(L1):  Se apago la entrada UPS_NORMAL.
         */
        
        break;
    case sysState_t::DESCARGANDO:
        switch (sysDischargeState)
        {
        case sysDischargeState_t::L1:
            state_descargando(sysDischargeMode, sysDischargeState_t::L1);
            /* Cambios de estado:
             * IF (AUTO): -> STANDBY:   Se encendio alguna de las entradas UPS_CARGA/UPS_NORMAL.
             * -> (sub) L2:             Se alcanzo el nivel de carga critico.
             * -> BATTERYLOW:           Se acabo por completo la bateria.
             */

            break;
        case sysDischargeState_t::L2:
            state_descargando(sysDischargeMode, sysDischargeState_t::L2);
            /* Cambios de estado:
             * IF (AUTO): -> STANDBY:   Se encendio alguna de las entradas UPS_CARGA/UPS_NORMAL.
             * -> BATTERYLOW:           Se acabo por completo la bateria.
             */

            break;
        }
        break;
    case sysState_t::BATTERYLOW:
        state_batterylow();
        /* Cambios de estado:
         * -> STANDBY:          Se encendio alguna de las entradas UPS_CARGA/UPS_NORMAL.
         */

        break;
    }
}
#include "statemachine.h"

sysState_t sysState = STANDBY;
sysDischargeState_t sysDischargeState = AUTO;
sysSubDischargeState_t sysSubDischargeState = L1;


// TODO: Llamar funciones de cambio de estado.
void stateMachine_yield()
{
    switch (sysState)
    {
    case sysState_t::STANDBY:
        state_standby();
        break;
    case sysState_t::CARGANDO:
        state_cargando();
        break;
    case sysState_t::DESCARGANDO:
        switch (sysDischargeState)
        {
        case sysDischargeState_t::MANUAL:
            switch (sysSubDischargeState)
            {
            case sysSubDischargeState_t::L1:
                state_descargando(sysDischargeState_t::MANUAL, sysSubDischargeState_t::L1);
                break;
            case sysSubDischargeState_t::L2:
                state_descargando(sysDischargeState_t::MANUAL, sysSubDischargeState_t::L2);
                break;
            }
            break;
        case sysDischargeState_t::AUTO:
            switch (sysSubDischargeState)
            {
            case sysSubDischargeState_t::L1:
                state_descargando(sysDischargeState_t::AUTO, sysSubDischargeState_t::L1);
                break;
            case sysSubDischargeState_t::L2:
                state_descargando(sysDischargeState_t::AUTO, sysSubDischargeState_t::L2);
                break;
            }
            break;
        }
        break;
    case sysState_t::BATTERYLOW:
        state_batterylow();
        break;
    case sysState_t::APAGADO:
        state_apagado();
        break;
    }
}
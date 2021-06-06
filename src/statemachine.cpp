#include "header.h"

const char *sysState_t_c_str[] = sysState_t_c_str_values;
const char *sysDischargeMode_t_c_str[] = sysDischargeMode_t_c_str_values;
const char *sysDischargeState_t_c_str[] = sysDischargeState_t_c_str_values;

sysState_t sysState = STANDBY;
sysDischargeMode_t sysDischargeMode = AUTO;
sysDischargeState_t sysDischargeState = L1;

// TODO: Llamar funciones de cambio de estado.
void stateMachine_yield()
{
    static bool ups_normal_old = 0;
    static bool ups_carga_old = 0;
    //static bool ups_falla_old = 0; /* Not used for now. */
    switch (sysState)
    {
    case sysState_t::STANDBY:
        state_standby();
        /* Cambios de estado:
         * -> CARGANDO:         Se encendio la entrada UPS_CARGA.
         * -> DESCARGANDO(L1):  Se apago la entrada UPS_NORMAL.
         */

        if (ups_carga_old != hal_ups_get_carga())
        {
            ups_carga_old = hal_ups_get_carga();
            if (ups_carga_old) //flanco de subida: se encendio.
            {
                setSysState(sysState_t::CARGANDO);
            }
        }

        if (ups_normal_old != hal_ups_get_normal())
        {
            ups_normal_old = hal_ups_get_normal();
            if (!ups_normal_old) //flanco de bajada: se apago.
            {
                setSysState(sysState_t::DESCARGANDO);
                setDischargeState(sysDischargeState_t::L1);
            }
        }
        break;
    case sysState_t::CARGANDO:
        state_cargando();
        /* Cambios de estado:
         * -> STANDBY:          Se apago la entrada UPS_CARGA.
         * -> DESCARGANDO(L1):  Se apago la entrada UPS_NORMAL.
         */

        if (ups_carga_old != hal_ups_get_carga())
        {
            ups_carga_old = hal_ups_get_carga();
            if (!ups_carga_old) //flanco de bajada: se apago.
            {
                setSysState(sysState_t::STANDBY);
            }
        }

        if (ups_normal_old != hal_ups_get_normal())
        {
            ups_normal_old = hal_ups_get_normal();
            if (!ups_normal_old) //flanco de bajada: se apago.
            {
                setSysState(sysState_t::DESCARGANDO);
                setDischargeState(sysDischargeState_t::L1);
            }
        }
        break;
    case sysState_t::DESCARGANDO:
        /* Cambios de estado:
         * IF (AUTO): -> STANDBY:   Se encendio UPS_NORMAL.
         * -> BATTERYLOW:           Se acabo por completo la bateria.
         */

        switch (sysDischargeState)
        {
        case sysDischargeState_t::L1:
            state_descargando(sysDischargeMode, sysDischargeState_t::L1);
            /* Cambios de estado:
             * -> (sub) L2:             Se alcanzo el nivel de carga critico.
             */

            if (/*condicion low batt*/ 0)
            {
                setDischargeState(sysDischargeState_t::L2);
            }
            break;
        case sysDischargeState_t::L2:
            state_descargando(sysDischargeMode, sysDischargeState_t::L2);

            break;
        }
        if (sysDischargeMode == sysDischargeMode_t::AUTO)
        {
            if (ups_normal_old != hal_ups_get_normal())
            {
                ups_normal_old = hal_ups_get_normal();
                if (ups_normal_old) //flanco de subida: se encendio.
                {
                    setSysState(sysState_t::STANDBY);
                }
            }
        }
        if (/*condicion depleted batt*/ 0)
        {
            setSysState(sysState_t::BATTERYLOW);
        }
        break;
    case sysState_t::BATTERYLOW:
        state_batterylow();
        /* Cambios de estado:
         * -> STANDBY:          Se encendio UPS_NORMAL.
         */

        if (ups_normal_old != hal_ups_get_normal())
        {
            ups_normal_old = hal_ups_get_normal();
            if (ups_normal_old) //flanco de subida: se encendio.
            {
                setSysState(sysState_t::STANDBY);
            }
        }
        break;
    }
}

void setSysState(sysState_t target)
{
    Serial.printf("SET sysState: %s\n", sysState_t_c_str[(uint8_t) target]);
    DEBUG_TCP_OUT.printf("SET sysState: %s\n", sysState_t_c_str[(uint8_t) target]);
    sysState = target;
}

void setDischargeState(sysDischargeState_t target)
{
    Serial.printf("SET sysDischargeState: %s\n", sysDischargeState_t_c_str[(uint8_t) target]);
    DEBUG_TCP_OUT.printf("SET sysDischargeState: %s\n", sysDischargeState_t_c_str[(uint8_t) target]);
    sysDischargeState = target;
}

void setDischargeMode(sysDischargeMode_t target)
{
    Serial.printf("SET sysDischargeMode: %s\n", sysDischargeMode_t_c_str[(uint8_t) target]);
    DEBUG_TCP_OUT.printf("SET sysDischargeMode: %s\n", sysDischargeMode_t_c_str[(uint8_t) target]);
    sysDischargeMode = target;
}
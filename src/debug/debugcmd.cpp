#include "header.h"
#include "debug.h"
#include <hw_hal.h>

cmd_t cmdList[] = {
    {"HELP", cmd_help, "Show help window.", strNone},
    {"RESET", cmd_reset, "Reset microcontroller.", strNone},
    {"SETRELAY1", cmd_setRelay1, "Set relay 1 output state", "<0,1> output level"},
    {"SETRELAY2", cmd_setRelay2, "Set relay 2 output state", "<0,1> output level"},
    {"GETRELAY1", cmd_getRelay1, "Get relay 1 output state", strNone},
    {"GETRELAY2", cmd_getRelay2, "Get relay 2 output state", strNone},
    {"SETFAN", cmd_setFan, "Set fan duty cycle", "<0-255> duty cycle %"},
    {"GETFAN", cmd_getFan, "Get fan duty cycle", strNone},
    {"SETUPSOFF", cmd_setUPSON, "Set UPS_ON state", "<0,1> output level"},
    {"GETUPSOFF", cmd_getUPSON, "Get UPS_ON state", strNone},
    {"GETUPSSTATE", cmd_getUPSSTATE, "Get all UPS led values", strNone}
};
uint16_t cmdList_len = sizeof(cmdList) / sizeof(cmdList[0]);


void cmd_setRelay1(Stream &StreamPort, char *param)
{
    int set = atoi(param);
    StreamPort.printf("relay - 1: %u\n", set);
    hal_relay_set(relay_t::RELAY_1, set);

}
void cmd_getRelay1(Stream &StreamPort, char *param)
{
    StreamPort.printf("relay - 1: %u\n", hal_relay_get(relay_t::RELAY_1));
}
void cmd_setRelay2(Stream &StreamPort, char *param)
{
    int set = atoi(param);
    StreamPort.printf("relay - 2: %u\n", set);
    hal_relay_set(relay_t::RELAY_2, set);
}
void cmd_getRelay2(Stream &StreamPort, char *param)
{
    StreamPort.printf("relay - 2: %u\n", hal_relay_get(relay_t::RELAY_2));
}

void cmd_setFan(Stream &StreamPort, char *param)
{
    uint16_t fan_duty = atoi(param);
    StreamPort.printf("fan: %u\n", fan_duty);
    hal_cooling_set_fan_pwm(fan_duty);
}
void cmd_getFan(Stream &StreamPort, char *param)
{
    StreamPort.printf("fan: %u\n", hal_cooling_get_fan_pwm());
}


void cmd_setUPSON(Stream &StreamPort, char *param)
{
    int set = atoi(param);
    StreamPort.printf("UPS_ON: %u\n", set);
    hal_ups_set_on(set);
}
void cmd_getUPSON(Stream &StreamPort, char *param)
{
    StreamPort.printf("UPS_ON: %u\n", hal_ups_get_on());
}

void cmd_getUPSSTATE(Stream &StreamPort, char *param)
{
    StreamPort.printf("      UPS_ON: %u\n", hal_ups_get_on());
    StreamPort.printf("  UPS_NORMAL: %u\n", hal_ups_get_normal()); //TODO: agregar estas lecturas a hal. Deben estar invertidas.
    StreamPort.printf("   UPS_CARGA: %u\n", hal_ups_get_carga());
    StreamPort.printf("UPS_INVERTER: %u\n", hal_ups_get_falla()); //Este pin prende y apaga cuando funciona a BAT.
}
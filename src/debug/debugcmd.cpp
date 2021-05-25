#include "header.h"
#include "debug.h"

cmd_t cmdList[] = {
    {"HELP", cmd_help, "Show help window.", strNone},
    {"RESET", cmd_reset, "Reset microcontroller.", strNone},
    {"SETRELAY1", cmd_setRelay1, "Set relay 1 output state", "<0,1> output level"},
    {"SETRELAY2", cmd_setRelay2, "Set relay 2 output state", "<0,1> output level"},
    {"GETRELAY1", cmd_getRelay1, "Get relay 1 output state", strNone},
    {"GETRELAY2", cmd_getRelay2, "Get relay 2 output state", strNone},
    {"SETFAN", cmd_setFan, "Set fan duty cycle", "<0-255> duty cycle %"},
    {"GETFAN", cmd_getFan, "Get fan duty cycle", strNone},
    {"SETUPSOFF", cmd_setUPSOFF, "Set UPS_OFF state", "<0,1> output level"},
    {"GETUPSOFF", cmd_getUPSOFF, "Get UPS_OFF state", strNone},
    {"GETUPSSTATE", cmd_getUPSSTATE, "Get all UPS led values", strNone}
};
uint16_t cmdList_len = sizeof(cmdList) / sizeof(cmdList[0]);


void cmd_setRelay1(Stream &StreamPort, char *param)
{
    int set = atoi(param);
    StreamPort.printf("relay - 1: %u\n", set);
    digitalWrite(PIN_RELAY_1, set);
}
void cmd_getRelay1(Stream &StreamPort, char *param)
{
    StreamPort.printf("relay - 1: %u\n", digitalRead(PIN_RELAY_1));
}
void cmd_setRelay2(Stream &StreamPort, char *param)
{
    int set = atoi(param);
    StreamPort.printf("relay - 2: %u\n", set);
    digitalWrite(PIN_RELAY_2, set);
}
void cmd_getRelay2(Stream &StreamPort, char *param)
{
    StreamPort.printf("relay - 2: %u\n", digitalRead(PIN_RELAY_2));
}

uint16_t fan_duty = 0; //used for pwm duty set & get functions.

void cmd_setFan(Stream &StreamPort, char *param)
{
    fan_duty = atoi(param);
    StreamPort.printf("fan: %u\n", fan_duty);
    ledcWrite(FAN_PWM_CH, fan_duty);
}
void cmd_getFan(Stream &StreamPort, char *param)
{
    StreamPort.printf("fan: %u\n", fan_duty);
}


void cmd_setUPSOFF(Stream &StreamPort, char *param)
{
    int set = atoi(param);
    StreamPort.printf("UPS_OFF: %u\n", set);
    digitalWrite(PIN_UPS_OFF, set);
}
void cmd_getUPSOFF(Stream &StreamPort, char *param)
{
    StreamPort.printf("UPS_OFF: %u\n", digitalRead(PIN_UPS_OFF));
}

void cmd_getUPSSTATE(Stream &StreamPort, char *param)
{
    StreamPort.printf("     UPS_OFF: %u\n", digitalRead(PIN_UPS_OFF));
    StreamPort.printf("  UPS_NORMAL: %u\n", !digitalRead(PIN_UPS_NORMAL)); //TODO: agregar estas lecturas a hal. Deben estar invertidas.
    StreamPort.printf("   UPS_CARGA: %u\n", !digitalRead(PIN_UPS_CARGA));
    StreamPort.printf("UPS_INVERTER: %u\n", !digitalRead(PIN_UPS_INVERTER)); //Este pin prende y apaga cuando funciona a BAT.
}
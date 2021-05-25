#include "header.h"
#include "debug.h"

cmd_t cmdList[] = {
    {"HELP", cmd_help, "Show help window.", strNone},
    {"RESET", cmd_reset, "Reset microcontroller.", strNone},
    {"SETRELAY1", cmd_setRelay1, "Set relay 1 output state", "<0,1> output level"},
    {"SETRELAY2", cmd_setRelay2, "Set relay 2 output state", "<0,1> output level"},
    {"GETRELAY1", cmd_getRelay1, "Get relay 1 output state", strNone},
    {"GETRELAY2", cmd_getRelay2, "Get relay 2 output state", strNone}
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
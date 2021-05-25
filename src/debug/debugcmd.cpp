#include "debug.h"

cmd_t cmdList[] = {
    {"HELP", cmd_help, "Show help window.", strNone},
    {"RESET", cmd_reset, "Reset microcontroller.", strNone}
};
uint16_t cmdList_len = sizeof(cmdList) / sizeof(cmdList[0]);


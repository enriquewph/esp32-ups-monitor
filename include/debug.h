#ifndef DEBUG_H
#define DEBUG_H

#include <Arduino.h>

#define DEBUG_ENABLE_TCP

typedef struct ov_s
{
    const char *name;
    void (*func_ptr)(Stream &, char *);
    const char *info;
    const char *param;
} cmd_t;

extern const char *strNone;
extern cmd_t cmdList[];


void debug_init();
void debug_yield();
void serialReceived(Stream &StreamPort);

//Comandos:
void cmd_reset(Stream &StreamPort, char *param);
void cmd_help(Stream &StreamPort, char *param);


#endif
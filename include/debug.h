#ifndef DEBUG_H
#define DEBUG_H

#include <Arduino.h>


#define DEBUG_GREETING "Ingrese --help para ver los comandos disponibles."

//Comentar para usar la funcionalidad TCP.
#define DEBUG_TCP_ENABLE
#define DEBUG_TCP_PORT 8000

typedef struct ov_s
{
    const char *name;
    void (*func_ptr)(Stream &, char *);
    const char *info;
    const char *param;
} cmd_t;

extern const char *strNone;
extern cmd_t cmdList[];
extern uint16_t cmdList_len;


void debug_init();
void debug_yield();
void debug_serial_received(Stream &StreamPort, String inputStr);

//debug tcp
#ifdef DEBUG_TCP_ENABLE
void debug_tcp_init();
#endif


//Comandos:
void cmd_reset(Stream &StreamPort, char *param);
void cmd_help(Stream &StreamPort, char *param);


void cmd_setRelay1(Stream &StreamPort, char *param);
void cmd_getRelay1(Stream &StreamPort, char *param);
void cmd_setRelay2(Stream &StreamPort, char *param);
void cmd_getRelay2(Stream &StreamPort, char *param);
void cmd_setFan(Stream &StreamPort, char *param);
void cmd_getFan(Stream &StreamPort, char *param);
void cmd_setUPSON(Stream &StreamPort, char *param);
void cmd_getUPSON(Stream &StreamPort, char *param);
void cmd_getUPSSTATE(Stream &StreamPort, char *param);


#endif
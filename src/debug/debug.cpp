#include "debug.h"
#include <StreamUtils.h>

const char *strNone = "none";

void debug_init()
{
#ifdef DEBUG_TCP_ENABLE
    debug_tcp_init();
    Serial.printf("[DEBUG] Modulo debug habilitado por puerto TCP (%u)\n", DEBUG_TCP_PORT);
#endif
    Serial.println(F("[DEBUG] Modulo debug habilitado por este canal."));
    Serial.println(DEBUG_GREETING);
}

void debug_yield()
{
    /* Atender los comandos de debug. */
    if (Serial.available())
        debug_serial_received(Serial, Serial.readStringUntil('\n'));
}

void debug_serial_received(Stream &StreamPort, String inputStr)
{
    bool noCMD = true;                                    //Si se pone en 0, se interpreto correctamente un comando.
    char *strPointer = (char *)malloc(inputStr.length()); //Reservar un espacio en memoria HEAP para almacenar texto

    WriteBufferingStream bufferedStream{StreamPort, 64};

    if (inputStr.charAt(0) == '-' && inputStr.charAt(1) == '-') //Si la inicializacion del comando es correcta.
    {
        for (uint16_t i = 0; i < cmdList_len; i++) //Ciclar por toda la lista de comandos
        {
            String cmdstring = inputStr.substring(2, (2 + strlen(cmdList[i].name)));
            cmdstring.toUpperCase();

            strcpy(strPointer, cmdstring.c_str()); //Copiar comando desde el caracter luego de "--".

            cmdstring = ""; //desalocar de memoria.

            if (strcmp(strPointer, cmdList[i].name) == 0)
            {
                noCMD = false;
                //Copiar str del parametro a la memoria reservada previamente
                strcpy(strPointer, inputStr.substring(3 + strlen(cmdList[i].name), inputStr.length() - 1).c_str());
                //ejectuar la funcion:
                cmdList[i].func_ptr(bufferedStream, strPointer);
            }
        }
    }

    if (noCMD)
    {
        bufferedStream.println(F("Comando desconocido. Escribe \"--help\" para ver la ayuda"));
    }
    
    free(strPointer);
    bufferedStream.flush();
}


void cmd_reset(Stream &StreamPort, char *param)
{
    StreamPort.println(F("Reseting device..."));
    StreamPort.flush();
    delay(500);
    ESP.restart();
}
void cmd_help(Stream &StreamPort, char *param)
{
    uint16_t longestCmdNameSize = 0;
    for (uint16_t i = 0; i < cmdList_len; i++) //Ciclar por toda la lista de comandos
    {
        if (strlen(cmdList[i].name) > longestCmdNameSize)
            longestCmdNameSize = strlen(cmdList[i].name);
    }

    uint16_t longestCmdInfoSize = 0;
    for (uint16_t i = 0; i < cmdList_len; i++) //Ciclar por toda la lista de comandos
    {
        if (strlen(cmdList[i].info) > longestCmdInfoSize)
            longestCmdInfoSize = strlen(cmdList[i].info);
    }

    StreamPort.println(F("---------------------------"));
    StreamPort.println(F("List of available commands:"));
    StreamPort.flush();

    uint16_t space_size;
    for (uint16_t i = 0; i < cmdList_len; i++) //Ciclar por toda la lista de comandos
    {
        StreamPort.printf(" > --%s", cmdList[i].name);
        space_size = 1 + longestCmdNameSize - strlen(cmdList[i].name);
        while (space_size--)
            StreamPort.print(' ');
        StreamPort.printf("%s", cmdList[i].info);
        space_size = 1 + longestCmdInfoSize - strlen(cmdList[i].info);
        while (space_size--)
            StreamPort.print(' ');
        StreamPort.printf("Param: %s\n", cmdList[i].param);
    }
    StreamPort.println(F("---------------------------"));
    StreamPort.flush();
}



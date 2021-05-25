#include "debug.h"


const char *strNone = "none";
cmd_t cmdList[] = {
    {"HELP", cmd_help, "Show help window.", strNone},
    {"RESET", cmd_reset, "Reset microcontroller.", strNone}
};

void debug_init()
{
#ifdef DEBUG_ENABLE_TCP
    
#endif
    Serial.println(F("[DEBUG] Modulo debug habilitado, ingrese --help para ver los comandos disponibles."));
}

void debug_yield()
{
    /* Atender los comandos de debug. */
    if (Serial.available())
        serialReceived(Serial);
}

void serialReceived(Stream &StreamPort)
{
    String inputStr = StreamPort.readStringUntil('\n'); //Guardar comando en un string.

    bool noCMD = true;                                    //Si se pone en 0, se interpreto correctamente un comando.
    char *strPointer = (char *)malloc(inputStr.length()); //Reservar un espacio en memoria HEAP para almacenar texto

    if (inputStr.charAt(0) == '-' && inputStr.charAt(1) == '-') //Si la inicializacion del comando es correcta.
    {
        for (uint16_t i = 0; i < (sizeof(cmdList) / sizeof(cmdList[0])); i++) //Ciclar por toda la lista de comandos
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
                cmdList[i].func_ptr(StreamPort, strPointer);
            }
        }
    }

    if (noCMD)
    {
        StreamPort.println(F("Comando desconocido. Escribe \"--help\" para ver la ayuda"));
    }

    inputStr = ""; //Desalocar string de la memoria.
    free(strPointer);
    StreamPort.flush();
}


void cmd_reset(Stream &StreamPort, char *param)
{
    StreamPort.println(F("Reseting device..."));
    ESP.restart();
}
void cmd_help(Stream &StreamPort, char *param)
{
    uint16_t longestCmdNameSize = 0;
    for (uint16_t i = 0; i < (sizeof(cmdList) / sizeof(cmdList[0])); i++) //Ciclar por toda la lista de comandos
    {
        if (strlen(cmdList[i].name) > longestCmdNameSize)
            longestCmdNameSize = strlen(cmdList[i].name);
    }

    uint16_t longestCmdInfoSize = 0;
    for (uint16_t i = 0; i < (sizeof(cmdList) / sizeof(cmdList[0])); i++) //Ciclar por toda la lista de comandos
    {
        if (strlen(cmdList[i].info) > longestCmdInfoSize)
            longestCmdInfoSize = strlen(cmdList[i].info);
    }

    StreamPort.println(F("---------------------------"));
    StreamPort.println(F("List of available commands:"));
    StreamPort.flush();

    uint16_t space_size;
    for (uint16_t i = 0; i < (sizeof(cmdList) / sizeof(cmdList[0])); i++) //Ciclar por toda la lista de comandos
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


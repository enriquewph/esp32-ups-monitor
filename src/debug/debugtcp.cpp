#include "debug.h"

#ifdef DEBUG_TCP_ENABLE
#include <AsyncTCP.h>
#include <StreamUtils.h>

static void tcpDebug_handleData(void *arg, AsyncClient *client, void *data, size_t len)
{
    StringPrint inStr;
    inStr.write((uint8_t *)data, len);
    StringStream outStream;
    debug_serial_received(outStream, inStr.str());
    outStream.print("> "); //Añadir indicador para la entrada.

    //no se que hace esto...
    if (client->space() > strlen(outStream.str().c_str()) && client->canSend())
    {
        client->add(outStream.str().c_str(), strlen(outStream.str().c_str()));
        client->send();
    }
}

static void tcpDebug_handleNewClient(void *arg, AsyncClient *client)
{
    Serial.printf("[TCPDEBUG] Cliente DEBUG conectado, ip: %s\n", client->remoteIP().toString().c_str());
    // register events
    client->onData(&tcpDebug_handleData, NULL);
    
    //Send greeting msg.
    StringStream outStream;
    outStream.println("Conexion DEBUG establecida.");
    
    debug_serial_received(outStream, String("--help\n"));

    outStream.print("> ");

    if (client->space() > strlen(outStream.str().c_str()) && client->canSend())
    {
        client->add(outStream.str().c_str(), strlen(outStream.str().c_str()));
        client->send();
    }
}

void debug_tcp_init()
{
    AsyncServer *server = new AsyncServer(DEBUG_TCP_PORT); // start listening on tcp port 7050
	server->onClient(&tcpDebug_handleNewClient, server);
	server->begin();
}

#endif
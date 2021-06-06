#include "debug.h"

#ifdef DEBUG_TCP_ENABLE
#include <AsyncTCP.h>
#include <StreamUtils.h>
#include <LoopbackStream.h>

LoopbackStream debugTcpStream(DEBUG_TCP_BUFFER);
AsyncClient *debugTcpClient = NULL;

void debugTcpStreamSend()
{
    if (debugTcpClient != NULL)
    {
        uint16_t datalen = debugTcpStream.available();
        if (debugTcpClient->space() > datalen + 2 && debugTcpClient->canSend())
        {
            debugTcpClient->add("\n", 1);
            char dato;
            while (debugTcpStream.available())
            {
                dato = debugTcpStream.read();
                debugTcpClient->add(&dato, 1);
            }
            debugTcpClient->add("\n> ", 3);
            debugTcpClient->send();
        }
    }
}

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

static void tcpDebug_handleError(void *arg, AsyncClient *client, int8_t error)
{
    Serial.printf("[TCPDEBUG] Cliente DEBUG connection error %s from client %s \n", client->errorToString(error), client->remoteIP().toString().c_str());
    debugTcpClient = NULL;
}

static void tcpDebug_handleDisconnect(void *arg, AsyncClient *client)
{
    Serial.printf("[TCPDEBUG] Cliente DEBUG client %s disconnected \n", client->remoteIP().toString().c_str());
    debugTcpClient = NULL;
}

static void tcpDebug_handleTimeOut(void *arg, AsyncClient *client, uint32_t time)
{
    Serial.printf("[TCPDEBUG] Cliente DEBUG ACK timeout ip: %s \n", client->remoteIP().toString().c_str());
    debugTcpClient = NULL;
}

static void tcpDebug_handleNewClient(void *arg, AsyncClient *client)
{
    debugTcpClient = client;
    Serial.printf("[TCPDEBUG] Cliente DEBUG conectado, ip: %s\n", client->remoteIP().toString().c_str());
    // register events
    client->onData(&tcpDebug_handleData, NULL);
    client->onError(&tcpDebug_handleError, NULL);
    client->onDisconnect(&tcpDebug_handleDisconnect, NULL);
    client->onTimeout(&tcpDebug_handleTimeOut, NULL);

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
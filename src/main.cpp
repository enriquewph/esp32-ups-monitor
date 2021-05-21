#include "header.h"

void setup()
{
    // put your setup code here, to run once:
    Serial.begin(115200);
    Serial.println("Booting");

    //Initialize gpio
    pinMode(PIN_VBAT, INPUT);
    pinMode(PIN_TBAT, INPUT);
    pinMode(PIN_IBAT, INPUT);
    pinMode(PIN_UPS_ON, OUTPUT);
    pinMode(PIN_UPS_NORMAL, INPUT);
    pinMode(PIN_UPS_CARGA, INPUT);
    pinMode(PIN_UPS_INVERTER, INPUT);
    pinMode(PIN_RELAY_1, OUTPUT);
    pinMode(PIN_RELAY_2, OUTPUT);
    pinMode(PIN_FAN, OUTPUT);

    WiFi.mode(WIFI_STA);
    WiFi.begin(WIFI_SSID, WIFI_PW);
    while (WiFi.waitForConnectResult() != WL_CONNECTED)
    {
        Serial.println("Connection Failed! Rebooting...");
        delay(5000);
        ESP.restart();
    }

    ota_init();

    IPAddress localIp = WiFi.localIP();
    Serial.printf("Ready - IP: %i.%i.%i.%i\n", localIp[0], localIp[1], localIp[2], localIp[3]);
}

void loop()
{
    ota_yield();
}
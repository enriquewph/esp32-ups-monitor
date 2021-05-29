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
    pinMode(PIN_UPS_OFF, OUTPUT);
    pinMode(PIN_UPS_NORMAL, INPUT);
    pinMode(PIN_UPS_CARGA, INPUT);
    pinMode(PIN_UPS_INVERTER, INPUT);
    pinMode(PIN_RELAY_1, OUTPUT);
    pinMode(PIN_RELAY_2, OUTPUT);

    //PWM Setup
    ledcSetup(FAN_PWM_CH, FAN_PWM_FR, FAN_PWM_RS);
    ledcAttachPin(PIN_FAN, FAN_PWM_CH);
    ledcWrite(FAN_PWM_CH, 0);
    // TODO: Create hal functions, recordar que es inverso!!!! el duty 0 equivale al 100%.

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

    
    Serial.printf("[BOOT] INIT DEBUG\n");
    Serial.setTimeout(100);
    debug_init();
    Serial.printf("[BOOT] END DEBUG\n");

    
}

void loop()
{
    ota_yield();
    debug_yield();
    stateMachine_yield();
}
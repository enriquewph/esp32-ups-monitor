#ifndef OTA_H
#define OTA_H

#include <WiFi.h>
#include <ESPmDNS.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>
#include <Arduino.h>

/**
 * @brief Nombre del dispositivo en la red local. Utiliza mDNS
 * 
 */
#define OTA_HOSTNAME "esp32ups"
#define OTA_URL OTA_HOSTNAME ".local"

/**
 * @brief Inicializar las rutinas para actualizacion por Wi-Fi
 * 
 */
void ota_init();

/**
 * @brief LLamar a esta funcion en loop();
 * 
 */
void ota_yield();

#endif
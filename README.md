# ups-central-fw
Firmware para ESP32 en UPS Central

# Necessary secrets.h file:
Place it here **lib/secrets/secrets.h**
It should have the next format
```c
#ifndef SECRETS_H
#define SECRETS_H

#define WIFI_SSID "MyWiFiSSID"
#define WIFI_PW "some_secret_password"

#endif
```
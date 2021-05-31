/**
 * @file cooling.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Funciones para el manejo de coolers.
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#include "cooling.h"

fan_mode_e _cooling_fan_mode = HAL_COOLING_DEFAULT_FANMODE;
uint8_t _cooling_fan_pwm = 0;

void hal_cooling_init()
{
    //PWM Setup
    ledcSetup(FAN_PWM_CH, FAN_PWM_FR, FAN_PWM_RS);
    ledcAttachPin(PIN_FAN, FAN_PWM_CH);
    ledcWrite(FAN_PWM_CH, UINT8_MAX); //Iniciar apagado.
}

void cooling_set_fan_pwm(uint8_t pwm)
{
    if (_cooling_fan_mode == FANMODE_PWM)
    {
        _cooling_fan_pwm = pwm;
    }
    else
    {
        _cooling_fan_pwm = (pwm > 0) ? 255 : 0;
    }
        ledcWrite(FAN_PWM_CH, UINT8_MAX - _cooling_fan_pwm); //Polaridad inversa para el mosfet
}

uint8_t cooling_get_fan_pwm()
{
    return _cooling_fan_pwm;
}

uint8_t cooling_fan_pwm_to_percentage(uint8_t pwm)
{
    return round((pwm / 255.0) * 100.0);
}

bool cooling_fan_get_state()
{
    return _cooling_fan_pwm ? 1 : 0;
}

const char *cooling_fan_get_state_str()
{
    static char _buffer[6]; //Slightly bigger than neccesary to avoid format-overflow error.
    if (_cooling_fan_mode == FANMODE_PWM)
        sprintf(_buffer, "%3i%%", cooling_fan_pwm_to_percentage(_cooling_fan_pwm));
    else
        sprintf(_buffer, "%4s", _cooling_fan_pwm ? "ON" : "OFF");
    return (const char *)_buffer;
}

void cooling_set_fan_mode(fan_mode_e mode)
{
    _cooling_fan_mode = mode;
}

fan_mode_e cooling_get_fan_mode()
{
    return _cooling_fan_mode;
}
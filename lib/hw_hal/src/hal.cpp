/**
 * @file hal.cpp
 * @author Enrique Walter Philippeaux (enriquewph@gmail.com)
 * @brief Contiene la funcion para inicializar la capa HAL del dispositivo.
 * @version 0.1
 * @date 2021-05-31
 * 
 */

#include "hw_hal.h"

void hal_init()
{
    hal_adc_init();
    hal_temp_init();
    hal_vbat_init();
    hal_current_init();
    hal_cooling_init();
    hal_relays_init();
    hal_ups_init();
}
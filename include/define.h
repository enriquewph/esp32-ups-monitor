#ifndef DEFINE_Y
#define DEFINE_Y

// GPIO DEFINITIONS

//bare int
#define PIN_VBAT            36
#define PIN_TBAT            39
#define PIN_IBAT            34
#define PIN_UPS_OFF          32
#define PIN_UPS_NORMAL      33
#define PIN_UPS_CARGA       25
#define PIN_UPS_INVERTER    26
#define PIN_RELAY_1         13
#define PIN_RELAY_2         27
#define PIN_FAN             4

//gpio_num_t
#define PIN_VBAT_GPIONUM            GPIO_NUM_36
#define PIN_TBAT_GPIONUM            GPIO_NUM_39
#define PIN_IBAT_GPIONUM            GPIO_NUM_34
#define PIN_UPS_OFF_GPIONUM          GPIO_NUM_32
#define PIN_UPS_NORMAL_GPIONUM      GPIO_NUM_33
#define PIN_UPS_CARGA_GPIONUM       GPIO_NUM_25
#define PIN_UPS_INVERTER_GPIONUM    GPIO_NUM_26
#define PIN_RELAY_1_GPIONUM         GPIO_NUM_13
#define PIN_RELAY_2_GPIONUM         GPIO_NUM_27
#define PIN_FAN_GPIONUM             GPIO_NUM_4

//adc1_channel_t
#define PIN_VBAT_ADC_CH ADC1_CHANNEL_0 //GPIO36 - ADC1_CH0 - RTCIO_0
#define PIN_TBAT_ADC_CH ADC1_CHANNEL_3 //GPIO39 - ADC1_CH3 - RTCIO_3
#define PIN_IBAT_ADC_CH ADC1_CHANNEL_6 //GPIO34 - ADC1_CH6 - RTCIO_4

#endif
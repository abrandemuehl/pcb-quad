#ifndef TIM_H
#define TIM_H

#include "stm32f4xx_tim.h"

void tim_init();
void pwm_init();
void set_pwm(int channelNumber, float pulsePercent);

#endif // TIM_H

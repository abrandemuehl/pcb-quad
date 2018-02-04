#ifndef TIM_H
#define TIM_H

#include "stm32f4xx_tim.h"

void tim_init();
void pwm_init();
void set_pwm(int channelNumber, float pulsePercent);

uint32_t gettime_ms();
uint32_t gettime_us();

void sleep_ms(uint32_t ms);
void sleep_us(uint32_t us);

void periodic_init(int hz);
void periodic_sleep();

#endif // TIM_H

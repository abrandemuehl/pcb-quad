#include "stm32f4xx.h"
#include "stm32f4xx_rcc.h"
#include "tim.h"

void tim_init()
{
	TIM_TimeBaseInitTypeDef TIM_BaseStruct;

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
	TIM_BaseStruct.TIM_Prescaler = 180 - 1;
	TIM_BaseStruct.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_BaseStruct.TIM_Period = 1000 - 1;
	TIM_BaseStruct.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_BaseStruct.TIM_RepetitionCounter = 0;

	TIM_TimeBaseInit(TIM3, &TIM_BaseStruct);
	TIM_Cmd(TIM3, ENABLE);
}

void pwm_init()
{
	TIM_OCInitTypeDef TIM_OCStruct;

	TIM_OCStruct.TIM_OCMode = TIM_OCMode_PWM1;
	TIM_OCStruct.TIM_OutputState = TIM_OutputState_Enable;
	TIM_OCStruct.TIM_OCPolarity = TIM_OCPolarity_High;
	TIM_OCStruct.TIM_Pulse = 0;

	TIM_OC1Init(TIM3, &TIM_OCStruct);
	TIM_OC1PreloadConfig(TIM3, TIM_OCPreload_Enable);

	TIM_OC2Init(TIM3, &TIM_OCStruct);
	TIM_OC2PreloadConfig(TIM3, TIM_OCPreload_Enable);

	TIM_OC3Init(TIM3, &TIM_OCStruct);
	TIM_OC3PreloadConfig(TIM3, TIM_OCPreload_Enable);

	TIM_OC4Init(TIM3, &TIM_OCStruct);
	TIM_OC4PreloadConfig(TIM3, TIM_OCPreload_Enable);
}

void set_pwm(int channelNumber, float pulsePercent)
{
	if (pulsePercent > 100.0f)
		pulsePercent = 100.0f;
	else if (pulsePercent < 0.0f)
		pulsePercent = 0.0f;

	TIM_OCInitTypeDef TIM_OCStruct;

	TIM_OCStruct.TIM_OCMode = TIM_OCMode_PWM1;
	TIM_OCStruct.TIM_OutputState = TIM_OutputState_Enable;
	TIM_OCStruct.TIM_OCPolarity = TIM_OCPolarity_High;
	TIM_OCStruct.TIM_Pulse = (pulsePercent / 100.0f)*(1000.0f - 1.0f) - 1;

	switch (channelNumber)
	{
	case 1:
		TIM_OC1Init(TIM3, &TIM_OCStruct);
		TIM_OC1PreloadConfig(TIM3, TIM_OCPreload_Enable);
		break;

	case 2:
		TIM_OC2Init(TIM3, &TIM_OCStruct);
		TIM_OC2PreloadConfig(TIM3, TIM_OCPreload_Enable);
		break;

	case 3:
		TIM_OC3Init(TIM3, &TIM_OCStruct);
		TIM_OC3PreloadConfig(TIM3, TIM_OCPreload_Enable);
		break;

	case 4:
		TIM_OC4Init(TIM3, &TIM_OCStruct);
		TIM_OC4PreloadConfig(TIM3, TIM_OCPreload_Enable);
		break;

	default:
		break;
	}
}

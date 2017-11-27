#include "stm32f4xx.h"
#include "stm32f4xx_rcc.h"
#include "stm32f4xx_gpio.h"
#include "tim.h"
#include "clocks.h"

void tim_init()
{
	TIM_TimeBaseInitTypeDef TIM3_BaseStruct;

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
	// Prescale from APB1 Timer Clock (APB1*2) to 500kHz
	TIM3_BaseStruct.TIM_Prescaler = 180 - 1;
	TIM3_BaseStruct.TIM_CounterMode = TIM_CounterMode_Up;
	TIM3_BaseStruct.TIM_Period = 1000 - 1;
	TIM3_BaseStruct.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM3_BaseStruct.TIM_RepetitionCounter = 0;

	TIM_TimeBaseInit(TIM3, &TIM3_BaseStruct);
	TIM_Cmd(TIM3, ENABLE);


	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
	// Setup a timer to count microseconds
	TIM_TimeBaseInitTypeDef TIM2_BaseStruct;
	// Prescale APB1 Clock to 1 MHz
	TIM2_BaseStruct.TIM_Prescaler = (APB1 * 2 / 1000000) - 1;
	TIM2_BaseStruct.TIM_CounterMode = TIM_CounterMode_Up;
	// Only reload on overflow 
	// TIM2_BaseStruct.TIM_Period = 0xFFFFFFFF;
	// Reload every ms
	TIM2_BaseStruct.TIM_Period = 1000-1;
	TIM2_BaseStruct.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM2_BaseStruct.TIM_RepetitionCounter = 0;

	TIM_TimeBaseInit(TIM2, &TIM2_BaseStruct);
	TIM_Cmd(TIM2, ENABLE);
}

void pwm_init()
{
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;

  GPIO_InitTypeDef GPIO_InitStruct;
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource6, GPIO_AF_TIM3);
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource7, GPIO_AF_TIM3);
  GPIO_PinAFConfig(GPIOB, GPIO_PinSource0, GPIO_AF_TIM3);
  GPIO_PinAFConfig(GPIOC, GPIO_PinSource9, GPIO_AF_TIM3);
  GPIO_InitStruct.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7;
  GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStruct.GPIO_Speed = GPIO_Speed_100MHz;
  GPIO_Init(GPIOA, &GPIO_InitStruct);
  GPIO_InitStruct.GPIO_Pin = GPIO_Pin_0;
  GPIO_Init(GPIOB, &GPIO_InitStruct);
  GPIO_InitStruct.GPIO_Pin = GPIO_Pin_9;
  GPIO_Init(GPIOC, &GPIO_InitStruct);

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


	/* Code for verifying that the output of TIM2 is correct 
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource0, GPIO_AF_TIM2);
  GPIO_InitStruct.GPIO_Pin = GPIO_Pin_0;
  GPIO_Init(GPIOA, &GPIO_InitStruct);

	TIM_OCInitTypeDef TIM2_OCStruct;

	TIM2_OCStruct.TIM_OCMode = TIM_OCMode_PWM1;
	TIM2_OCStruct.TIM_OutputState = TIM_OutputState_Enable;
	TIM2_OCStruct.TIM_OCPolarity = TIM_OCPolarity_High;
	TIM2_OCStruct.TIM_Pulse = 500;

	TIM_OC1Init(TIM2, &TIM2_OCStruct);
	TIM_OC1PreloadConfig(TIM2, TIM_OCPreload_Enable);
	*/
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

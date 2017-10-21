#include "stm32f4xx.h"
int main() {
  SystemInit();

  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

  GPIOB->MODER |= GPIO_MODER_MODER7_0;
  GPIOB->OTYPER &= ~GPIO_OTYPER_OT_7;
  GPIOB->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR7;

  while(1) {
    GPIOB->BSRRH |= 0x01 << 7;

    for(int i=0; i < 100000; i++) {}

    GPIOB->BSRRL |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}
  }
  return 0;
}

#include "stm32f4xx.h"

void __attribute__ ((noreturn, interrupt, weak)) USART1_Interrupt_Handler(void) {
    while(1);
} 


void __attribute__ ((noreturn, interrupt, weak)) HardFaultHandler(void) {
  while(1) {
    GPIOB->BSRRH |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}

    GPIOB->BSRRL |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}
  } 
}

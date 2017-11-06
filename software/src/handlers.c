#include "stm32f4xx.h"
#include "uart.h"

void __attribute__ ((noreturn, interrupt, weak)) HardFault_Handler(void) {
  usart1_puts("Hard Fault\n");
  while(1) {} 
}

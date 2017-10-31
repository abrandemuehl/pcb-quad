#include "stm32f4xx.h"

#include "uart.h"

// For assembly to call this function, we must use the c linkage, otherwise the name is mangled
// Note that this is not required for main because main is special (I think)
#ifdef __cplusplus
extern "C" {
#endif
void __attribute__ ((noreturn, interrupt, weak)) USART1_Interrupt_Handler(void) {
    GPIOB->BSRRH |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}

    GPIOB->BSRRL |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}
    while(1);
} 


void __attribute__ ((noreturn, interrupt, weak)) Default_Interrupt_Handler(void) {
  while(1) {
    GPIOB->BSRRH |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}

    GPIOB->BSRRL |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}
  } 
}

#ifdef __cplusplus
}
#endif

int main() {
  SystemInit();

  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

  GPIOB->MODER |= GPIO_MODER_MODER7_0;
  GPIOB->OTYPER &= ~GPIO_OTYPER_OT_7;
  GPIOB->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR7;

  /* // Enable peripheral clock for GPIOA in order to use to set alternate functions */
  /* // USART1 on PA9 and PA10 */
  /* RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; */

  /* // Set GPIOA pin 9 and 10 alternate functions to AF7 (see figure 27) and 8.4.10 */
  /* /1* GPIOA->AFR[1] &= ((uint32_t)7) << ((9 - 8) * 4); *1/ */
  /* GPIOA->AFR[1] |= ((uint32_t)7) << ((9 - 8) * 4);; */
  /* /1* GPIOA->AFR[1] &= ((uint32_t)(0x07) << ((uint32_t)((uint32_t)10 & (uint32_t)0x07) * 4)); *1/ */
  /* GPIOA->AFR[1] |= ((uint32_t)7) << ((10 - 8) * 4);; */

  /* // Set PA9 to be a push-pull output at 50Mhz. PA9 = USART1_TX */
  /* // Set mode to alernate function */
  /* GPIOA->MODER &= ~GPIO_MODER_MODER9; */
  /* GPIOA->MODER |= GPIO_MODER_MODER9_1; */
  /* GPIOA->OTYPER &= ~GPIO_OTYPER_OT_9; */
  /* /1* GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR9; *1/ */
  /* GPIOA->PUPDR |= GPIO_PUPDR_PUPDR9_0; */

  /* GPIOA->PUPDR |= GPIO_PUPDR_PUPDR10_0; */
  /* // Set mode to alternate function */
  /* /1* GPIOA->MODER &= ~GPIO_MODER_MODER10; *1/ */
  /* GPIOA->MODER |= GPIO_MODER_MODER10_1; */
  /* /1* GPIOA->OTYPER &= ~GPIO_OTYPER_OT_10; *1/ */
  /* // GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR10_0; */
  /* // Set PA10 to be a floating input */
  /* /1* GPIOA->MODER &= ~GPIO_MODER_MODER9; *1/ */
  /* /1* GPIOA->MODER |= GPIO_MODER_MODER9_0; *1/ */
  /* /1* GPIOA->OTYPER &= ~GPIO_OTYPER_OT_9; *1/ */
  /* /1* GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR9; *1/ */


  /* // Enable peripheral clock to usart1 */
  /* RCC->APB2ENR |= RCC_APB2ENR_USART1EN; */


  /* // 1 Start bit, 8 data bits, n stop bits */
  /* USART1->CR1 &= ~USART_CR1_M; */
  /* // Enable USART1 with transmitter and receiver */
  /* USART1->CR1 |= USART_CR1_UE | USART_CR1_TE | USART_CR1_RE; */
  /* USART1->CR1 |= USART_CR1_TCIE; */

  /* // Set number of stop bits */ 
  /* // Clear for 1 stop bit */
  /* USART1->CR2 &= ~(USART_CR2_STOP); */
  /* /1* Write to USART BRR register *1/ */
  /* USART1->BRR = ((180000000/32) / 115200) << 4; */
  /* // See table 136. Peripheral clock speed is */ 
  /* /1* USART1->BRR &= ~(USART_BRR_DIV_Mantissa); *1/ */
  /* /1* USART1->BRR |= 13 << 4; *1/ */
  /* // USART1->BRR |= 24000000/115200; */

  usart1_init(B115200);

  while(1) {
    /* GPIOB->BSRRH |= 0x01 << 7; */
    /* for(int i=0; i < 100000; i++) {} */

    /* GPIOB->BSRRL |= 0x01 << 7; */
    /* for(int i=0; i < 100000; i++) {} */

    GPIOB->BSRRH |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}

    GPIOB->BSRRL |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}
    /* USART1->DR = 'a'; */
    /* while ((USART1->SR & USART_SR_TXE) == 0); */
    usart1_putchar('t');
    usart1_putchar('e');
    usart1_putchar('s');
    usart1_putchar('t');
    usart1_putchar('\n');
    usart1_puts("testing123\n");
  }
  return 0;
}

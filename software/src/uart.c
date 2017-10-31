#include "uart.h"
#include "stm32f4xx.h"



void usart1_init(baud_t baud) {
  // Enable peripheral clock for GPIOA in order to use to set alternate functions
  // USART1 on PA9 and PA10
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

  // Set GPIOA pin 9 and 10 alternate functions to AF7 (see figure 27) and 8.4.10
  GPIOA->AFR[1] |= ((uint32_t)7) << ((9 - 8) * 4);;
  GPIOA->AFR[1] |= ((uint32_t)7) << ((10 - 8) * 4);;

  // Set PA9 to be a push-pull output at 50Mhz. PA9 = USART1_TX
  // Set mode to alernate function
  GPIOA->MODER &= ~GPIO_MODER_MODER9;
  GPIOA->MODER |= GPIO_MODER_MODER9_1;
  GPIOA->OTYPER &= ~GPIO_OTYPER_OT_9;
  GPIOA->PUPDR |= GPIO_PUPDR_PUPDR9_0;

  GPIOA->PUPDR |= GPIO_PUPDR_PUPDR10_0;
  GPIOA->MODER |= GPIO_MODER_MODER10_1;

  // Enable peripheral clock to usart1
  RCC->APB2ENR |= RCC_APB2ENR_USART1EN;


  // 1 Start bit, 8 data bits, n stop bits
  USART1->CR1 &= ~USART_CR1_M;
  // Enable USART1 with transmitter and receiver
  USART1->CR1 |= USART_CR1_UE | USART_CR1_TE | USART_CR1_RE;
  USART1->CR1 |= USART_CR1_TCIE;

  // Set number of stop bits 
  // Clear for 1 stop bit
  USART1->CR2 &= ~(USART_CR2_STOP);
  // Set baud rate
  USART1->BRR = ((180000000/32) / 115200) << 4;
}



void usart1_putchar(char c) {
  /* if(c == '\r') { */
  /*   while ((USART1->SR & USART_SR_TXE) == 0); */
  /*   USART1->DR = '\r'; */
  /* } */
  while ((USART1->SR & USART_SR_TXE) == 0);
  USART1->DR = c;
}

void usart1_puts(char *s) {
  while(*s != '\0') {
    usart1_putchar(*s);
    s++;
  }
}

char usart1_getchar() {
  while (!(USART1->SR & USART_SR_RXNE));
  return (char)(USART1->DR & 0xFF);
}




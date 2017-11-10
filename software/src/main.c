#include "stm32f4xx.h"

#include "uart.h"
#include "i2c.h"
#include "util.h"
#include "bno055.h"

#define MS (6250)
#define BNO055_ADDR ((uint8_t)0x28)
#define BNO055_CHIP_ID ((uint8_t)0x00)
#define BNO055_UNIT_SEL ((uint8_t)0x3B)

int main() {
  SystemInit();

  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

  GPIOB->MODER |= GPIO_MODER_MODER7_0;
  GPIOB->OTYPER &= ~GPIO_OTYPER_OT_7;
  GPIOB->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR7;

  usart1_init(B115200);

  i2c_init();

  if(bno055_init() != 0) {
    usart1_puts("Failed to initialize BNO055\n");
    while(1);
  }
  usart1_puts("bno055 initialized\n");
  float rpy[3];
  while(1) {
    usart1_puts("Getting values\n");
    bno055_get_rpy(rpy);
    print_dec((uint32_t)rpy[0]);
    usart1_putc(' ');
    print_dec((uint32_t)rpy[1]);
    usart1_putc(' ');
    print_dec((uint32_t)rpy[2]);
    usart1_puts("\n");
    for(int i=0; i < MS*10; i++);
  }
  return 0;
}

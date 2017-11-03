#include "stm32f4xx.h"

#include "uart.h"
#include "i2c.h"
#include "util.h"

#define BNO055_ADDR ((uint8_t)0x29)
#define BNO055_CHIP_ID ((uint8_t)0x00)

int main() {
  SystemInit();

  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

  GPIOB->MODER |= GPIO_MODER_MODER7_0;
  GPIOB->OTYPER &= ~GPIO_OTYPER_OT_7;
  GPIOB->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR7;

  usart1_init(B115200);

  i2c_init();

  uint8_t chip_id;
  while(1) {
    GPIOB->BSRRH |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}

    GPIOB->BSRRL |= 0x01 << 7;
    for(int i=0; i < 100000; i++) {}
    usart1_puts("testing123\n");

    // Do an I2C read of the CHIP ID
    chip_id = i2c_read(BNO055_ADDR, BNO055_CHIP_ID);
    print_hex(chip_id);
  }
  return 0;
}

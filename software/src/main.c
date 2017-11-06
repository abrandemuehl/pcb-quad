#include "stm32f4xx.h"

#include "uart.h"
#include "i2c.h"
#include "util.h"

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

  usart1_puts("testing123\n");
  uint8_t unit_sel;
  while(1) {
    usart1_puts("initiating read\n");

    // Do an I2C read of the CHIP ID
    unit_sel = i2c_read(BNO055_ADDR, BNO055_UNIT_SEL);
    print_hex(unit_sel);
    usart1_puts("\n");

    // Toggle the LSB
    unit_sel ^= 0x01;

    i2c_write(BNO055_ADDR, BNO055_UNIT_SEL, unit_sel);

    unit_sel = i2c_read(BNO055_ADDR, BNO055_UNIT_SEL);
    print_hex(unit_sel);
    usart1_puts("\n");
  }
  return 0;
}

#include "i2c.h"

#include "stm32f4xx.h"

#include "clocks.h"
#include "uart.h"

enum I2C_read {
  WRITE=0,
  READ=1,
};

// Private helper functions
static uint8_t __i2c_write(uint8_t addr, uint8_t *bytes, uint8_t len);
static uint8_t __i2c_send_addr(uint8_t addr, enum I2C_read lsb);
static uint8_t __i2c_read(uint8_t addr, uint8_t *bytes, int len);

void i2c_init() {
  // Enable GPIOB Clocks for pins
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

  // Connect GPIOB PB8 and PB9 to their AF
  // SCL = PB8
  // SDA = PB9
  
  GPIOB->AFR[1] &= ~((uint32_t)7) << ((8 - 8) * 4);;
  GPIOB->AFR[1] &= ~((uint32_t)7) << ((9 - 8) * 4);;
  GPIOB->AFR[1] |= ((uint32_t)4) << ((8 - 8) * 4);;
  GPIOB->AFR[1] |= ((uint32_t)4) << ((9 - 8) * 4);;

  // Clear mode
  GPIOB->MODER &= ~GPIO_MODER_MODER8;
  GPIOB->MODER &= ~GPIO_MODER_MODER9;

  // Set to alternate mode
  GPIOB->MODER |= GPIO_MODER_MODER8_1;
  GPIOB->MODER |= GPIO_MODER_MODER9_1;

  // Set the output types -> Open drain outputs
  GPIOB->OTYPER |= GPIO_OTYPER_OT_8;
  GPIOB->OTYPER |= GPIO_OTYPER_OT_9;

  // Pull up both pins
  GPIOB->PUPDR &= ~GPIO_PUPDR_PUPDR8;
  GPIOB->PUPDR &= ~GPIO_PUPDR_PUPDR9;
  /* GPIOB->PUPDR |= GPIO_PUPDR_PUPDR8_0; */
  /* GPIOB->PUPDR |= GPIO_PUPDR_PUPDR9_0; */


  // Enable overall I2C clock
  RCC->APB1ENR |= RCC_APB1ENR_I2C1EN;

  // Check if the bus is busy before starting
  while((I2C1->SR2 & I2C_SR2_BUSY) == 1) {
    usart1_puts("i2c_init bus busy\n");
  }
  if ((I2C1->SR1 & I2C_SR1_BERR) == 1) {
    usart1_puts("i2c_init bus error\n");
    I2C1->CR1 &= ~I2C_SR1_BERR;
  }

  // Clear the I2C frequency
  I2C1->CR2 &= ~I2C_CR2_FREQ;

  // Set the I2C clock frequency to APB1 clock speed
  I2C1->CR2 |= I2C_CR2_FREQ & (APB1 / 1000000);

  // Disable the peripheral for configuration
  I2C1->CR1 &= ~I2C_CR1_PE;


  // Modifications to CCR must be done while I2C is disabled
  // Enable I2C fast mode
  I2C1->CCR |= I2C_CCR_FS;

  // t_low = 2*t_high
  I2C1->CCR |= I2C_CCR_DUTY;

  // Configure SCL t_high=0.6us = CCR * t_pclk1
  // t_high = CCR * t_pclk1
  const float t_high = 600; // nanoseconds
  const float t_pclk1 = (1.0f/(float)APB1) * 1000000000.0f; // nanoseconds
  const uint32_t ccr_val = (uint32_t)(t_high/t_pclk1);

  I2C1->CCR &= ~I2C_CCR_CCR;
  I2C1->CCR |= I2C_CCR_CCR & ccr_val;
  

  // Configure maximum rise time 
  // TRISE can only be edited while disabled
  // The maximum t_rise for I2C fast mode is 300ns
  // TRISE = (t_rise / t_pclk) + 1
  const uint32_t t_rise = 300;
  const uint32_t trise =  ((t_rise / t_pclk1) + 1);
  I2C1->TRISE &= ~I2C_TRISE_TRISE;
  I2C1->TRISE |= I2C_TRISE_TRISE & trise;

  // Enable the peripheral
  I2C1->CR1 |= I2C_CR1_PE;
}

uint8_t __i2c_send_addr(uint8_t addr, enum I2C_read lsb) {
  // Send a START condition
  I2C1->CR1 |= I2C_CR1_START;

  uint32_t timeout = 10000;
  while(!(I2C1->SR1 & I2C_SR1_SB)) {
    if(timeout-- == 0) {
      return -1;
    }
  }

  // Clear AF flag
  I2C1->SR1 &= ~I2C_SR1_AF;

  // Send the address, shifted left one, with LSB corresponding to receiver/transmitter mode
  I2C1->DR = (((addr << 1) | lsb) & 0x00FF) & 0x00FF;
  // Wait for the address to be transmitted
  while((I2C1->SR1 & I2C_SR1_ADDR) == 0) {
    if((I2C1->SR1 & I2C_SR1_AF)) {
      // Send a stop condition
      I2C1->CR1 |= I2C_CR1_STOP;
      return -1;
    }
  }
  return 0;
}

uint8_t __i2c_write(uint8_t addr, uint8_t *bytes, uint8_t len) {
  if(__i2c_send_addr(addr, WRITE) != 0) {
    usart1_puts("__i2c_send_addr failed in __write\n");
    return -1;
  }

  // Clear the ADDR bit
  (void)I2C1->SR1;
  (void)I2C1->SR2;

  // Clear AF bit
  I2C1->SR1 &= ~I2C_SR1_AF;

  uint32_t timeout;
  for(uint8_t i=0; i < len; i++) {
    I2C1->DR = bytes[i];

    // Wait for ACK
    timeout = 10000;
    while(!(I2C1->SR1 & I2C_SR1_TXE)) {
      if(timeout-- == 0) {
        return -1;
      }
      if((I2C1->SR1 & I2C_SR1_AF)) {
        usart1_puts("__i2c_write acknowledge failure\n");
        return -1;
      }
    }

    while(!(I2C1->SR1 & I2C_SR1_BTF));
  }
  // Send a STOP condition
  I2C1->CR1 |= I2C_CR1_STOP;

  // Wait for communication to finish
  while((I2C1->SR2 & I2C_SR2_BUSY) != 0) {}
  return 0;
}

uint8_t __i2c_read(uint8_t addr, uint8_t *bytes, int len) {
  if(__i2c_send_addr(addr, READ) != 0) {
    usart1_puts("__i2c_send_addr failed in __read\n");
    return -1;
  }
  if(len == 1) {
    // Should nack after first byte if length is 1
    I2C1->CR1 &= ~I2C_CR1_ACK;
  } else {
    // Enable ACK's
    I2C1->CR1 |= I2C_CR1_ACK;
  }

  // Clear the ADDR bit
  (void)I2C1->SR1;
  (void)I2C1->SR2;

  for(int i=0; i < len; i++) {
    // Wait for a response byte to arrive
    while((I2C1->SR1 & I2C_SR1_RXNE) == 0);
    if(i >= len - 1) {
      // Need to send NACK before reading second to last byte, so clear ACK
      I2C1->CR1 &= ~(I2C_CR1_ACK);
    }

    // Read a byte
    bytes[i] = (uint8_t)(I2C1->DR & 0x00FF);
  }

  // Send a STOP condition
  I2C1->CR1 |= I2C_CR1_STOP;
  // Wait for communication to finish
  while((I2C1->SR2 & I2C_SR2_BUSY) != 0) {}
  return 0;
}

uint8_t i2c_write(uint8_t addr, uint8_t reg, uint8_t data) {
  uint8_t bytes[2];
  bytes[0] = reg;
  bytes[1] = data;
  if(__i2c_write(addr, bytes, 2) != 0) {
    usart1_puts("__i2c_write failed in write\n");
    return -1;
  }
  return 0;
}

uint16_t i2c_read(uint8_t addr, uint8_t reg) {
  uint8_t result;
  if(__i2c_write(addr, &reg, 1) != 0) {
    usart1_puts("__i2c_write failed in read\n");
    return -1;
  }

  if(__i2c_read(addr, &result, 1) != 0) {
    usart1_puts("__i2c_read failed in read\n");
    return -1;
  }

  return result;
}

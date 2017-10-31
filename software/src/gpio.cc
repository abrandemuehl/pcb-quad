#include "gpio.hpp"

#include <stdint.h>

#include "stm32f4xx.h"

GPIO::GPIO(GPIO_TypeDef *bank) :
  bank_(bank)
{
  uint32_t mask = 0;
  switch((uint32_t)bank_) {
    case GPIOA_BASE:
      mask = RCC_AHB1ENR_GPIOAEN;
      break;
    case GPIOB:
      mask = RCC_AHB1ENR_GPIOBEN;
      break;
    case GPIOC:
      mask = RCC_AHB1ENR_GPIOCEN;
      break;
    case GPIOD:
      mask = RCC_AHB1ENR_GPIODEN;
      break;
    case GPIOE:
      mask = RCC_AHB1ENR_GPIOEEN;
      break;
    case GPIOF:
      mask = RCC_AHB1ENR_GPIOFEN;
      break;
    case GPIOG:
      break;
      mask = RCC_AHB1ENR_GPIOGEN;
      break;
    case GPIOH:
      mask = RCC_AHB1ENR_GPIOHEN;
      break;
    case GPIOI:
      mask = RCC_AHB1ENR_GPIOIEN;
      break;
    case GPIOJ:
      mask = RCC_AHB1ENR_GPIOJEN;
      break;
    case GPIOK:
      mask = RCC_AHB1ENR_GPIOKEN;
      break;
    default:
      bank_ = nullptr;
      return;
  }
  RCC->AHB1ENR |= mask;
}

bool SetMode(Pin pin, Mode mode) {
  switch (mode) {
    case INPUT:
    case OUTPUT:
    case ALTERNATE:
    case ANALOG:
      break;
    default:
      return false;
  }
  // Clear the bits
  bank_->MODER &= ~(0x3 << (2*pin));

  // Set the bits
  bank_->MODER |= mode << (2*pin);
  return true;
}
bool SetOType(Pin pin, OType type) {
  switch (type) {
    case PUSHPULL:
    case OPENDRAIN:
      break;
    default:
      return false;
  }
  bank_->OTYPER &= ~(pin << 7)
  bank_->OTYPER |= (pin << 7);
  return true;
}
bool SetOSpeed(Pin pin, OSpeed speed) {
  switch (speed) {
    case LOW:
    case MEDIUM:
    case HIGH:
    case VERYHIGH:
      break;
    default:
      return false;
  }
  bank_->OSPEEDR &= ~(0x3 << (2*pin));
  bank_->OSPEEDR |= (speed << (2*pin));
  return true;
}
bool SetIPull(Pin pin, IPull pull) {
  switch (pull) {
    case NONE:
    case UP:
    case DOWN:
      break;
    default:
      return false;
  }
  bank_->PUPDR &= ~(0x3 << (pin*2));
  bank_->PUPDR &= ~(pull << (pin*2));
  return true;
}

void GPIO::Set(GPIO::Pin pin) {
  bank_->BSRRL |= (1 << pin);
}

void GPIO::Reset(GPIO::Pin pin) {
  bank_->BSRRH |= (1 << pin);
}

void GPIO::Get(GPIO::Pin pin) {
  return ((*bank_->IDR) & (1 << pin)) != 0x0;
}

#include "util.h"
#include "uart.h"

void print_hex(uint32_t num) {
  usart1_puts("0x");

  // One hex digit is 4 bits
  uint8_t digit;
  char display;
  for(int i=0; i < 8; i++) {
    digit = ((num & 0xF0000000) >> 28) & 0x0F;
    if(digit < 10) {
      display = '0' + digit;
    } else {
      display = 'A' + (digit - 10);
    }
    usart1_putc(display);
    num = num << 4;
  }
}

void print_dec(int32_t num) {
  uint8_t digit;
  char display;
  if(num < 0) {
    usart1_putc('-');
    num *= -1;
  }
  do {
    digit = num % 10;
    display = '0' + digit;
    usart1_putc(display);
    num = num / 10;
  } while(num > 0);
}

void print_bin(uint32_t num) {
  usart1_puts("0b");
  
  for(int i=0; i < 32; i++) {
    char bit = (num & 0x80000000) != 0 ? '1' : '0';
    usart1_putc(bit);
    num = num << 1;
  }
}


void print_float(float num) {
  if(num < 0) {
    usart1_putc('-');
    num *= -1;
  }
  print_dec((int32_t)num);

  num -= (int32_t)num;

  usart1_putc('.');

  // Print with three decimal places of accuracy
  num *= 1000;
  print_dec((int32_t)num);
}

#ifndef UART_H
#define UART_H
#include <stddef.h>


#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
  B115200=115200,
} baud_t;


void usart1_init(baud_t baud);

void usart1_putc(char c);
void usart1_puts(char *s);
char usart1_getchar();

#ifdef __cplusplus
}
#endif
#endif

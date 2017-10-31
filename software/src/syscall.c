#include <errno.h>
#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/stat.h>

#include "uart.h"

#ifdef __cplusplus
extern "C" {
#endif

// From https://github.com/ErichStyger/mcuoneclipse


int _write (int fd, const void *buf, size_t count) {
  usart1_puts("Write\n");
  for(uint32_t i=0; i < count; i++) {
    usart1_putchar(((char *)buf)[i]);
  }
  return count;
}

int _read (int fd, const void *buf, size_t count) {
  usart1_puts("Read\n");
  for(uint32_t i=0; i < count; i++) {
    ((char *)buf)[i] = usart1_getchar();
  }
  return count;
}

void _tywrch(int ch) {
  usart1_puts("tywrch\n");
  /* Write one char "ch" to the default console
   * Need implementing with UART here. */
  usart1_putchar((char)ch);
}

int _isatty(int file) {
  usart1_puts("isatty\n");
  return 1;
}

int _fstat(int file, struct stat *st)
{
  usart1_puts("fstat\n");
  st->st_mode = S_IFCHR;
  return 0;
}

int _getpid() {
  usart1_puts("getpid\n");
  return 1;
}

int _open() {
  usart1_puts("open\n");
  return -1;
}
int _close() {
  usart1_puts("close\n");
  return -1;
}
int _kill() {
  usart1_puts("kill\n");
  errno = EINVAL;
  return (-1);
}

int _lseek() {
  usart1_puts("lseek\n");
  return -1;
}

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wreturn-type"
__attribute__((naked)) static unsigned int get_stackpointer(void) {
  __asm volatile (
    "mrs r0, msp   \r\n"
    "bx lr         \r\n"
  );
}

void *_sbrk(int incr) {
  extern char __HeapLimit__; /* Defined by the linker file */
  static char *heap_end = 0;
  char *prev_heap_end;
  char *stack;

  if (heap_end==0) {
    heap_end = &__HeapLimit__;
  }
  prev_heap_end = heap_end;
  stack = (char*)get_stackpointer();

  if (heap_end+incr > stack) {
    errno = ENOMEM;
    return  (void *)-1;
  }
  heap_end += incr;
  return (void *)prev_heap_end;
}


#ifdef __cplusplus
}
#endif

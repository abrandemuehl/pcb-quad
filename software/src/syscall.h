#ifndef SYSCALL_H
#define SYSCALL_H
#include <stddef.h>



#ifdef __cplusplus
extern "C" {
#endif
int _write (int fd, const void *buf, size_t count);
int _read (int fd, const void *buf, size_t count);
void _ttywrch(int ch);
int _kill(int pid, int sig);
int _lseek(int file, int ptr, int dir);
void *_sbrk(int incr);


#ifdef __cplusplus
}
#endif
#endif

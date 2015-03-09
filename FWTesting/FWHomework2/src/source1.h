#ifndef SOURCE1_H
#define SOURCE1_H

#include <stdint.h>

extern char mygetchar(void);

char compilechar(void);

void swap(char *p, int len);

uint32_t _bswap32(uint32_t a);

#endif
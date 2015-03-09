#include "source1.h"
//#include <byteswap.h>
//#include <stdio.h>



char compilechar(void)
{
	char a;
	a = mygetchar();
	return a;
}


void swap(char * p, int len) {
  int i;
  char tmp;
  for(i = 0; i < len/2; i++) {
    tmp = p[len-i-1];
    p[len-i-1] = p[i];
    p[i] = tmp;
  }
}

uint32_t _bswap32(uint32_t a)
{
  a = ((a & 0x000000FF) << 24) |
      ((a & 0x0000FF00) <<  8) |
      ((a & 0x00FF0000) >>  8) |
      ((a & 0xFF000000) >> 24);
  return a;
}
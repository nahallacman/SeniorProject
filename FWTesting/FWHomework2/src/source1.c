#include "source1.h"

char compilechar(void)
{
	char a;
	a = mygetchar();
	//a = 'a';
	int b = 0x12345678;
	_bswapw(b);
	return a;
}
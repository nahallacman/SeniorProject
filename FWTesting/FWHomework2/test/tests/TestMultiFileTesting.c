#include "unity.h"
#include "source1.h"
#include "source2.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void testCallChainedFunction(void)
{
	char a;
	a = compilechar();
	TEST_ASSERT_EQUAL_INT (a, 'a');
}

void testByteSwap(void)
{
	uint32_t a = 0x12345678;
	a = _bswap32(a);
	TEST_ASSERT_EQUAL_HEX (a, 0x78563412);
	
	/*
	char b [4] = { 0x12, 0x34, 0x56, 0x78 };
	swap(b, 4);
	TEST_ASSERT_EQUAL_INT8 (b[0], 0x78);
*/
}

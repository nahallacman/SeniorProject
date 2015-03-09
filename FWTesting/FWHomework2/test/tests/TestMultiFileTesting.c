#include "unity.h"
#include "source1.c"

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
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
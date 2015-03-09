#include "unity.h"
#include "PS2.h"
#include "PS2Common.h"


void setUp(void)
{
}

void tearDown(void)
{
}

void testKeyboardInput(void)
{
	KeysToProcess = 0;
	
	keyboard_setup();
	
	testKeyboardAgitator(0x30);
	
	if(KeysToProcess == 1)
	{

		//process keystrokes
		interpretKeypress();

	}
	
}
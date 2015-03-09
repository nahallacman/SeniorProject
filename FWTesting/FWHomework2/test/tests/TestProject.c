#include "unity.h"
#include "PS2.h"
#include "PS2Common.h"
#include "VGA.h"

//extern void keyboard_setup(void);

void setUp(void)
{
}

void tearDown(void)
{
}

void testKeyboardInput(void)
{
	KeysToProcess = 0;
	
	testKeyboardAgitator(0x30);
	
	if(KeysToProcess == 1)
	{

		//process keystrokes
		interpretKeypress();

	}
	
}
#include "unity.h"
#include "PS2.h"
#include "PS2Common.h"
#include "VGA.h"
#include "pf1bit_bmp.h"

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
	
	//testKeyboardAgitator(0x30);
	//char i;
	//for(i = 0x61; i <= 0x7A; i++)
	//{
	//	testKeyboardAgitator(i);
	//}
	
	//testKeyboardAgitator(0x61);
	//testKeyboardAgitator(0x62);
	//testKeyboardAgitator(0x63);
	//testKeyboardAgitator(0x64);	
	
	char a;
	int i;
	for(i = 0; i < 10; i++)
	{
		for(a = 'a'; a <= 'z'; a++)
		{
			placeChar(keyboard_lookup(a));
		}
		for(a = 'A'; a <= 'Z'; a++)
		{
			placeChar(keyboard_lookup(a));
		}
	}
	//placeChar(keyboard_lookup('a'));
	//placeChar(keyboard_lookup('b'));
	
	
	
	//writefullverticalline(400);
	//writefullverticalline(401);
	//writefullverticalline(402);
	//writefullverticalline(403);
	//writefullverticalline(404);
	//writefullverticalline(405);
	
	//change this to an assert instead of an if
	if(KeysToProcess == 1)
	{

		//process keystrokes
		interpretKeypress();

	}
	
	//int test[15000];

	MakeBitmap((int *)VGA_VideoMemory);
}
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

/*
void testFullScreenCharacterPrinting(void)
{
	KeysToProcess = 0;
		
	printTestScreen();	
	
	//change this to an assert instead of an if
	if(KeysToProcess == 1)
	{

		//process keystrokes
		interpretKeypress();

	}
	
	//makebitmap could be altered to have a file name passed in for easier testing of multiple files
	MakeBitmap((int *)VGA_VideoMemory);
	//need to make a bitmap comparator here
}
*/

//tests the translateKeypress() function which takes scan codes from a keyboard and converts them into ascii
void testTranslateKeypress(void)
{
	//41 items in these arrays
	//this first part handles all the normal keypresses
	uint8_t refPrintableArray[42] = {0x1C,0x32,0x21,0x23,0x24,0x2B,0x34,0x33,0x43,0x3B,0x42,0x4B,0x3A,0x31,0x44,0x4D,0x15,0x2D,0x1B,0x2C,0x3C,0x2A,0x1D,0x22,0x35,0x1A,0x45,0x16,0x1E,0x26,0x25,0x2E,0x36,0x3D,0x3E,0x46,0x0E,0x4E,0x55,0x5D,0x29};
	uint8_t PrintableArray[42] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9','`','-','=','\\',' '};
	uint8_t ShiftPrintableArray[42] = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',')','!','@','#','$','%','^','&','*','(','~','_','+','|',' '};
	
	//test all unshifted values
	int i = 0;
	for( i = 0; i < 41; i++)
	{
		TEST_ASSERT_EQUAL_UINT8(translateKeypress(refPrintableArray[i]), PrintableArray[i]);
	}
	
	//TURNING SHIFT ON AND OFF THIS WAY WILL CHANGE IN THE FUTURE
	//turn shift on
	translateKeypress(0x12);
	//test all shifted values
	for( i = 0; i < 41; i++)
	{
		TEST_ASSERT_EQUAL_UINT8(translateKeypress(refPrintableArray[i]), ShiftPrintableArray[i]);
	}
	//turn shift back off
	translateKeypress(0x59);
	
	//this still needs to be extended to each other non-character keypress but they are harder to test
	
}

//tests the keyboard_lookup() function completely.
//uses every value a uint8_t can have, 0 to 0xFF
void testKeyboardLookup(void)
{
	//unsigned char test;
	uint8_t test;
	uint8_t * val;
	int count;
	//test all bitmaps that are in the valid range
	for(test = 0; test < 0x80; test++)
	{
		//printf("KeyboardLookup, test = %X", test);
		val = keyboard_lookup(test);
		for(int i = 0; i < 8; i++)
		{
			//printf("KeyboardLookup, val[%d] = %X, font_map[%d][%d] = %X", i, val[i], test, i, font_map[test][i] );
			TEST_ASSERT_EQUAL_UINT8(val[i], font_map[test][i]);
		}
	}
	//test all bitmaps that are out of bounds which means they just return font_map[0]
	for(test = 0x80, count = 0x80; count < 0x100; test++, count++)
	{
		//printf("KeyboardLookup, test = %X", test);
		val = keyboard_lookup(test);
		for(int i = 0; i < 8; i++)
		{
			//printf("KeyboardLookup, val[%d] = %X, font_map[%d][%d] = %X", i, val[i], test, i, font_map[test][i] );
			TEST_ASSERT_EQUAL_UINT8(val[i], font_map[0][i]);
		}
	}
}

void testKeyboardInput(void)
{
	KeysToProcess = 0;
	
	uint8_t refPrintableArray[42] = {0x1C,0x32,0x21,0x23,0x24,0x2B,0x34,0x33,0x43,0x3B,0x42,0x4B,0x3A,0x31,0x44,0x4D,0x15,0x2D,0x1B,0x2C,0x3C,0x2A,0x1D,0x22,0x35,0x1A,0x45,0x16,0x1E,0x26,0x25,0x2E,0x36,0x3D,0x3E,0x46,0x0E,0x4E,0x55,0x5D,0x29};
	uint8_t PrintableArray[42] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9','`','-','=','\\',' '};
	//uint8_t StringToEnter[13] = {'i', 'p', 't', 'a', 'r', 'g', 'e', 't', 's', 'e', 't', ' '};
	//uint8_t StringToEnter[3] = {'l', 's', ' '};
	uint8_t StringToEnter[3] = {'c', 'd', ' '};
	
	//testKeyboardAgitator(0x30);
	//char i;
	//for(i = 0x61; i <= 0x7A; i++)
	//{
	//	testKeyboardAgitator(i);
	//}
	
	
	//testKeyboardAgitator(0x62);
	//testKeyboardAgitator(0x63);
	//testKeyboardAgitator(0x64);	
/*
	//clear the screen by pressing esc
	translateKeypress(0x76); // esc
	//change this to an assert instead of an if
	if(KeysToProcess == 1)
	{

		//process keystrokes
		interpretKeypress();

	}
	*/
	
//this bit of code takes a string and enters in the appropriate scan codes that match the string
	int j = 0;
	int k = 0;
	for(k = 0; k < 3; k++)
	{
		for( j = 0; j < 41; j++)
		{
			if(PrintableArray[j] == StringToEnter[k])
			{
				testKeyboardAgitator(refPrintableArray[j]); // put the scan code into the system
				if(KeysToProcess == 1) // then process it
				{
					//process keystrokes
					interpretKeypress();
				}
			}
		}
	}
	/*
	int i = 0;
	for( i = 0; i  < 41; i++)
	{
		testKeyboardAgitator(refPrintableArray[i]);
		//change this to an assert instead of an if
		if(KeysToProcess == 1)
		{

			//process keystrokes
			interpretKeypress();

		}
	}
		*/

	//placeChar(keyboard_lookup('a'));
	//placeChar(keyboard_lookup('b'));
	
	//press 1
	//testKeyboardAgitator(0x16);
	
	//enter command: IPTargetSet

	/*
	placeChar(keyboard_lookup('I'));
	placeChar(keyboard_lookup('P'));
	placeChar(keyboard_lookup('T'));
	placeChar(keyboard_lookup('a'));
	placeChar(keyboard_lookup('r'));
	placeChar(keyboard_lookup('g'));
	placeChar(keyboard_lookup('e'));
	placeChar(keyboard_lookup('t'));
	placeChar(keyboard_lookup('S'));
	placeChar(keyboard_lookup('e'));
	placeChar(keyboard_lookup('t'));
	placeChar(keyboard_lookup(' '));
	

	printf("text line = %s", textLine);
	

	*/
	
	
	//writefullverticalline(400);
	//writefullverticalline(401);
	//writefullverticalline(402);
	//writefullverticalline(403);
	//writefullverticalline(404);
	//writefullverticalline(405);


	
	
	//press enter
	testKeyboardAgitator(0x5A);
	//change this to an assert instead of an if
	if(KeysToProcess == 1)
	{

		//process keystrokes
		interpretKeypress();

	}
	
	printf("text line after processing keys and enter = %s", textLine);
	
	//int test[15000];

	MakeBitmap((int *)VGA_VideoMemory, "b1.bmp");
}
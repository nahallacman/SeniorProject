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

void testTranslateKeypress(void)
{
	char test;
	
	test = translateKeypress(0x16);
	TEST_ASSERT_EQUAL_UINT8(test, 0x31);
	
	test = translateKeypress(0x5A); // enter, should return 0x01 for now
	TEST_ASSERT_EQUAL_UINT8(test, 0x01);
	
	test = translateKeypress(0x0E); //`
	TEST_ASSERT_EQUAL_UINT8(test, 0x60); //` no shift: `
	
	translateKeypress(0x58); // caps lock, shift on
	test = translateKeypress(0x0E); //`
	TEST_ASSERT_EQUAL_UINT8(test, 0x7E); //` shift: ~	
	translateKeypress(0x58); // caps lock, shift off

	test = translateKeypress(0x16); //1
	TEST_ASSERT_EQUAL_UINT8(test, 0x31); //1 no shift: 1
	
	translateKeypress(0x58); // caps lock, shift on
	test = translateKeypress(0x16); //1
	TEST_ASSERT_EQUAL_UINT8(test, 0x21); //1 shift: !	
	translateKeypress(0x58); // caps lock, shift off
	
	test = translateKeypress(0x1E); //2
	TEST_ASSERT_EQUAL_UINT8(test, 0x32); //2 no shift: 2
	
	translateKeypress(0x58); // caps lock, shift on
	test = translateKeypress(0x1E); //2
	TEST_ASSERT_EQUAL_UINT8(test, 0x40); //2 shift: @	
	translateKeypress(0x58); // caps lock, shift off
	
	test = translateKeypress(0x26); //3
	TEST_ASSERT_EQUAL_UINT8(test, 0x33); //3 no shift: 3
	
	translateKeypress(0x58); // caps lock, shift on
	test = translateKeypress(0x26); //3
	TEST_ASSERT_EQUAL_UINT8(test, 0x23); //3 shift: #	
	translateKeypress(0x58); // caps lock, shift off	
	
	//this needs to be extended to test every key combination
}

void testKeyboardLookup(void)
{
	//unsigned char test;
	uint8_t test;
	uint8_t * val;
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
	
	
	//testKeyboardAgitator(0x62);
	//testKeyboardAgitator(0x63);
	//testKeyboardAgitator(0x64);	

	
	testKeyboardAgitator(0x76); // esc
	
	//testKeyboardAgitator(0x16); // 1
	
	//testKeyboardAgitator(0x1E); // 2
	//testKeyboardAgitator(0x26); // 3

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
/*
void printTestScreen(void)
{
	char a;
	int i;
	for(i = 0; i < 79; i++) // 95 * 78 = 7500
	{
		for(a = 0x20; a < 0x7F; a++) //95 characters
		{
			placeChar(keyboard_lookup(a));
		}
	}
}
*/
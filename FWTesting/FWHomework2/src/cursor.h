/* 
 * File:   cursor.h
 * Author: mainuser
 *
 * Created on May 9, 2015, 8:34 PM
 */



#ifndef CURSOR_H
#define	CURSOR_H

#ifdef	__cplusplus
extern "C" {
#endif
//#include "PS2.h"
#include "TestCommon.h"
#include <stdint.h>


extern int setandgetCursorLocation(int newcursorLocation);
extern int getCursorLocation();
extern void setCursorLocation(int newCursorLocation);

extern void increaseLineLocationEnd(void);
extern void increaseLineLocationEndOneLine(void);
extern void decreaseLineLocationEnd(void);

int getLineLocationStart(void);
void setLineLocationStart(int newLineLocationStart);

//int CursorLocation = 0;
int CursorLocation;

//int LineLocationStart = 0;
int LineLocationStart;
//int LineLocationEnd = 1;
int LineLocationEnd;

void MoveCursorLeft(void);
void MoveCursorRight(void);
void MoveCursorUp(void);
void MoveCursorDown(void);
void MoveCursorDownOneLine(void);

//#include "PS2.h"

void interpret_keypress(char temp);

void resetPlaceCharLocation(void);

//int textlineindex = 0;
//int textlineindex;

//extern void setTextLineIndex(int newtextlineindex);
//extern int getTextLineIndex(void);

int processLine(uint8_t * textLinePtr);

static const uint8_t commandIPTargetSet[] = "iptargetset";
static const uint8_t commandLS[] = "ls";
static const uint8_t commandCD[] = "cd";
static const uint8_t commandprinttestscreen[] = "printtestscreen";
static const uint8_t commandhelp[] = "help";

#define DefaultIpTargetCommandLength 26
#ifdef __Microcontroller
//char IPTarget[16] = "192.168.11.4";
char IPTarget[16];
//static char defaultIPTargetCommand[DefaultIpTargetCommandLength] = "iptargetset 192.168.11.56";
#else
char IPTarget[16];
#endif



//defining the line length for the printed text line and the newtextLine
#define TEXTLINELENGTH 7500

//buffer for line
uint8_t textLine[TEXTLINELENGTH];
//uint8_t newtextLine[TEXTLINELENGTH];

//text line that will be added to using addtoprintstring(char *)
uint8_t PrintTextLine[TEXTLINELENGTH];
//index for addtoprintstring(char *)
int PrintTextIndex;

void AddToPrintString(char *);
void printStoredString(void);

void press_backspace(void);

char * getIPTarget();

//extern void placeChar(uint8_t * character);
extern void placeChar(uint8_t character);

extern void placeString(char * string);

uint8_t * gettextLine(void);

//function for comparing the two text lines and updating the screen accordingly
void CompareTextLines(char * newtextLine);

void printHelpScreen(void);


//more test code, that way the tests can be run on the hardware and the test environment to make sure things are working correctly.
void printTestScreen(void);

void cursor_init(void);

int ResponseBeginFlag;
int DoneReceivingFlag;

uint8_t CommandLine[200];
void setCommand(uint8_t * TextString);
uint8_t * getCommand(void);
//Flag for command state machine
uint8_t NewCommandFlag;

/*
uint8_t LastCommandLine[200];
void setLastCommand(uint8_t * TextString);
uint8_t * getLastCommand(void);
*/
#ifdef	__cplusplus
}
#endif

#endif	/* CURSOR_H */


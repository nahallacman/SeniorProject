/* 
 * File:   cursor.h
 * Author: mainuser
 *
 * Created on May 9, 2015, 8:34 PM
 */

#include "TestCommon.h"
#include <stdint.h>

#ifndef CURSOR_H
#define	CURSOR_H

#ifdef	__cplusplus
extern "C" {
#endif



extern int setandgetCursorLocation(int newcursorLocation);
extern int getCursorLocation();
extern void setCursorLocation(int newCursorLocation);

extern void increaseLineLocationEnd(void);

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

//#include "PS2.h"

void interpret_keypress(char temp);

void resetPlaceCharLocation(void);

//int textlineindex = 0;
//int textlineindex;

//extern void setTextLineIndex(int newtextlineindex);
//extern int getTextLineIndex(void);

void processLine(uint8_t * textLinePtr);

static const uint8_t commandIPTargetSet[] = "iptargetset";
static const uint8_t commandLS[] = "ls";
static const uint8_t commandCD[] = "cd";
static const uint8_t commandprinttestscreen[] = "printtestscreen";

#ifdef __Microcontroller
char IPTarget[16] = "192.168.11.56";
#define DefaultIpTargetCommandLength 26
static char defaultIPTargetCommand[DefaultIpTargetCommandLength] = "iptargetset 192.168.11.56";
#else
char IPTarget[16];
#endif



//defining the line length for the printed text line and the newtextLine
#define TEXTLINELENGTH 1024

//buffer for line
uint8_t textLine[TEXTLINELENGTH];
uint8_t newtextLine[TEXTLINELENGTH];

void press_backspace(void);

char * getIPTarget();

extern void placeChar(uint8_t * character);

extern void placeString(char * string);

uint8_t * gettextLine(void);

//function for comparing the two text lines and updating the screen accordingly
void CompareTextLines(char * newtextLine);

#ifdef	__cplusplus
}
#endif

#endif	/* CURSOR_H */


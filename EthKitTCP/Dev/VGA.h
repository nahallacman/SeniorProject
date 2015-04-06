/* 
 * File:   VGA.h
 * Author: cal
 *
 * Created on December 26, 2014, 7:15 AM
 */

#ifndef VGA_H
#define	VGA_H


#include <stdint.h>
//#include "PS2Common.h"
#include "TestCommon.h"
//#include "PS2.h"
 
#ifdef	__cplusplus
extern "C" {
#endif

int test;

#ifdef __Microcontroller
//#include "VGA.c"
//#include <plib.h>
//set the priority of the timer2 service routine
#pragma interrupt T2ISR IPL7 vector 8

void T2ISR(void);
void VGA_Setup(void);
void VGA_SetupVideoOutput(void);
//#endif
//#ifndef __Microcontroller
#else
uint32_t _bswap32(uint32_t a);
#endif


void writefullhorizontalline(int line);
void writefullverticalline(int column);

void writehorizontalline(int y1, int y2);
void writeverticalline(int x1, int x2);

void writepixel(int x, int y);

//void writechar(uint8_t * character, int x, int y);

//this is extern so it can be controlled from PS2 stuff, probably shouldn't be permenant
extern void writechar(uint8_t * character);

void resetPlaceCharLocation(void);
extern void setCursorLocation(int newcursorLocation);

void ClearScreen(void);

void MoveCursorLeft(void);
void MoveCursorRight(void);
void MoveCursorUp(void);
void MoveCursorDown(void);

extern void placeChar(uint8_t * character);

void ShiftScreenUp(void);
void ShiftScreenDown(void);
void ShiftScreenLeft(void);
void ShiftScreenRight(void);

void BlinkCursor(void);

void shiftTextRight(void);
void shiftTextLeft(void);

//more test code, that way the tests can be run on the hardware and the test environment to make sure things are working correctly.
void printTestScreen(void);

//int LineWidth = 25;
#define LineWidth 25
//int LineWidth;

//int CursorLocation = 0;
int CursorLocation;
//int LineLocationStart = 0;
int LineLocationStart;
//int LineLocationEnd = 1;
int LineLocationEnd;

//int blinkstate = 0;
int blinkstate;

//these need to be unchanging (const? or something?)
//int VGA_X_MAX = 800;
#define VGA_X_MAX 800
//int VGA_Y_MAX = 600;
#define VGA_Y_MAX 600

//for VGA version 2.0
//int VGA_LineCount = 0;

//const int VGA_VIDEO_MEMORY_SIZE = 15000;
//volatile int VGA_LineCount=0;
volatile int VGA_LineCount;                                                                     //Used to keep a track of current video line
//volatile unsigned long int VGA_VideoMemory[VGA_VIDEO_MEMORY_SIZE];                                          //800 x 600 x 1bit Video Memory
volatile unsigned long int VGA_VideoMemory[15000];
//volatile unsigned long int VGA_VideoMemoryArray[600][25];
//volatile unsigned long int *VGA_VideoMemory = VGA_VideoMemoryArray;
//volatile unsigned long int VGA_VideoMemory[800];
//volatile unsigned long int *VGA_VideoMemoryIndex = VGA_VideoMemory;                                         //Pointer Index into Video Memory
volatile unsigned long int *VGA_VideoMemoryIndex; 
//volatile unsigned long int *VGA_VideoScrollIndex = VGA_VideoMemory;                                         //Pointer Scrolling Index into Video Memory
//volatile unsigned long int *VGA_VideoScrollIndex = VGA_VideoMemory; 

//long int VGA_BackPorch[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};                                                  //Back porch buffer
extern const long int VGA_BackPorch[10]; 

//volatile uint8_t VideoTextFrame[7500];

#ifdef	__cplusplus
}
#endif

#endif	/* VGA_H */


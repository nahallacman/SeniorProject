/* 
 * File:   VGA.h
 * Author: cal
 *
 * Created on December 26, 2014, 7:15 AM
 */

#ifndef VGA_H
#define	VGA_H

#ifdef	__cplusplus
extern "C" {
#endif

            int test;

//#include "VGA.c"
//#include <plib.h>
//set the priority of the timer2 service routine
#pragma interrupt T2ISR IPL7 vector 8

void T2ISR(void);

void VGA_Setup(void);
void VGA_SetupVideoOutput(void);

void writefullhorizontalline(int line);
void writefullverticalline(int column);

void writehorizontalline(int y1, int y2);
void writeverticalline(int x1, int x2);

void writepixel(int x, int y);

//void writechar(char * character, int x, int y);
void writechar(char * character);

void ClearScreen(void);

void MoveCursorLeft(void);
void MoveCursorRight(void);

int LineWidth = 25;

int CursorLocation = 0;
int LineLocationStart = 0;
int LineLocationEnd = 1;

int blinkstate = 0;

//these need to be unchanging (const? or something?)
int VGA_X_MAX = 800;
int VGA_Y_MAX = 600;

//for VGA version 2.0
//int VGA_LineCount = 0;

//const int VGA_VIDEO_MEMORY_SIZE = 15000;
volatile int VGA_LineCount=0;                                                                               //Used to keep a track of current video line
//volatile unsigned long int VGA_VideoMemory[VGA_VIDEO_MEMORY_SIZE];                                          //800 x 600 x 1bit Video Memory
volatile unsigned long int VGA_VideoMemory[15000];
//volatile unsigned long int VGA_VideoMemoryArray[600][25];
//volatile unsigned long int *VGA_VideoMemory = VGA_VideoMemoryArray;
//volatile unsigned long int VGA_VideoMemory[800];
volatile unsigned long int *VGA_VideoMemoryIndex = VGA_VideoMemory;                                         //Pointer Index into Video Memory
volatile unsigned long int *VGA_VideoScrollIndex = VGA_VideoMemory;                                         //Pointer Scrolling Index into Video Memory
long int VGA_BackPorch[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};                                                  //Back porch buffer


#ifdef	__cplusplus
}
#endif

#endif	/* VGA_H */


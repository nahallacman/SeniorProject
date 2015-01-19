/*
 * File:   newmain.c
 * Author: cal
 *
 * Created on November 24, 2014, 11:41 PM
 */

/******************************************************************************
 * Software License Agreement
 *
 * Copyright � 2011 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED ìAS ISî WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 *****************************************************************************/


#include <p32xxxx.h>
#include <plib.h>
//#include "VGA.h"
//#include "PS2.h"




//#pragma config	ICESEL	=	ICS_PGx1	// ICE pin selection

#pragma config POSCMOD=XT, FNOSC=PRIPLL, FPLLIDIV=DIV_2, FPLLMUL=MUL_20, FPLLODIV=DIV_1
#pragma config FPBDIV=DIV_1, FWDTEN=OFF, CP=OFF, BWP=OFF
#pragma config FSOSCEN=OFF, IESO=OFF



//set the priority of the timer3 service routine
//#pragma interrupt T3ISR IPL7 vector 12

//set the priority of the timer4 service routine
//#pragma interrupt T4ISR IPL7 vector 16

//set the priority of the SPI2ISR service routine
//#pragma interrupt SPI2ISR IPL4 vector 31




//void T3ISR(void);

//void T4ISR(void);

//void SPI2ISR(void);

int videoON;
int videoSEL;
int global_count;
int T4STATE = 1;
int T2State;
int KEYPRESSED;
int linecount;

int SPI2STATE = 1;











//this value should be constant
//int PR2VAL1 = 1334000; //doesnt work, guess test, not true limit testing
//int PR2VAL1 = 1333334; //works 59.9999Hz
//int PR2VAL1 = 1333300; // 60.0014Hz
//int PR2VAL1 = 1333000; //60.0149 Hz
//int PR2VAL1 = 1330000; //doesn't work, guess test, not true limit testing
//int PR2VAL1 = 1332000; // doesn't work, 60.0600Hz
//int PR2VAL1 = 1332500; // doesn't work, 60.0374Hz, black screen
//int PR2VAL1 = 1326260; //works, 60.3199HZ  
int const PR2VAL1 = 1326259; // works, 60.3200Hz
//int PR2VAL1 = 1326261;

        //PR2 = 1333000; //59.8417
        //PR2 = 1333334; //59.9572Hz
        //PR2 = 1334000;	//60.2856
	//PR2 = 1333334; //59.9999Hz



//int TESTDATA = 0x55555555;
//int TESTDATA = 0xFFFF0000;
//int TESTDATA = 0xFF000000;
//int TESTDATA = 0xFFFFFFFF;
//int TESTDATA = 0xF0000000;
//int TESTDATA = 0xC000C000;
//int TESTDATA = 0xC0000000;
int TESTDATA = 0x50005000;

//	Function Prototypes
int main(void);

int main(void) {

    //system config
    SYSTEMConfig(80000000L, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);

    int line = 0;
    int linewidth = 25;
    //int i = 0;
    //for(i = 0; i < 15000; i++) // write the whole video frame
    //{
        //VGA_VideoMemory[i] = 0xFF000000;
        //VGA_VideoMemory[i] = 0x55555555;
    //}

    /*
    writefullhorizontalline(0);
    writefullhorizontalline(1);
    writefullhorizontalline(5);//can't see
    writefullhorizontalline(6);//can see
    */

    //writefullhorizontalline(8);
    //writefullhorizontalline(10);
    //writefullhorizontalline(150);
    //writefullhorizontalline(300);
    //writefullhorizontalline(450);
    //writefullhorizontalline(599);

    /*
    writefullhorizontalline(75);
    writefullhorizontalline(150);
    writefullhorizontalline(225);
    writefullhorizontalline(300);
    writefullhorizontalline(375);
    writefullhorizontalline(450);
    writefullhorizontalline(525);
    writefullhorizontalline(599);
*/
    //writehorizontalline(600); // out of frame

    /*
    writefullverticalline(0);
    writefullverticalline(100);
    writefullverticalline(200);
    writefullverticalline(300);
    writefullverticalline(400);
    writefullverticalline(500);
    writefullverticalline(600);
    writefullverticalline(700);
    writefullverticalline(799);
*/
    //writepixel(700, 500);
    //writepixel(700, 501);
    //writepixel(701, 500);
    //writepixel(701, 501);

    char testchar[8] = { 0x3E, 0x63, 0x73, 0x7B, 0x6F, 0x67, 0x3E, 0x00 }; // should be a "0" character
    char cursor[8] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
    //writechar(testchar, 8, 8);
    //writechar(testchar, 32, 64);
    //writechar(keyboard_lookup('0'), 8, 8);
    //writechar(cursor, 8, 32 );
    //writechar(cursor, 32, 8);


    //loop 800 / 8 = 100 times each line
    //loop 600 / 8 = 75 lines

    int i = 0;
    int j = 0;
    int CharNum = 0x20;

    for(i = 0; i < 75; i++)
    {
        for(j = 0; j < 100; j++)
        {
            writechar(keyboard_lookup(CharNum), i*8, j*8);
            if(CharNum < 0x80)
            {
                CharNum++;
            }
            else
            {
                CharNum = 0x20;
            }
        }
    }



	
    keyboard_setup();

    VGA_Setup();

	INTCONbits.MVEC = 1; // turn on mutli vectored mode

	//enable interrupts
	asm("ei");
    //---turn things on---
    T2CONbits.ON = 1; // turn the timer on
    //T3CONbits.ON = 1;
	//T4CONbits.ON = 1;

       SPI2CONbits.ON = 1;//turn SPI2 on
    
    
   
    videoON = 0; //initialize global variable to tell if video is on or off
    videoSEL = 1;
	global_count = 0;//initalize global variable for counting ISR entries
    T4STATE = 1;//initalize state machine for timer 4 / h sync
	T2State = 0;



	//try to start things by putting something in the shift register
	//SPI2BUF = TESTDATA;
	//manually set an SPI flag for testing
	//IFS1bits.SPI2TXIF = 1;
        //IFS1bits.SPI2ATXIF = 1;




    while (1)
    {
        if(PORTDbits.RD7 == 0)
        {
            int testing = 1;
        }
        if(PORTDbits.RD6 == 0)
        { 
            KEYPRESSED = 1;
        }

        
    }
}

/*
void T4ISR(void)
{
    //atomically clear the interrupt flag
    mT4ClearIntFlag();
    //TMR4 = 0; //test, is this necessary?

    switch(T4STATE)
    {
        case 1:
        //PORTGCLR = 0x240; // video must be cleared when it is not in frame
        PORTGCLR = 0x380; // turn video off
        SPI2CONbits.ON = 0;//turn SPI2 off

        //PR4 = 256 + 80;
        PR4 = 80+256;
        //PR4 = 80 + 221;

        
        //SPI2CONbits.

        while( TMR4 < 80 ); // these numbers may need to be tweaked to include the number of cycles wasted before the portd bit can be cleared

        //TMR4 = 0;
        //PORTDCLR = 0x10;

        PORTDSET = 0x10; //set the h-sync pin

        T4STATE = 2;

        //while(TMR4 < 80+256);
    break;
        case 2:
        //while( TMR4 < 80+256 );
        PORTDCLR = 0x10; //clear the h-sync pin
        PR4 = 176;

        //testing getting the SPI video in frame
        //IFS1bits.SPI2TXIF = 1;
        //SPI2BUF = TESTDATA;

        //PORTDSET = 0x10;
        T4STATE = 3;
        
    break;
        case 3:

        //if(linecount < 628 & linecount > 27)
        if(linecount > 21 & linecount < 622)
        {
        SPI2CONbits.ON = 1;//turn SPI2 on
        IFS1bits.SPI2TXIF = 1;
        PORTGSET = 0x380; //turn video on for testing
        }
        PR4 = 1600 ;
        linecount++;


        //delay for back porch before starting video
        //while(TMR4 < 80+256+176); // a quick test shows this may be too long, but is still necessary
                            // this leads me to believe that the signal durring the sync pulse is read as "0", and the brightness is the difference between that value and the values read as pixels
        //while(TMR4 < 80+256+150);
	//videoON = 1;
        
	if(linecount < 600)
	{
		//PORTGINV = 0x100;
		//PORTGSET = 0x240;
		//PORTGSET = 0x380;

            PORTGSET = 0x380; //turn video on for testing

            SPI2CONbits.ON = 1;//turn SPI2 on
            IFS1bits.SPI2TXIF = 1;
                
	}

	//else if(linecount < 600)
	//{
	//	PORTGINV = 0x100;
	//}

	else
	{
		//not in video frame?
		//linecount = 999;
	}
	linecount++;

    T4STATE = 1;

    break;
    }

}
*/
 /*the time sensitive part of VGA operation is the sync pulses, and horizontal video timing
 the times needed:
 horizontal sync pulse:
  * front porch: 40 pixels (80 clocks)
  * sync pulse: 128 pixels (256 clocks)
  * back porch: 88 pixels (176 clocks)
 */

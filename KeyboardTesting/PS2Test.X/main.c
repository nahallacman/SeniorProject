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




#pragma config	ICESEL	=	ICS_PGx1	// ICE pin selection

#pragma config POSCMOD=XT, FNOSC=PRIPLL, FPLLIDIV=DIV_2, FPLLMUL=MUL_20, FPLLODIV=DIV_1
#pragma config FPBDIV=DIV_1, FWDTEN=OFF, CP=OFF, BWP=OFF
#pragma config FSOSCEN=OFF, IESO=OFF

//set the priority of the timer2 service routine
#pragma interrupt T2ISR IPL6 vector 8

//set the priority of the timer3 service routine
#pragma interrupt T3ISR IPL7 vector 12


//set the priority of the timer4 service routine
#pragma interrupt T4ISR IPL5 vector 16

void T2ISR(void);

void T3ISR(void);

void T4ISR(void);

int videoON;
int videoSEL;
int global_count;
int T4State;
int T2State;

//	Function Prototypes
int main(void);

int main(void) {

    //system config
    SYSTEMConfig(80000000L, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);

	//SYSTEMConfig(72000000L, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);
	
    //---keyboard configuration begin---
    //using RD6 for PS2CLK   //  PORTDbits.RD6;
    TRISDbits.TRISD6 = 1; // set to input
    //using RD7 for PS2DATA
    TRISDbits.TRISD7 = 1; // set to input

    //using internal pullup resistors
    CNPUEbits.CNPUE15 = 1; //PS2CLK pullup
    CNPUEbits.CNPUE16 = 1; //PS2DATA pullup
    //---keyboard configuration end---

    //---VGA configuration begin---
    
    //---VGA port bits begin---
    //using RB11 for video/composite jumper, only required on the duinomite hardware
    //PORTBbits.RB11 = ?
    TRISBbits.TRISB11 = 0; //set to output
    PORTBbits.RB11 = 0 ; // select VGA //NOT CONFIRMED
    //using RG8 for video
    TRISGbits.TRISG8 = 0; //set to output
    PORTGbits.RG8 = 0;// initialize value just in case, may be unnecessary
    //using RD4 for horizontal sync
    TRISDbits.TRISD4 = 0; //set to output
    PORTDbits.RD4 = 1;// initialize value to high since active is low
    //using RB12 for vertical sync
    TRISBbits.TRISB12 = 0; //set to output
    PORTBbits.RB12 = 1;// initialize value to high since active is low
    //---VGA port bits end ---
    
    
    //timer 2 and 3 config
	T2CONbits.T32 = 1; //This sets operation to 32 bit mode using timers 2 and 3 together
	T2CONbits.TCKPS = 0; //set the prescaler to 1:1
    T2CONbits.ON = 0; // make sure the timer is off
    
	//PR2 = 100; 
	//PR2 = 1199000; // set the period register to interrupt at 60Hz // not confirmed in math
    //PR2 = 1333334; //59.9572Hz
	//PR2 = 1333330;
	//PR2 = 1333000; //59.8417
	//PR2 = 1334000;	//60.2856
	//PR2 = 1333500;
	//PR2 = 1333434;
	PR2 = 1333334;
	//PR2 = 80000000;

	TMR2 = 0x0; // zero out the timer register

	//OpenTimer23( T23_ON | T23_SOURCE_INT | T2_32BIT_MODE_ON | T23_PS_1_1 , 100);

	mT2ClearIntFlag(); // clear the interupt flag just in case    
    //configure the timer 2 priority
    mT2SetIntPriority(6);
    // and sub priority
    mT2SetIntSubPriority(0);
    //Then enable the interrupt
    mT2IntEnable(1);


    //timer 2 and 3 config
	T3CONbits.TCKPS = 0; //set the prescaler to 1:1
    T3CONbits.ON = 0; // make sure the timer is off
    //PR3 = 0;//PR3 = 150; //PR2 = 1199000; // set the period register to interrupt at 60Hz // not confirmed in math
    TMR3 = 0x0; // zero out the timer register

	//OpenTimer23( T23_ON | T23_SOURCE_INT | T2_32BIT_MODE_ON | T23_PS_1_1 , 100);

	mT3ClearIntFlag(); // clear the interupt flag just in case    
    //configure the timer 2 priority
    mT3SetIntPriority(7);
    // and sub priority
    mT3SetIntSubPriority(0);
    //Then enable the interrupt
    mT3IntEnable(1);


    //timer 4 config
    T4CONbits.TCKPS = 0;//set the prescaler to 1:1
    T4CONbits.ON = 0;
    PR4 = 2112;//this is a guess
    TMR4 = 0; // zero out the timer register

    mT4ClearIntFlag(); // clear the interupt flag just in case
    //configure the timer 2 priority
    mT4SetIntPriority(5);
    // and sub priority
    mT4SetIntSubPriority(0);
    //Then enable the interrupt
    mT4IntEnable(1);
   
    
    //mT2ClearIntFlag(); // clear the interupt flag just in case
    
    //---VGA configuration end---

	INTCONbits.MVEC = 1; // turn on mutli vectored mode

	//enable interrupts
	asm("ei");
    //---turn things on---
    T2CONbits.ON = 1; // turn the timer on
    //T3CONbits.ON = 1;
	T4CONbits.ON = 1;
    
    
   
    videoON = 0; //initialize global variable to tell if video is on or off
    videoSEL = 1;
	global_count = 0;//initalize global variable for counting ISR entries
    T4State = 0;//initalize state machine for timer 4 / h sync
	T2State = 0;

    while (1)
    {
        if(videoON == 1)
        {
			if( videoSEL == 1 )
			{
				PORTGINV = 0x100;
			}
			else
			{
				PORTGSET = 0x100; // only on video pattern
			}
			if(PORTDbits.RD6 == 0)
			{
				videoSEL = 2;
			}
        }
        else
        {
            PORTGCLR = 0x100; //make sure it is off while not displaying video
        }
    }
}



void T2ISR(void)
{
    //increment global counter
    global_count++;
    //atomically clear the interrupt flag
    mT2ClearIntFlag();
    //while(1);
    //begin t4isr
    T4CONbits.ON = 1;
}

void T3ISR(void)
{
	mT3ClearIntFlag();
	//mT2ClearIntFlag();
	if(T2State == 0)
	{
		PORTBbits.RB12 = 0; // sync pulse is 0's
    	//increment global counter
    	//global_count++;
		PR2 = 8480; //delay next state for 8480 clocks
		T2State = 1;
	}
	else
	{
		PORTBbits.RB12 = 1; //back porch is 1
		PR2 = 1333334 - 8480;	
		T2State = 0;
	}
}


	//begin t4isr
    //T4CONbits.ON = 1;
	//it is possible that the T4State variable will need to be reset here
	/*
	switch(T4State)
	{
	    case 0:     
			video = 0;
	        //error?
	        break;
	
	    case 1://front porch is done?
	        //sync pulse
	        PORTBbits.RB12 = 0; // sync pulse is 0's
	        break;
	    case 2:
	    case 3:
	    case 4:
	    case 5:
	        break;
	    case 6:
	        PORTBbits.RB12 = 1; //back porch is 1
	        break;
	    case 7:
	    case 8:
	    case 9:
	    case 10:
	    case 11:
	    case 12:
	    case 13:
	    case 14:
	    case 15:
	    case 16:
	    case 17:
	    case 18:
	    case 19:
	    case 20:
	    case 21:
	    case 22:
	    case 23:
	    case 24:
	    case 25:
	    case 26:
	    case 27:
	    case 28:
	
	        PORTBbits.RB12 = 1; //back porch is 1
	        break;
	    case 628:
	        //end the ISR
	        T4State = 0;
	        break;
	    default:
		break;
	   }
	T4State++;
	*/


void T4ISR(void)
{
	//atomically clear the interrupt flag
    mT4ClearIntFlag();
	//TMR4 = 0; //test, is this necessary?
	while( TMR4 < 80 ); // these numbers may need to be tweaked to include the number of cycles wasted before the portd bit can be cleared
    //PORTDCLR = 0x10;
	PORTDSET = 0x10;
	videoON = 0;
    //PORTDbits.RD4 = 0;
    while( TMR4 < 80+256 );
	PORTDCLR = 0x10;
    //PORTDSET = 0x10;
	//delay for back porch before starting video
    while(TMR4 < 80+256+176);
	videoON = 1;
}

 /*the time sensitive part of VGA operation is the sync pulses, and horizontal video timing
 the times needed:
 horizontal sync pulse:
  * front porch: 40 pixels (80 clocks)
  * sync pulse: 128 pixels (256 clocks)
  * back porch: 88 pixels (176 clocks)
 */
			
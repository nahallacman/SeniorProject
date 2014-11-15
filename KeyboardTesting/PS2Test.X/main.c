/*
 * File:   main.c
 * Author: cal
 *
 * Created on October 26, 2014, 8:35 PM
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


/*
 The purpose of this project is to use the SOLDERLESS breadboard with the
 * pic32mx795L512 H,  NOT L
 to test the keyboard interaction
 */

#include <p32xxxx.h>
#include <plib.h>

//	Function Prototypes
int main(void);


#pragma config	ICESEL	=	ICS_PGx1	// ICE pin selection



#pragma config POSCMOD=XT, FNOSC=PRIPLL, FPLLIDIV=DIV_2, FPLLMUL=MUL_18, FPLLODIV=DIV_1
#pragma config FPBDIV=DIV_1, FWDTEN=OFF, CP=OFF, BWP=OFF
#pragma config FSOSCEN=OFF, IESO=OFF


int main(void) {

    //system config
    SYSTEMConfig(80000000L, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);

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
    //using RB11 for video/composite jumper, only required on the duinomite hardware
    //PORTBbits.RB11 = ?
    TRISBbits.TRISB11 = 0; //set to output
    PORTBbits.RB11 = 0; // select VGA //NOT CONFIRMED
    //using RG8 for video
    TRISGbits.TRISG8 = 0; //set to output
    PORTGbits.RG8 = 0;// initialize value just in case, may be unnecessary
    //using RD4 for horizontal sync
    TRISDbits.TRISD4 = 0; //set to output
    PORTDbits.RD4 = 0;// initialize value just in case, may be unnecessary
    //using RB12 for vertical sync
    TRISBbits.TRISB12 = 0; //set to output
    PORTBbits.RB12 = 0;// initialize value just in case, may be unnecessary
    //timer 2 and 3 config
    T2CONbits.T32 = 1; //This sets operation to 32 bit mode using timers 2 and 3 together
    T2CONbits.TCKPS = 0; //set the prescaler to 1:1
    T2CONbits.ON = 0; // make sure the timer is off
    PR2 = -1; // max out the period register just in case
    TMR2 = 0; // zero out the timer register
    //timer 4 config
    T4CONbits.TCKPS = 0;
    T4CONbits.ON = 0;
    PR4 = -1;// max out the period register just in case
    TMR4 = 0; // zero out the timer register

    //---VGA configuration end---


    /* * * * this code for keyboard testing * * * *
    int i = 0;
    int delay = 0;
    //int CLOCK_DELAY = 20000; // delay for at least 50 micro seconds //thjs value needs updating
    while (1)
    {
        if(PORTDbits.RD6 == 0)
        {
            i = PORTDbits.RD7;
            //for( delay = 0; delay < CLOCK_DELAY; delay++);
        }
        else
        {
            i = PORTDbits.RD7;
            //for( delay = 0; delay < CLOCK_DELAY; delay++);
        }
    }
    */

    //for this test I will try to manually bitbang a 800x600 60Hz standard VGA
    // later on things can be implemented using the output comparator,
    // SPI as a serial shift register for clocking out data bits, and
    // DMA to feed the SPI device.
    int i,j,k,l,m = 0;
    int line = 0;
    int loop = 0;
    int LINEMAX = 1326320;
    int LOOPMAX = 2112; // number of clock cycles for one line
    int LOOPMAXd4;
    LOOPMAXd4 = LOOPMAX / 4;

    //this implementation was not actually expected to work. All of the numbers are done with assumptions that nothing else in the code takes any time. A real solution shall be built, but this is a starting framework that will give me a basis to work with or against.
    T2CONbits.ON = 1; // turn the timers on
    T4CONbits.ON = 1;
    while(1)
    {
        /*
         * Vertical lines info:
         * front port: 1 line (line 0)
         * sync pules: 4 lines (line 1-5)
         * back porch: 23 lines (line 6-28)
         * video: 600 lines (line 29-629)
         */
        while(TMR2 < LINEMAX);
        TMR2 = 0;
        for( line = 0; line < 628 ; line++ )
        {
            TMR4 = 0;
            switch(line)
            {
                case 0:     //front porch
                    PORTBbits.RB12 = 1; // front porch is 1
                    while (TMR4 < LOOPMAX); //
                    break;
                case 1:     //sync pulse
                case 2:
                case 3:
                case 4:
                case 5:
                    PORTBbits.RB12 = 0; // sync pulse is 0
                    while (TMR4 < LOOPMAX);
                    break;
                case 6:
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
                    while (TMR4 < LOOPMAX);
                    break;
                default:
                    
                    /*the time sensitive part of VGA operation is the sync pulses, and horizontal video timing
                    the times needed:
                    horizontal sync pulse:
                     * front porch: 40 pixels (80 clocks)
                     * sync pulse: 128 pixels (256 clocks)
                     * back porch: 88 pixels (176 clocks)
                    */
                    while(TMR4 < 80); // these numbers need adjusting to the frame reset
                    PORTDbits.RD4 = 1;
                    while(TMR4 < 80+256);
                    PORTDbits.RD4 = 0;
                    while(TMR4 < 80+255+176 );
                    /*
                     * Video: 800 pixels (1600 clocks)
                     */
                    PORTGSET = 0x100; // turn the video on to start
                    while( TMR4 < LOOPMAXd4 );
                    PORTGCLR = 0x100; // clear video bit
                    while(TMR4 < LOOPMAXd4 * 2);
                    PORTGSET = 0x100; // set the video bit
                    while(TMR4 < LOOPMAXd4 * 3);
                    PORTGCLR = 0x100; // clear video bit
                    while(TMR4 < LOOPMAX);

                    /*
                    for(l = 0; l < 16; l++) // make 16 zones on screen, hopefully making 8 lines
                    {
                        PORTGINV = 0x100; // flip video bit
                        for(m = 0; m < 100; m++); // make each zone 50 pixels wide (16 * 100 = 1600)
                    }
                    */
                    break;
            }
        }
    }
}




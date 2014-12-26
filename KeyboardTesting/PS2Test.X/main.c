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
#pragma interrupt T2ISR IPL7 vector 8

//set the priority of the timer3 service routine
//#pragma interrupt T3ISR IPL7 vector 12

//set the priority of the timer4 service routine
#pragma interrupt T4ISR IPL7 vector 16

//set the priority of the SPI2ISR service routine
//#pragma interrupt SPI2ISR IPL4 vector 31

void T2ISR(void);

//void T3ISR(void);

void T4ISR(void);

//void SPI2ISR(void);

int videoON;
int videoSEL;
int global_count;
int T4STATE = 1;
int T2State;
int KEYPRESSED;
int linecount;

int SPI2STATE = 1;

int LineWidth = 25;

//these need to be unchanging
int VGA_X_MAX = 800;
int VGA_Y_MAX = 600;

//for VGA version 2.0
//int VGA_LineCount = 0;

//const int VGA_VIDEO_MEMORY_SIZE = 15000;
volatile int VGA_LineCount=0;                                                                               //Used to keep a track of current video line
//volatile unsigned long int VGA_VideoMemory[VGA_VIDEO_MEMORY_SIZE];                                          //800 x 600 x 1bit Video Memory
volatile unsigned long int VGA_VideoMemory[15000];
//volatile unsigned long int VGA_VideoMemory[800];
volatile unsigned long int *VGA_VideoMemoryIndex = VGA_VideoMemory;                                         //Pointer Index into Video Memory
volatile unsigned long int *VGA_VideoScrollIndex = VGA_VideoMemory;                                         //Pointer Scrolling Index into Video Memory
long int VGA_BackPorch[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};                                                  //Back porch buffer
//int VGA_TextConsoleX=0,VGA_TextConsoleY=VGA_Y_MAX-CONSOLE_FONT_HIEGHT;                                      //Global variables used for VGA_Locate, used by _mon_putc


void writefullhorizontalline(int line);
void writefullverticalline(int column);

void writehorizontalline(int y1, int y2);
void writeverticalline(int x1, int x2);

void writepixel(int x, int y);

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
    int i = 0;
    //for(i = 0; i < 15000; i++) // write the whole video frame
    //{
        //VGA_VideoMemory[i] = 0xFF000000;
        //VGA_VideoMemory[i] = 0x55555555;
    //}
    writefullhorizontalline(0);
    writefullhorizontalline(1);
    writefullhorizontalline(5);//can't see
    writefullhorizontalline(6);//can see
    //writefullhorizontalline(8);
    //writefullhorizontalline(10);
    //writefullhorizontalline(150);
    //writefullhorizontalline(300);
    //writefullhorizontalline(450);
    //writefullhorizontalline(599);

    writefullhorizontalline(75);
    writefullhorizontalline(150);
    writefullhorizontalline(225);
    writefullhorizontalline(300);
    writefullhorizontalline(375);
    writefullhorizontalline(450);
    writefullhorizontalline(525);
    writefullhorizontalline(599);

    //writehorizontalline(600); // out of frame

    writefullverticalline(0);
    writefullverticalline(100);
    writefullverticalline(200);
    writefullverticalline(300);
    writefullverticalline(400);
    writefullverticalline(500);
    writefullverticalline(600);
    writefullverticalline(700);
    writefullverticalline(799);

    writepixel(700, 500);
    //writepixel(700, 501);
    //writepixel(701, 500);
    //writepixel(701, 501);

    VGA_SetupVideoOutput();


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
    
	//using RG8 for video on duinomite, green on Cal's project
    TRISGbits.TRISG8 = 0; //set to output
    PORTGbits.RG8 = 1;// initialize value just in case, may be unnecessary
    
	//using RG6 for video blue on Cal's project
	//TRISGbits.TRISG6 = 0; //set to output
    //PORTGbits.RG6 = 0;// initialize value just in case, may be unnecessary
	//conflict with SPI2 so using RG7 (USBFAULT)
	TRISGbits.TRISG7 = 0;
	PORTGbits.RG7 = 0;

	//using RG9 for video red on Cal's project
    TRISGbits.TRISG9 = 0; //set to output
    PORTGbits.RG9 = 0;// initialize value just in case, may be unnecessary

	//using RD4 for horizontal sync
    TRISDbits.TRISD4 = 0; //set to output
    PORTDbits.RD4 = 1;// initialize value to high since active is low
    //using RB12 for vertical sync
    TRISBbits.TRISB12 = 0; //set to output
    PORTBbits.RB12 = 1;// initialize value to high since active is low
    //---VGA port bits end ---
 
	//---SPI2 for video config begin---
    SPI2BRG = 0; // set BRG value to 0 for 40MHz operation
	//need to confirm the 40MHz operation
	//SPI2TX = TESTDATA;

	//need to figure out the polarity of video signals for the SPI device
	//I believe it is active high video, but I do not know for sure
	SPI2CONbits.CKE = 0; //these values are copy pasted, not checked 
    SPI2CONbits.CKP = 0;
    SPI2CONbits.SMP = 0;

    SPI2CONbits.MODE16 = 0; //set SPI device to 32 bit operation
    SPI2CONbits.MODE32 = 1;

    //guessing config values to try and make SPI run
    SPI2CONbits.FRMEN = 1; // enable framed mode
     SPI2CONbits.FRMSYNC = 1; //slave select line is input, slave mode
     SPI2CONbits.FRMPOL = 1;

    SPI2CONbits.MSTEN = 1;

    //SPI2CONbits. = 1; //disable the SDI pin
    SPI2CONSET = 0x10;

        //SPI2CONbits.STXISEL = 0b10;//half empty
	SPI2CONbits.STXISEL = 0b01; // interrupt when buffer is empty, but shift register is not
        //SPI2CONbits.STXISEL = 0b00;//interrupt when shift register is empty

        SPI2CONbits.SSEN = 0; // disable the slave select control

        SPI2CONbits.MSSEN = 0; // Slave select SPI support is disabled

	//could be useful, but don't use yet.
	//SPI2CONbits.ENHBUF = 1; //use the enhanced buffering

	//compiler doesn't recognize this value
	//SPI2CONbits.MCLKSEL = 0; //use PBclk not MCLK for the baud rate generator
	
	//SPI2CONbits.ON = 1;//turn SPI2 on
	//SPI2CONbits.ON = 0;//testing

	//---configure SPI2 interrupts---
	//only using transmit interrupt
	//IEC1bits.SPI2ATXIE = 1;
	IFS1bits.SPI2TXIF = 0;

	//IPC7bits.SPI2TX = 0b100;
	//IPC7SET = 10000000;//priortiy bits 26, 27, 28, set bit 28 for priority 2
        IPC7bits.SPI2IP = 2;
	//IPC7CLR = 3000000; //clear subpriority bits 25 and 24
        IPC7bits.SPI2IS = 0;

	//---SPI2 for video config end---

    //timer 2 and 3 config
	//T2CONbits.T32 = 1; //This sets operation to 32 bit mode using timers 2 and 3 together
	T2CONbits.TCKPS = 0; //set the prescaler to 1:1
    T2CONbits.ON = 0; // make sure the timer is off
    
	//PR2 = 100; 
	//PR2 = 1199000; // set the period register to interrupt at 60Hz // not confirmed in math


        //PR2 = 1333000; //59.8417
        //PR2 = 1333334; //59.9572Hz
        //PR2 = 1334000;	//60.2856
	//PR2 = 1333334; //59.9999Hz

    //PR2 = PR2VAL1;
    PR2 = 0x845;

    TMR2 = 0x0; // zero out the timer register

    //OpenOC1(OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_CONTINUE_PULSE, 0, 0x110);
    //OpenOC1(OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_CONTINUE_PULSE, 0, 0x108);
OpenOC1(OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_CONTINUE_PULSE, 0, 0x100);

    //OpenTimer23( T23_ON | T23_SOURCE_INT | T2_32BIT_MODE_ON | T23_PS_1_1 , 100);

    mT2ClearIntFlag(); // clear the interupt flag just in case
    //configure the timer 2 priority
    mT2SetIntPriority(7);
    // and sub priority
    mT2SetIntSubPriority(0);
    //Then enable the interrupt
    mT2IntEnable(1);

/*
    //timer 2 and 3 config
    T3CONbits.TCKPS = 0; //set the prescaler to 1:1
    T3CONbits.ON = 0; // make sure the timer is off
    //PR3 = 0;//PR3 = 150; //PR2 = 1199000; // set the period register to interrupt at 60Hz // not confirmed in math
    TMR3 = 0x0; // zero out the timer register

    //OpenTimer23( T23_ON | T23_SOURCE_INT | T2_32BIT_MODE_ON | T23_PS_1_1 , 100);

    mT3ClearIntFlag(); // clear the interupt flag just in case
    //configure the timer 2 priority
    mT3SetIntPriority(1);
    // and sub priority
    mT3SetIntSubPriority(0);
    //Then enable the interrupt
    mT3IntEnable(1);
*/

    //timer 4 config
    T4CONbits.TCKPS = 0;//set the prescaler to 1:1
    T4CONbits.ON = 0;
    //PR4 = 2112;//this is a guess
    PR4 = 2111; // this is a slightly better guess, giving 37.8788 khz refresh, but it doesn't quite work
    TMR4 = 0; // zero out the timer register

    mT4ClearIntFlag(); // clear the interupt flag just in case
    //configure the timer 2 priority
    mT4SetIntPriority(7);
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
        if(PORTDbits.RD6 == 0)
        { 
            KEYPRESSED = 1;
        }

        
    }
}


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
        /*
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
*/
        T4STATE = 1;
        
     break;
    }

}

 /*the time sensitive part of VGA operation is the sync pulses, and horizontal video timing
 the times needed:
 horizontal sync pulse:
  * front porch: 40 pixels (80 clocks)
  * sync pulse: 128 pixels (256 clocks)
  * back porch: 88 pixels (176 clocks)
 */
			

void T2ISR(void)
{
    //IFS0bits.T2IF = 0;
    IFS0CLR = 0x100; // clear T2IF atomically
    //mT2ClearIntFlag();
    VGA_LineCount++;
    if(VGA_LineCount > 21 && VGA_LineCount < 622)                                                           //If we are in a video line copy memory to spi port
    {
      	DCH0SSA = KVA_TO_PA((void*) (VGA_VideoMemoryIndex));                                                //Update the DMA Channel 0 with the next line address
        DmaChnEnable(DMA_CHANNEL1);                                                                         //Start the transfer
        VGA_VideoMemoryIndex+=25;                                                                           //Incroment the next line Index pointer, 25*32bit bytes = 800bits
        //SPI2CONbits.ON = 1;//turn SPI2 on
        //IFS1bits.SPI2TXIF = 1;
    }

    if(VGA_LineCount==1)
    {
        PORTBbits.RB12 = 0; // sync pulse is 0's
    }                                                              //Vertical Sync Pulse is generated over Horizontal line 1 to 4, Set Low
    if(VGA_LineCount==5)
    {
        PORTBbits.RB12 = 1; //Set High
    }
    if(VGA_LineCount==628)                                                                                  //We have delt with all 628 lines so reset line count and video memory pointer
    {
        VGA_LineCount = 0;
        VGA_VideoMemoryIndex = VGA_VideoMemory;
    }
    
}


void VGA_SetupVideoOutput(void)
{
    //SpiChnOpen(SPI_CHANNEL2, SPI_OPEN_MSTEN | SPI_OPEN_MODE32 | SPI_OPEN_FRMEN | SPI_OPEN_FSP_IN | SPI_OPEN_FSP_HIGH,2);
    //SpiChnEnable(SPI_CHANNEL2, TRUE);                                                                       //Enable the SPI Port

    DmaChnOpen(DMA_CHANNEL1, 1, DMA_OPEN_DEFAULT);                                                          //We are using channel 1 to start the video line transfer with the back porch
    DmaChnSetEventControl(DMA_CHANNEL1, DMA_EV_START_IRQ_EN | DMA_EV_START_IRQ(_SPI2_TX_IRQ));              //Send data to SPI port when empty
    DmaChnSetTxfer(DMA_CHANNEL1, (void*)VGA_BackPorch, (void *)&SPI2BUF, 9, 4, 4);                          //Set the address to the back porch buffer, just zero's

    DmaChnOpen(DMA_CHANNEL0, 0, DMA_OPEN_DEFAULT);                                                          //Channel 0 is chained to channel 1 and is used to output the video
    DmaChnSetEventControl(DMA_CHANNEL0, DMA_EV_START_IRQ_EN | DMA_EV_START_IRQ(_SPI2_TX_IRQ));              //Send data to SPI port when empty
    DmaChnSetTxfer(DMA_CHANNEL0, (void*)VGA_VideoMemory, (void *)&SPI2BUF, 100, 4, 4);                      //Set the address to the start of video memory
    DmaChnSetControlFlags(DMA_CHANNEL0, DMA_CTL_CHAIN_EN | DMA_CTL_CHAIN_DIR);                              //Chain DMA 0 so that it will start on completion of the DMA 1 transfer

    //mT2SetIntPriority(7);                                                                                   //Timer 2 interrupt is used to start the DMA transfer and more
    //mT2IntEnable(INT_ENABLED);                                                                              //Enable the interrupt
}

void writefullhorizontalline(int line)
{
    int i = 0;
    for(i = 0; i < 25; i++) // write a line
    {
        VGA_VideoMemory[line*LineWidth+i] = 0xFFFFFFFF;
    }
}

void writefullverticalline(int column)
{
    int i = 0;
    //int j = 0;
    //int columndiv = column / 25;
    //int columnremainder = column % 32;
    //for(i=0; i< 600; i++)
   // {
            //VGA_VideoMemory[i*LineWidth+columnremainder] |= 1; //0x100000000 >> columnremainder;
    //        VGA_VideoMemory[i*25] |= 1;
   // }

    int Bit;
    int Byte;

    for(i = 0; i < VGA_Y_MAX; i++)
    {
        Byte = (i*25) + (column/32);
        //Bit = 0x80000000 >> x - (32*(x/32)); // what is this 32 * x / 32 operation for??s
        Bit = 0x80000000 >> column; // doesn't seem to hurt anything... we do this due to the order of things being shifed out of the SPI device
        VGA_VideoMemory[Byte] |= Bit;
    }
}


void writehorizontalline(int y1, int y2)
{
    int i = 0;

}
void writeverticalline(int x1, int x2)
{
    
}

//so far only writes a pixel
void writepixel(int x, int y)
{
    if(x < VGA_X_MAX && y < VGA_Y_MAX)
    {
        int Bit;
        int Byte;

        Byte = (y*25) + (x/32);
        //Bit = 0x80000000 >> x - (32*(x/32)); // what is this 32 * x / 32 operation for??s
        Bit = 0x80000000 >> x; // doesn't seem to hurt anything...

        VGA_VideoMemory[Byte] |= Bit;
    }
}
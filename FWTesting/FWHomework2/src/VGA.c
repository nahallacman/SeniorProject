#include "VGA.h"
//this include is soley for the  #define __Microcontroller line. It might be good to take that into another file.
#include "TestCommon.h"

const long int VGA_BackPorch[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

#ifdef __Microcontroller

//not sure about this placement, maybe it can go outside of the #ifdef?
//for _bswapw
// and a lot more!
#include <plib.h>

void VGA_Setup(void)
{
    VGA_VideoMemoryIndex = VGA_VideoMemory;

    VGA_SetupVideoOutput();

    
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

	//T board: pin 26
	//using RD4 for horizontal sync
    TRISDbits.TRISD4 = 0; //set to output
    PORTDbits.RD4 = 1;// initialize value to high since active is low
    //T board: pin 20
	//using RB12 for vertical sync
    //TRISBbits.TRISB12 = 0; //set to output
    //PORTBbits.RB12 = 1;// initialize value to high since active is low
    TRISBbits.TRISB8 = 0;
    PORTBbits.RB8 = 1;
    //---VGA port bits end ---

	//---SPI2 for video config begin---
        //moving to SPI4 for video config
    //SPI2BRG = 0; // set BRG value to 0 for 40MHz operation
    SPI4BRG = 0;
	//need to confirm the 40MHz operation
	//SPI2TX = TESTDATA;

	//need to figure out the polarity of video signals for the SPI device
	//I believe it is active high video, but I do not know for sure
    SPI4CONbits.CKE = 0; //these values are copy pasted, not checked
    SPI4CONbits.CKP = 0;
    SPI4CONbits.SMP = 0;

    SPI4CONbits.MODE16 = 0; //set SPI device to 32 bit operation
    SPI4CONbits.MODE32 = 1;

    //guessing config values to try and make SPI run
    SPI4CONbits.FRMEN = 1; // enable framed mode
     SPI4CONbits.FRMSYNC = 1; //slave select line is input, slave mode
     SPI4CONbits.FRMPOL = 1;

    SPI4CONbits.MSTEN = 1;

    //SPI4CONbits. = 1; //disable the SDI pin
    SPI4CONSET = 0x10;

        //SPI4CONbits.STXISEL = 0b10;//half empty
	SPI4CONbits.STXISEL = 0b01; // interrupt when buffer is empty, but shift register is not
        //SPI4CONbits.STXISEL = 0b00;//interrupt when shift register is empty

        SPI4CONbits.SSEN = 0; // disable the slave select control

        SPI4CONbits.MSSEN = 0; // Slave select SPI support is disabled

	//could be useful, but don't use yet.
	//SPI4CONbits.ENHBUF = 1; //use the enhanced buffering

	//compiler doesn't recognize this value
	//SPI4CONbits.MCLKSEL = 0; //use PBclk not MCLK for the baud rate generator

	//SPI4CONbits.ON = 1;//turn SPI2 on
	//SPI4CONbits.ON = 0;//testing

	//---configure SPI2 interrupts---
	//only using transmit interrupt
	//IEC1bits.SPI2ATXIE = 1;
	//IFS1bits.SPI2TXIF = 0;
        //IEC1bits.SPI = 1;
        IFS1bits.SPI2TXIF = 0;

	//IPC7bits.SPI2TX = 0b100;
	//IPC7SET = 10000000;//priortiy bits 26, 27, 28, set bit 28 for priority 2
        IPC7bits.SPI2IP = 4;
        //IPC8bits.SPI4IP = 2;
	//IPC7CLR = 3000000; //clear subpriority bits 25 and 24
        IPC7bits.SPI2IS = 0;
        //IPC8bits.SPI4IS = 0;

	//---SPI4 for video config end---

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
/*
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

*/
    //mT2ClearIntFlag(); // clear the interupt flag just in case

    //---VGA configuration end---
}

void VGA_SetupVideoOutput(void)
{
    //SpiChnOpen(SPI_CHANNEL2, SPI_OPEN_MSTEN | SPI_OPEN_MODE32 | SPI_OPEN_FRMEN | SPI_OPEN_FSP_IN | SPI_OPEN_FSP_HIGH,2);
    //SpiChnEnable(SPI_CHANNEL2, TRUE);                                                                       //Enable the SPI Port

    DmaChnOpen(DMA_CHANNEL1, 1, DMA_OPEN_DEFAULT);                                                          //We are using channel 1 to start the video line transfer with the back porch
    DmaChnSetEventControl(DMA_CHANNEL1, DMA_EV_START_IRQ_EN | DMA_EV_START_IRQ(_SPI4_TX_IRQ));              //Send data to SPI port when empty
    DmaChnSetTxfer(DMA_CHANNEL1, (void*)VGA_BackPorch, (void *)&SPI4BUF, 9, 4, 4);                          //Set the address to the back porch buffer, just zero's

    DmaChnOpen(DMA_CHANNEL0, 0, DMA_OPEN_DEFAULT);                                                          //Channel 0 is chained to channel 1 and is used to output the video
    DmaChnSetEventControl(DMA_CHANNEL0, DMA_EV_START_IRQ_EN | DMA_EV_START_IRQ(_SPI4_TX_IRQ));              //Send data to SPI port when empty
    DmaChnSetTxfer(DMA_CHANNEL0, (void*)VGA_VideoMemory, (void *)&SPI4BUF, 100, 4, 4);                      //Set the address to the start of video memory
    DmaChnSetControlFlags(DMA_CHANNEL0, DMA_CTL_CHAIN_EN | DMA_CTL_CHAIN_DIR);                              //Chain DMA 0 so that it will start on completion of the DMA 1 transfer

    //mT2SetIntPriority(7);                                                                                   //Timer 2 interrupt is used to start the DMA transfer and more
    //mT2IntEnable(INT_ENABLED);                                                                              //Enable the interrupt
}



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
        //SPI4CONbits.ON = 1;//turn SPI2 on
        //IFS1bits.SPI2TXIF = 1;
    }

    if(VGA_LineCount==1)
    {
        //PORTBbits.RB12 = 0; // sync pulse is 0's
        PORTBbits.RB8 = 0;
    }                                                              //Vertical Sync Pulse is generated over Horizontal line 1 to 4, Set Low
    if(VGA_LineCount==5)
    {
        //PORTBbits.RB12 = 1; //Set High
        PORTBbits.RB8 = 1;
    }
    if(VGA_LineCount==628)                                                                                  //We have delt with all 628 lines so reset line count and video memory pointer
    {
        VGA_LineCount = 0;
        VGA_VideoMemoryIndex = VGA_VideoMemory;
    }

}

#else
//replacement code for the bitswapping macro that is included in the pic32 system code
//the microcontroller needs the other code as it is MUCH faster on the pic32
uint32_t _bswap32(uint32_t a)
{
  a = ((a & 0x000000FF) << 24) |
      ((a & 0x0000FF00) <<  8) |
      ((a & 0x00FF0000) >>  8) |
      ((a & 0xFF000000) >> 24);
  return a;
}

#endif


void writefullhorizontalline(int line)
{
    int i = 0;
    for(i = 0; i < 25; i++) // write a line
    {
        VGA_VideoMemory[line*LineWidth+i] = 0xFFFFFFFF;
        //[line][i] = 0xFFFFFFFF;
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
    //int i = 0;

}
void writeverticalline(int x1, int x2)
{
    //int i = 0;
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

//uses 8 characters in a 8x8 grid for characters, puts that character at position starting with x, y
//void writechar(uint8_t * character, int x, int y)
void writechar(uint8_t * character)
{
    int i = 0;
    //if(x < VGA_X_MAX && y < VGA_Y_MAX)
    //{
        int y_char = 0;
        int x_char = 0;
        y_char = (CursorLocation / 100);
        x_char =  CursorLocation - (y_char * 100);
        int x_offset = x_char * 8;
        int y_offset = y_char * 8;
        


        int Bits;
        int Byte;

        //int leftover = x % 32;
        int leftover =  x_offset % 32;

        //Byte = (y*25) + (x/32);
        Byte = (y_offset*25) + (x_offset/32);

        for(i = 0; i < 8; i++)
        {
            Bits = 0;
            Bits = character[i];

            Bits = Bits << leftover;
            //Bits = Bits << leftover2;

			#ifdef __Microcontroller
            //bitswapping to put the character in the correct place
            //this implementation is for PIC32 only and is faster on PIC32 hardware
				Bits = _bswapw(Bits);
				
				//mask off the extra stuff that can creep in
				if(leftover == 0x08)
				{
					Bits = Bits & 0x00FF0000;
				}
				else if(leftover == 0x10)
				{
					Bits = Bits & 0x0000FF00;
				}
				else if(leftover == 0x18)
				{
					Bits = Bits & 0x000000FF;
				}
				else
				{
					Bits = Bits & 0xFF000000;
				}
				
			#else
				//this is important for both types of processors
				//but on the PC it can be slow since time is not as important.
				//Bits = _bswap32(Bits);
				//	Bits = bswap_32(Bits);
			
				//mask off the extra stuff that can creep in
				if(leftover == 0x08)
				{
					Bits = Bits & 0x0000FF00;
				}
				else if(leftover == 0x10)
				{
					Bits = Bits & 0x00FF0000;
				}
				else if(leftover == 0x18)
				{
					Bits = Bits & 0xFF000000;
				}
				else
				{
					Bits = Bits & 0x000000FF;
				}
			
			
			
			#endif
			


            //write the bits to the video memory buffer
            VGA_VideoMemory[Byte] |= Bits;
            Byte += 25; // go down one line
        }
    //}
}

extern void placeChar(uint8_t * character)
{
    

    if(CursorLocation < 7499)
    {
        CursorLocation++;
    }
    else
    {
        CursorLocation = 0;
    }
    LineLocationEnd++;

    writechar(character);

}

void resetPlaceCharLocation(void)
{
    CursorLocation = 0;
    LineLocationEnd = 0;
}

void ClearScreen(void)
{
    //clears the screen
    int i = 0;
    for(i=0; i < 15000; i++)
    {
        VGA_VideoMemory[i] = 0;
    }
}

void MoveCursorLeft(void)
{
    if(CursorLocation == 0)
    {
        //do nothing, can't move more left
    }
    else 
    {
        if(CursorLocation > LineLocationStart - 1)
        {
            //move cursor left
            CursorLocation--;
        }
        //else
        //{
            //do nothing, the cursor can't go any more left
        //}
    }

}

void MoveCursorRight(void)
{
    if(CursorLocation < 7499)
    {
        if(CursorLocation + 1 < LineLocationEnd)
        {
            //move cursor right
            CursorLocation++;
        }
    }
    else
    {
        //do nothing, can't move more right
    }
}

void MoveCursorUp(void)
{
    if(CursorLocation > 100)
    {
        if(CursorLocation - 100 > LineLocationStart)
        {
            //move cursor up
            CursorLocation = CursorLocation - 100;
        }
    }
    else
    {
        //do nothing, can't move more up
    }
}

void MoveCursorDown(void)
{
    if(CursorLocation < 7499)
    {
        if(CursorLocation + 100 < LineLocationEnd)
        {
            //move cursor up
            CursorLocation = CursorLocation + 100;
        }
    }
    else
    {
        //do nothing, can't move more up
    }
}

void BlinkCursor(void)
{
    /*
    if( blinkstate == 0 )
    {
        //turn the cursor on
        blinkstate = 1;
    }
    else
    {
        //turn the cursor off
        blinkstate = 0;
    }
     */
    //int x = 0;
    //int y = 0;
    int x_char = 0;
    int y_char = 0;


    y_char = (CursorLocation / 100);
    x_char =  CursorLocation - (y_char * 100);
    uint8_t fullchar[8] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};

    //writechar(fullchar, x_char * 8, y_char * 8);
    writechar(fullchar);

}

void ShiftScreenUp()
{
    //25 ints in a line
    //move every 25 ints into a buffer, then put them back in one line up
    int buffer[25];
    int line = 0;
    int i,j = 0;
    //uint8_t * index = VGA_VideoMemory;
    for(line = 0; line < 599; line++)
    {
        for(i=0; i < 25; i++)
        {
            buffer[i] = VGA_VideoMemory[((line + 1) * 25) + i];
        }

        for(j=0; j < 25; j++)
        {
            VGA_VideoMemory[(line * 25) + j] = buffer[j];
        }
    }
    for(i=0; i < 25; i++)
    {
        VGA_VideoMemory[(599*25) + i] = 0;
    }
}

void ShiftScreenDown()
{
    //25 ints in a line
    //move every 25 ints into a buffer, then put them back in one line up
    int buffer[25];
    int line = 0;
    int i,j = 0;
    //uint8_t * index = VGA_VideoMemory;
    for(line = 598; line > -1; line--)
    {
        for(i=0; i < 25; i++)
        {
            buffer[i] = VGA_VideoMemory[(line * 25) + i];
        }

        for(j=0; j < 25; j++)
        {
            VGA_VideoMemory[((line+1) * 25) + j] = buffer[j];
        }
    }
    for(i=0; i < 25; i++)
    {
        VGA_VideoMemory[i] = 0;
    }
}

void ShiftScreenLeft()
{
    //600 lines
    //25 ints per line
    //move every ints into a buffer, then put them back in one int to the left
    int buffer = 0;
    int line = 0;
    int i = 0;
    //uint8_t * index = VGA_VideoMemory;
    for(line = 0; line < 600; line++)
    {

        for(i = 0; i < 24; i++)
        {
            buffer = 0;
            buffer = VGA_VideoMemory[(line * 25) + i + 1];
            VGA_VideoMemory[(line * 25) + i] = buffer;
        }
        VGA_VideoMemory[(line * 25) + 24] = 0;

    }
    //for(i=0; i < 25; i++)
    //{
    //   VGA_VideoMemory[i] = 0;
    //}
}

void ShiftScreenRight()
{
    //600 lines
    //25 ints per line
    //move every ints into a buffer, then put them back in one int to the right
    int buffer = 0;
    int line = 0;
    int i = 0;
    //uint8_t * index = VGA_VideoMemory;
    for(line = -1; line < 600; line++)
    {

        for(i = 25; i > 0; i--)
        {
            buffer = 0;
            buffer = VGA_VideoMemory[(line * 25) + i];
            VGA_VideoMemory[(line * 25) + i + 1] = buffer;
        }
        VGA_VideoMemory[(line * 25)] = 0;

    }
    //for(i=0; i < 25; i++)
    //{
    //   VGA_VideoMemory[i] = 0;
    //}
}


void printTestScreen(void)
{
	uint8_t a;
	int i;
	for(i = 0; i < 79; i++) // 95 * 78 = 7500
	{
		for(a = 0x20; a < 0x7F; a++) //95 characters
		{
			placeChar(keyboard_lookup(a));
		}
	}
}
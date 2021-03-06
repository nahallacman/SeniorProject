#include "PS2.h"

//temporary for testing
//void interpret_keypress(char temp)
//{
//    char a = temp;
//}

/**
 * A chunk of 128 8x8 bitmaps that are arranged in ascii order.
 */
uint8_t font_map[128][8] = 
{
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0000 (nul)
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0001 // keyboard enter placeholder
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0002
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0003
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0004
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0005
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0006
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0007
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0008
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0009
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+000A
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+000B
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+000C
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+000D
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+000E
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+000F
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0010
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0011
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0012
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0013
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0014
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0015
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0016
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0017
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0018
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0019
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+001A
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+001B
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+001C
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+001D
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+001E
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+001F
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0020 (space)
{ 0x18, 0x3c, 0x3c, 0x18, 0x18, 0x00, 0x18, 0x00, },  // U+0021 (!)
{ 0x6c, 0x6c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0022 (")
{ 0x6c, 0x6c, 0xfe, 0x6c, 0xfe, 0x6c, 0x6c, 0x00, },  // U+0023 (#)
{ 0x30, 0x7c, 0xc0, 0x78, 0x0c, 0xf8, 0x30, 0x00, },  // U+0024 ($)
{ 0x00, 0xc6, 0xcc, 0x18, 0x30, 0x66, 0xc6, 0x00, },  // U+0025 (%)
{ 0x38, 0x6c, 0x38, 0x76, 0xdc, 0xcc, 0x76, 0x00, },  // U+0026 (&)
{ 0x60, 0x60, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0027 (')
{ 0x18, 0x30, 0x60, 0x60, 0x60, 0x30, 0x18, 0x00, },  // U+0028 (()
{ 0x60, 0x30, 0x18, 0x18, 0x18, 0x30, 0x60, 0x00, },  // U+0029 ())
{ 0x00, 0x66, 0x3c, 0xff, 0x3c, 0x66, 0x00, 0x00, },  // U+002A (*)
{ 0x00, 0x30, 0x30, 0xfc, 0x30, 0x30, 0x00, 0x00, },  // U+002B (+)
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x30, 0x60, },  // U+002C (,)
{ 0x00, 0x00, 0x00, 0xfc, 0x00, 0x00, 0x00, 0x00, },  // U+002D (-)
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x30, 0x00, },  // U+002E (.)
{ 0x06, 0x0c, 0x18, 0x30, 0x60, 0xc0, 0x80, 0x00, },  // U+002F (/)
{ 0x7c, 0xc6, 0xce, 0xde, 0xf6, 0xe6, 0x7c, 0x00, },  // U+0030 (0)
{ 0x30, 0x70, 0x30, 0x30, 0x30, 0x30, 0xfc, 0x00, },  // U+0031 (1)
{ 0x78, 0xcc, 0x0c, 0x38, 0x60, 0xcc, 0xfc, 0x00, },  // U+0032 (2)
{ 0x78, 0xcc, 0x0c, 0x38, 0x0c, 0xcc, 0x78, 0x00, },  // U+0033 (3)
{ 0x1c, 0x3c, 0x6c, 0xcc, 0xfe, 0x0c, 0x1e, 0x00, },  // U+0034 (4)
{ 0xfc, 0xc0, 0xf8, 0x0c, 0x0c, 0xcc, 0x78, 0x00, },  // U+0035 (5)
{ 0x38, 0x60, 0xc0, 0xf8, 0xcc, 0xcc, 0x78, 0x00, },  // U+0036 (6)
{ 0xfc, 0xcc, 0x0c, 0x18, 0x30, 0x30, 0x30, 0x00, },  // U+0037 (7)
{ 0x78, 0xcc, 0xcc, 0x78, 0xcc, 0xcc, 0x78, 0x00, },  // U+0038 (8)
{ 0x78, 0xcc, 0xcc, 0x7c, 0x0c, 0x18, 0x70, 0x00, },  // U+0039 (9)
{ 0x00, 0x30, 0x30, 0x00, 0x00, 0x30, 0x30, 0x00, },  // U+003A (:)
{ 0x00, 0x30, 0x30, 0x00, 0x00, 0x30, 0x30, 0x60, },  // U+003B (//)
{ 0x18, 0x30, 0x60, 0xc0, 0x60, 0x30, 0x18, 0x00, },  // U+003C (<)
{ 0x00, 0x00, 0xfc, 0x00, 0x00, 0xfc, 0x00, 0x00, },  // U+003D (=)
{ 0x60, 0x30, 0x18, 0x0c, 0x18, 0x30, 0x60, 0x00, },  // U+003E (>)
{ 0x78, 0xcc, 0x0c, 0x18, 0x30, 0x00, 0x30, 0x00, },  // U+003F (?)
{ 0x7c, 0xc6, 0xde, 0xde, 0xde, 0xc0, 0x78, 0x00, },  // U+0040 (@)
{ 0x30, 0x78, 0xcc, 0xcc, 0xfc, 0xcc, 0xcc, 0x00, },  // U+0041 (A)
{ 0xfc, 0x66, 0x66, 0x7c, 0x66, 0x66, 0xfc, 0x00, },  // U+0042 (B)
{ 0x3c, 0x66, 0xc0, 0xc0, 0xc0, 0x66, 0x3c, 0x00, },  // U+0043 (C)
{ 0xf8, 0x6c, 0x66, 0x66, 0x66, 0x6c, 0xf8, 0x00, },  // U+0044 (D)
{ 0xfe, 0x62, 0x68, 0x78, 0x68, 0x62, 0xfe, 0x00, },  // U+0045 (E)
{ 0xfe, 0x62, 0x68, 0x78, 0x68, 0x60, 0xf0, 0x00, },  // U+0046 (F)
{ 0x3c, 0x66, 0xc0, 0xc0, 0xce, 0x66, 0x3e, 0x00, },  // U+0047 (G)
{ 0xcc, 0xcc, 0xcc, 0xfc, 0xcc, 0xcc, 0xcc, 0x00, },  // U+0048 (H)
{ 0x78, 0x30, 0x30, 0x30, 0x30, 0x30, 0x78, 0x00, },  // U+0049 (I)
{ 0x1e, 0x0c, 0x0c, 0x0c, 0xcc, 0xcc, 0x78, 0x00, },  // U+004A (J)
{ 0xe6, 0x66, 0x6c, 0x78, 0x6c, 0x66, 0xe6, 0x00, },  // U+004B (K)
{ 0xf0, 0x60, 0x60, 0x60, 0x62, 0x66, 0xfe, 0x00, },  // U+004C (L)
{ 0xc6, 0xee, 0xfe, 0xfe, 0xd6, 0xc6, 0xc6, 0x00, },  // U+004D (M)
{ 0xc6, 0xe6, 0xf6, 0xde, 0xce, 0xc6, 0xc6, 0x00, },  // U+004E (N)
{ 0x38, 0x6c, 0xc6, 0xc6, 0xc6, 0x6c, 0x38, 0x00, },  // U+004F (O)
{ 0xfc, 0x66, 0x66, 0x7c, 0x60, 0x60, 0xf0, 0x00, },  // U+0050 (P)
{ 0x78, 0xcc, 0xcc, 0xcc, 0xdc, 0x78, 0x1c, 0x00, },  // U+0051 (Q)
{ 0xfc, 0x66, 0x66, 0x7c, 0x6c, 0x66, 0xe6, 0x00, },  // U+0052 (R)
{ 0x78, 0xcc, 0xe0, 0x70, 0x1c, 0xcc, 0x78, 0x00, },  // U+0053 (S)
{ 0xfc, 0xb4, 0x30, 0x30, 0x30, 0x30, 0x78, 0x00, },  // U+0054 (T)
{ 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xfc, 0x00, },  // U+0055 (U)
{ 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0x78, 0x30, 0x00, },  // U+0056 (V)
{ 0xc6, 0xc6, 0xc6, 0xd6, 0xfe, 0xee, 0xc6, 0x00, },  // U+0057 (W)
{ 0xc6, 0xc6, 0x6c, 0x38, 0x38, 0x6c, 0xc6, 0x00, },  // U+0058 (X)
{ 0xcc, 0xcc, 0xcc, 0x78, 0x30, 0x30, 0x78, 0x00, },  // U+0059 (Y)
{ 0xfe, 0xc6, 0x8c, 0x18, 0x32, 0x66, 0xfe, 0x00, },  // U+005A (Z)
{ 0x78, 0x60, 0x60, 0x60, 0x60, 0x60, 0x78, 0x00, },  // U+005B ([)
{ 0xc0, 0x60, 0x30, 0x18, 0x0c, 0x06, 0x02, 0x00, },  // U+005C (\)
{ 0x78, 0x18, 0x18, 0x18, 0x18, 0x18, 0x78, 0x00, },  // U+005D (])
{ 0x10, 0x38, 0x6c, 0xc6, 0x00, 0x00, 0x00, 0x00, },  // U+005E (^)
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, },  // U+005F (_)
{ 0x30, 0x30, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+0060 (`)
{ 0x00, 0x00, 0x78, 0x0c, 0x7c, 0xcc, 0x76, 0x00, },  // U+0061 (a)
{ 0xe0, 0x60, 0x60, 0x7c, 0x66, 0x66, 0xdc, 0x00, },  // U+0062 (b)
{ 0x00, 0x00, 0x78, 0xcc, 0xc0, 0xcc, 0x78, 0x00, },  // U+0063 (c)
{ 0x1c, 0x0c, 0x0c, 0x7c, 0xcc, 0xcc, 0x76, 0x00, },  // U+0064 (d)
{ 0x00, 0x00, 0x78, 0xcc, 0xfc, 0xc0, 0x78, 0x00, },  // U+0065 (e)
{ 0x38, 0x6c, 0x60, 0xf0, 0x60, 0x60, 0xf0, 0x00, },  // U+0066 (f)
{ 0x00, 0x00, 0x76, 0xcc, 0xcc, 0x7c, 0x0c, 0xf8, },  // U+0067 (g)
{ 0xe0, 0x60, 0x6c, 0x76, 0x66, 0x66, 0xe6, 0x00, },  // U+0068 (h)
{ 0x30, 0x00, 0x70, 0x30, 0x30, 0x30, 0x78, 0x00, },  // U+0069 (i)
{ 0x0c, 0x00, 0x0c, 0x0c, 0x0c, 0xcc, 0xcc, 0x78, },  // U+006A (j)
{ 0xe0, 0x60, 0x66, 0x6c, 0x78, 0x6c, 0xe6, 0x00, },  // U+006B (k)
{ 0x70, 0x30, 0x30, 0x30, 0x30, 0x30, 0x78, 0x00, },  // U+006C (l)
{ 0x00, 0x00, 0xcc, 0xfe, 0xfe, 0xd6, 0xc6, 0x00, },  // U+006D (m)
{ 0x00, 0x00, 0xf8, 0xcc, 0xcc, 0xcc, 0xcc, 0x00, },  // U+006E (n)
{ 0x00, 0x00, 0x78, 0xcc, 0xcc, 0xcc, 0x78, 0x00, },  // U+006F (o)
{ 0x00, 0x00, 0xdc, 0x66, 0x66, 0x7c, 0x60, 0xf0, },  // U+0070 (p)
{ 0x00, 0x00, 0x76, 0xcc, 0xcc, 0x7c, 0x0c, 0x1e, },  // U+0071 (q)
{ 0x00, 0x00, 0xdc, 0x76, 0x66, 0x60, 0xf0, 0x00, },  // U+0072 (r)
{ 0x00, 0x00, 0x7c, 0xc0, 0x78, 0x0c, 0xf8, 0x00, },  // U+0073 (s)
{ 0x10, 0x30, 0x7c, 0x30, 0x30, 0x34, 0x18, 0x00, },  // U+0074 (t)
{ 0x00, 0x00, 0xcc, 0xcc, 0xcc, 0xcc, 0x76, 0x00, },  // U+0075 (u)
{ 0x00, 0x00, 0xcc, 0xcc, 0xcc, 0x78, 0x30, 0x00, },  // U+0076 (v)
{ 0x00, 0x00, 0xc6, 0xd6, 0xfe, 0xfe, 0x6c, 0x00, },  // U+0077 (w)
{ 0x00, 0x00, 0xc6, 0x6c, 0x38, 0x6c, 0xc6, 0x00, },  // U+0078 (x)
{ 0x00, 0x00, 0xcc, 0xcc, 0xcc, 0x7c, 0x0c, 0xf8, },  // U+0079 (y)
{ 0x00, 0x00, 0xfc, 0x98, 0x30, 0x64, 0xfc, 0x00, },  // U+007A (z)
{ 0x1c, 0x30, 0x30, 0xe0, 0x30, 0x30, 0x1c, 0x00, },  // U+007B ({)
{ 0x18, 0x18, 0x18, 0x00, 0x18, 0x18, 0x18, 0x00, },  // U+007C (|)
{ 0xe0, 0x30, 0x30, 0x1c, 0x30, 0x30, 0xe0, 0x00, },  // U+007D (})
{ 0x76, 0xdc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },  // U+007E (~)
            };

/**
 * Checks if the keyboard scan code is within ascii range. If it is, it returns
 * an 8x8 bitmap.
 * @param number - Scan code to look up
 * @return - An 8 unit array of 8bit values that make an 8x8 bitmap
 */
uint8_t * keyboard_lookup(uint8_t number)
{
    if(number > 0x20 && number < 0x80)
    {
        return font_map[number];
    }
    else
    {
        return font_map[0];
    }
}
			
#ifdef __Microcontroller

#include <p32xxxx.h>

void keyboard_setup(void)
{
    //---keyboard configuration begin---


    //using IC1 on RD8
    //changing to IC2 on RD9

    IC2CONbits.ICI = 0; // interrupt on every event (instead of every 2, 3, 4)
    
    IC2CONbits.ICM = 0b010; // interrupt on every falling edge

    IC2CONbits.ON = 1;

    //IEC0bits.IC1IE = 1; // set the interrupt enable
    IEC0bits.IC2IE = 1;
    //IFS0bits.IC1IF = 0; //clear the flag just in case
    IFS0bits.IC2IF = 0;

    //IPC1bits.IC1IP = 6; // set the interrupt priority
    IPC2bits.IC2IP = 6;
    //IPC1bits.IC1IS = 0; // set the subpriority
    IPC2bits.IC2IS = 0;


    //using RD6 for PS2CLK   //  PORTDbits.RD6;
    //TRISDbits.TRISD6 = 1; // set to input
    //moving clock to RD9 to use IC2
    //might need it's own external pullup
    //TRISDbits.TRISD8 = 1; // set to input
    TRISDbits.TRISD9 = 1;
    //using RD7 for PS2DATA
    TRISDbits.TRISD7 = 1; // set to input

    //enable interrupt on change
    //CNCONbits.ON = 1;

    //using internal pullup resistors
    //CNPUEbits.CNPUE15 = 1; //PS2CLK pullup
    CNPUEbits.CNPUE16 = 1; //PS2DATA pullup

    //enable the PS2CLK change notification detection
    //CNENbits.CNEN15 = 1;
    CNENbits.CNEN16 = 0;
    

    PORTD;//read portD to clear the mismatch on change notice pins


    IPC6bits.CNIP = 1; // set the interrupt priority
    IPC6bits.CNIS = 0; // set the interrupt subpriority

    IFS1bits.CNIF = 0; //clear the interrupt flag just in case
    //IFS1bits.CNIF = 1;
    IEC1bits.CNIE = 1; //enable change notification interrupt



    //---keyboard configuration end---
}

void InputCapture2ISR(void)
{
    IC2BUF;
    //IFS0bits.IC1IF = 0;
    //IFS0bits.IC2IF = 0;
    //IFS0CLR = 0x20; // atomically clear the interrupt flag
    IFS0CLR = 0x200;

    values[IC1State] = PORTD;

    int i = 0;

    //then check to make sure the clock is still low
    //if(PORTDbits.RD8 == 0)
    if(PORTDbits.RD9 == 0)
    {
        //then read the data bit
        //badkeypress = 0;

        switch(IC1State)
        {
           case 10:
                IC1State = 0;
                //keypress has been recieved
                //construct byte and pariry bit
                int temp = 0;
                for(i = 8; i > 0; i--)
                {
                    if(values[i] & 0x80) // 0x80 is for RD8, need RD9, 0x100
                    //if(values[i] & 0x100)
                    {
                        temp = 1;
                    }
                    else
                    {
                        temp = 0;
                    }

                    scancode = scancode << 1;
                    scancode += temp;
                }
                
                //circular buffer insert handling of the ps2Buffer
                if(ps2BufferNumItems < ps2BufferSize)
                {
                    ps2Buffer[ps2BufferEndIndex] = scancode;
                    ps2BufferNumItems++;


                    KeysToProcess = 1;
                    scancode = 0;
                    //wrap inside the ps2buffer when writing to the buffer
                    if(ps2BufferEndIndex < ps2BufferSize)
                    {
                        ps2BufferEndIndex++;
                    }
                    else
                    {
                        ps2BufferEndIndex = 0;
                    }
                }
                break;
            default:
                IC1State++;
                break;
        }
    }
    else
    {
        //badkeypress = 1;
    }
}

#endif

void removeFromPS2Buffer(void)
{
    int i = 0;
    uint8_t temp = 0;
    uint8_t temp2 = 0;

    //circular buffer removal handling of the ps2Buffer
    if(ps2BufferNumItems > 0)
    {
        if( ps2Buffer[ps2BufferStart] == 0xE0 )
        {
            //special key pressed

            //ignore the special keys for now, just read them straight in
            if(ps2BufferStart < ps2BufferSize )
            {
                ps2BufferStart++;
            }
            else
            {
                ps2BufferStart = 0;
            }
            ps2BufferNumItems--;
        }
        else if(ps2Buffer[ps2BufferStart] == 0xF0)
        {
            //key release, so move the buffer down 2
            if(ps2BufferStart < ps2BufferSize )
            {
                ps2BufferStart++;
            }
            else
            {
                ps2BufferStart = 0;
            }
            ps2BufferNumItems--;

            if(ps2BufferStart < ps2BufferSize )
            {
                ps2BufferStart++;
            }
            else
            {
                ps2BufferStart = 0;
            }
            ps2BufferNumItems--;

        }
        else
        {
            //clears the screen for each key press
            //ClearScreen();

            //remove item from circular buffer
            temp = ps2Buffer[ps2BufferStart];
            //reduce number of items in the buffer.
            ps2BufferNumItems--;
            //key press
            //temp2 = translateKeypress(temp);
            //testing a write char
            //writechar(keyboard_lookup(temp2), 8, 8);

            interpret_keypress(temp);

            //make buffer circular
            if(ps2BufferStart < ps2BufferSize )
            {
                ps2BufferStart++;
            }
            else
            {
                ps2BufferStart = 0;
            }
        }
    }
    else
    {
        //there are no more keys to process
        KeysToProcess = 0;
    }
}

//this function translates a passed in scan code to ascii (or maybe unicode?) character values that will be used to get the correct bitmaps for printing characters to the screen
extern uint8_t translateKeypress(uint8_t translate)
{
    uint8_t temp = 0;
    int i = 0;
    if(translate == 0x58) // caps lock
    {
        temp = 0x03;
    }
    else if(translate == 0x12) // left shift
    {
        ShiftPressed = 1;
        temp = 0;
    }
    else if(translate == 0x59) // right shift
    {
        ShiftPressed = 0;
        temp = 0;
    }
    else
    {
	switch(translate)
	{
		//start special key: enter
		case 0x5A: // enter
			temp = 0x01;
			break;
                //start special key: backspace
                case 0x66: // backspace
                    temp = 0x04;
                    break;
		//start special keys: page up and page down
		case 0x7D: // page up
		switch(ShiftPressed)
			{
			case 0:
				for(i = 0; i < 8; i++)
				{
					ShiftScreenUp();
				}
				temp = 0;
				break;
			case 1:
				ShiftScreenUp();
				temp = 0;
				break;
			}
			break;
		case 0x7A: // page down
		switch(ShiftPressed)
			{
			case 0:
				for(i = 0; i < 8; i++)
				{
					ShiftScreenDown();
				}
				temp = 0;
				break;
			case 1:
				ShiftScreenDown();
				temp = 0;
				break;
			}
			break;
		//start special keys: arrow keys
		case 0x6B: // left arrow
			switch(ShiftPressed)
			{
			case 0:
				MoveCursorLeft(); // left arrow
				BlinkCursor();
				temp = 0;
				break;
			case 1:
				ShiftScreenLeft();
				//MoveCursorLeft(); 
				//BlinkCursor();
				temp = 0;
				break;
			}
			break;
		case 0x74: // right arrow
			switch(ShiftPressed)
			{
			case 0:		
				//ShiftScreenRight();
				MoveCursorRight(); // right arrow
				BlinkCursor();
				//temp = 1; // quick way to make the right arrow print nothing but not get skipped over when incrementing
				temp = 0;
				break;
			case 1:
				ShiftScreenRight();
				//MoveCursorRight(); 
				//BlinkCursor();
				temp = 0;
				break;
			}
			break;
		case 0x75: // up arrow
			switch(ShiftPressed)
			{
			case 0:
				MoveCursorUp(); 
				BlinkCursor();
				temp = 0;
				break;
			case 1:
				for(i = 0; i < 8; i++)
				{
					ShiftScreenUp();
				}
				temp = 0;
				break;
			}
			break;
		case 0x72: // down arrow
			switch(ShiftPressed)
			{
			case 0:
				MoveCursorDown(); // down arrow
				BlinkCursor();
				temp = 0;
				break;
			case 1:			
				for(i = 0; i < 8; i++)
				{
					ShiftScreenDown();
				}
				temp = 0;
				break;
			}
			break;
		//start keyboard line: esc F1F2F3F4F5F6F7F8F9F10F11F12
		case 0x76: // esc
                    temp = 0x02; // temp number for commands will be in range 0x01 - 0x19
			break;
		case 0x05: // F1
			temp = 0;
                        //press_F1();
			break;
		case 0x06: // F2
			temp = 0;
			shiftTextLeft();
			break;
		//start keyboard line: `1234567890-=
		case 0x0E: //`
			switch(ShiftPressed)
			{
			case 0:		
				temp = 0x60; //`
				break;
			case 1:
				temp = 0x7E; //~
				break;
			}
			break;
		case 0x16: //1
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x31; //1
				break;
			case 1:
				temp = 0x21; //!
				break;
			}
			break;
		case 0x1E: //2
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x32; //2
				break;
			case 1:
				temp = 0x40; //@
				break;
			}
			break;
		case 0x26: //3
			switch(ShiftPressed)
			{
			case 0:		
				temp = 0x33; //3
				break;
			case 1:
				temp = 0x23; //#
				break;
			}
			break;
		case 0x25: //4
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x34; //4
				break;
			case 1:
				temp = 0x24; //$
				break;
			}
			break;
		case 0x2E: //5
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x35; //5
				break;
			case 1:
				temp = 0x25; //%
				break;
			}
			break;
		case 0x36: //6
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x36; //6
				break;
			case 1:
				temp = 0x5E; //^
				break;
			}
			break;
		case 0x3D: //7
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x37; //7
				break;
			case 1:
				temp = 0x26; //&
				break;
			}
			break;
		case 0x3E: //8
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x38; //8
				break;
			case 1:
				temp = 0x2A; //*
				break;
			}
			break;
		case 0x46: //9
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x39; //9
				break;
			case 1:
				temp = 0x28; //(
				break;
			}
			break;
		case 0x45: //0
			switch(ShiftPressed)	
			{
			case 0:
				temp = 0x30; //0
				break;
			case 1:
				temp = 0x29; //)
				break;
			}
			break;
		case 0x4E: //-
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x2D; //-
				break;
			case 1:
				temp = 0x5F; //_
				break;
			}
			break;
        case 0x55: //=
	   		switch(ShiftPressed)
			{
			case 0:
				temp = 0x3D; //=
				break;
			case 1:
				temp = 0x2B; //+
				break;
			}
			break;
		//start keyboard line: qwertyuiop[] and '\'
		case 0x15: //q
			switch(ShiftPressed)
			{
			case 0:
				temp = 0x71; //q
				break;
			case 1:
				temp = 0x51; //Q
				break;
			}
			break;
		case 0x1D: //w
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x77; //w
				break;
			case 1:
				temp = 0x57; //W
				break;
			}
			break;
		case 0x24: //e
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x65; //e
				break;
			case 1:
				temp = 0x45; //E
                break;
			}
			break;
		case 0x2D: //r
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x72; //r
				break;
			case 1:
				temp = 0x52; //R
				break;
			}
			break;
		case 0x2C: //t
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x74; //t
				break;
			case 1:
				temp = 0x54; //T
				break;
			}
			break;
		case 0x35: //y
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x79; //y
				break;
			case 1:
				temp = 0x59; //Y
				break;
			}
			break;
		case 0x3C: //u
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x75; //u
				break;
			case 1:
				temp = 0x55; //U
				break;
			}
			break;
		case 0x43: //i
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x69; //i
				break;
			case 1:
				temp = 0x49; //I
				break;
			}
			break;
		case 0x44: //o
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x6F; //o
				break;
			case 1:
				temp = 0x4F; //O
				break;
			}
			break;
		case 0x4D: //p
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x70; //p
				break;
			case 1:
				temp = 0x50; //P
				break;
			}
			break;
		case 0x54: //[
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x5B; //[
				break;
			case 1:
				temp = 0x7B; //{
				break;
			}
			break;
		case 0x5B: //]
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x5D;  //]
				break;
			case 1:
				temp = 0x7D;  //}
				break;
			}
			break;
		case 0x5D: //"\"
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x5C; //"\"
				break;
			case 1:
				temp = 0x7C; //|
				break;
			}
			break;
		//start keyboard line: asdfghjkl;'
		case 0x1C: //a
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x61; //a
				break;
			case 1:
				temp = 0x41; //A
				break;
			}
			break;
		case 0x1B: //s
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x73; //s
				break;
			case 1:
				temp = 0x53; //S
				break;
			}
			break;
		case 0x23: //d
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x64; //d
				break;
			case 1:
				temp = 0x44; //D
				break;
			}
			break;
		case 0x2B: //f
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x66; //f
				break;
			case 1:
				temp = 0x46; //F
				break;
			}
			break;
		case 0x34: //g
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x67; //g
				break;
			case 1:
				temp = 0x47; //G
				break;
			}
			break;
		case 0x33: //h
			switch(ShiftPressed)
			{		
			case 0:
				temp = 0x68; //h
				break;
			case 1:
				temp = 0x48; //H
				break;
			}
			break;
		case 0x3B: //j
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x6A; //j
				break;
			case 1:
				temp = 0x4A; //J
				break;
			}
			break;
		case 0x42: //k
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x6B; //k
				break;
			case 1:
				temp = 0x4B; //K
				break;
			}
			break;
		case 0x4B: //l
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x6C; //l
				break;
			case 1:
				temp = 0x4C; //L
				break;
			}
			break;
		case 0x4C:      //NOTE: this is actually a : not a ; but there is no bitmap for ;
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x3A; //;
				break;
			case 1:
				temp = 0x3A; //:
				break;
			}
			break;
		case 0x52: //'
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x27; //'
				break;
			case 1:
				temp = 0x22; //"
				break;
			}
			break;
		//start keyboard line: zxcvbnm,./
		case 0x1A: //z
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x7A; //z
				break;
			case 1:
				temp = 0x5A; //Z
				break;
			}
			break;
		case 0x22: //x
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x78; //x
				break;
			case 1:
				temp = 0x58; //X
				break;
			}
			break;
		case 0x21: //c
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x63; //c
				break;
			case 1:
				temp = 0x43; //C
				break;
			}
			break;
		case 0x2A: //v
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x76; //v
				break;
			case 1:
				temp = 0x56; //V
				break;
			}
			break;
		case 0x32: //b
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x62; //b
				break;
			case 1:
				temp = 0x42; //B
				break;
			}
			break;
		case 0x31: //n
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x6E; //n
				break;
			case 1:
				temp = 0x4E; //N
				break;
			}
			break;
		case 0x3A: //m
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x6D; //m
				break;
			case 1:
				temp = 0x4D; //M
				break;
			}
			break;
		case 0x41: //,
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x2C; //,
				break;
			case 1:
				temp = 0x3C; //<
				break;
			}
			break;
		case 0x49: //.
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x2E; //.
				break;
			case 1:
				temp = 0x3E; //>
				break;
			}
			break;
		case 0x4A: // "/"
		switch(ShiftPressed)
			{		
			case 0:
				temp = 0x2F; // "/"
				break;
			case 1:
				temp = 0x3F; //?
				break;
			}
			break;
		case 0x29: // space
			temp = 0x20;
			break;
		default:
			temp = 0x21;
            }
        }
    return temp;
}




#ifndef __Microcontroller
//this test agitator takes a scan code and adds it to the ps2Buffer so it can be processed with interpretKeypress
void testKeyboardAgitator(uint8_t scanCode)
{
   //circular buffer insert handling of the ps2Buffer
	if(ps2BufferNumItems < ps2BufferSize)
	{
		ps2Buffer[ps2BufferEndIndex] = scanCode;
		ps2BufferNumItems++;


		KeysToProcess = 1;
		//code = 0;
		//wrap inside the ps2buffer when writing to the buffer
		if(ps2BufferEndIndex < ps2BufferSize)
		{
			ps2BufferEndIndex++;
		}
		else
		{
			ps2BufferEndIndex = 0;
		}
	}
}
#endif

extern void invertShiftPressed(void)
{
    ShiftPressed = !ShiftPressed;
}
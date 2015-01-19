#include "PS2.h"
#include <p32xxxx.h>

char * keyboard_lookup(char number)
{
    if(number > 0x20 && number < 0x100)
    {
        return font_map[number];
    }
    else
    {
        return font_map[0];
    }
}

void keyboard_setup(void)
{
    //---keyboard configuration begin---


    //using IC1 on RD8

    IC1CONbits.ICI = 0; // interrupt on every event (instead of every 2, 3, 4)
    
    IC1CONbits.ICM = 0b010; // interrupt on every falling edge

    IC1CONbits.ON = 1;

    IEC0bits.IC1IE = 1; // set the interrupt enable
    IFS0bits.IC1IF = 0; //clear the flag just in case

    IPC1bits.IC1IP = 6; // set the interrupt priority
    IPC1bits.IC1IS = 0; // set the subpriority


    //using RD6 for PS2CLK   //  PORTDbits.RD6;
    //TRISDbits.TRISD6 = 1; // set to input
    //moving clock to RD8 to use IC1
    //might need it's own external pullup
    TRISDbits.TRISD8 = 1; // set to input
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

void ChangeNotificationISR(void)
{
    //IFS1bits.CNIF = 0; //clear the interrupt flag just in case
    //atomically clear the interrupt flag
    //IFS1CLR = 0x1;
    values[ChangeState] = PORTD;
    //int temp = PORTD;

    switch(ChangeState)
    {
        case 0:
            //if(PORTDbits.RD7 == 1)
            if((values[0] & 0x80)) // mask off all bits but RD7
            {
                badkeystart = 1;
            }
            else
            {
                badkeystart = 0;
            }
            //PORTDbits.RD7 = values[0];
            ChangeState++;
            break;
        case 21:
            //if(PORTDbits.RD7 == 1)
            if(values[21] & 0x80)
            {
                badkeypress = 0;
            }
            else
            {
                badkeypress = 1;
            }
            //PORTDbits.RD7 = values[10];
            ChangeState = 0;
            break;
        default:
            ChangeState++;
            break;
    }

    IFS1CLR = 0x1;
}

void InputCapture1ISR(void)
{
    IC1BUF;
    //IFS0bits.IC1IF = 0;
    IFS0CLR = 0x20; // atomically clear the interrupt flag

    values[IC1State] = PORTD;

    int i = 0;

    //then check to make sure the clock is still low
    if(PORTDbits.RD8 == 0)
    {
        //then read the data bit
        badkeypress = 0;

        switch(IC1State)
        {
           case 10:
                IC1State = 0;
                //keypress has been recieved
                //construct byte and pariry bit
                int temp = 0;
                for(i = 8; i > 0; i--)
                {
                    if(values[i] & 0x80) // check this
                    {
                        temp = 1;
                    }
                    else
                    {
                        temp = 0;
                    }

                    code = code << 1;
                    code += temp;
                }
                ps2Buffer[ps2BufferIndex] = code;
                code = 0;
                if(ps2BufferIndex < 8)
                {
                    ps2BufferIndex++;
                }
                else
                {
                    ps2BufferIndex = 0;
                }
                break;
            default:
                IC1State++;
                break;
        }
    }
    else
    {
        badkeypress = 1;
    }
}
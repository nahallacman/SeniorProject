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
    //using RD6 for PS2CLK   //  PORTDbits.RD6;
    TRISDbits.TRISD6 = 1; // set to input
    //using RD7 for PS2DATA
    TRISDbits.TRISD7 = 1; // set to input

    //using internal pullup resistors
    CNPUEbits.CNPUE15 = 1; //PS2CLK pullup
    CNPUEbits.CNPUE16 = 1; //PS2DATA pullup

    //enable the PS2CLK change notification detection
    CNENbits.CNEN15 = 1;
    //enable interrupt on change
    CNCONbits.ON = 1;

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

    
    switch(ChangeState)
    {
        case 0:
            if(PORTDbits.RD7 == 1)
            {
                badkeystart = 1;
            }
            else
            {
                badkeystart = 0;
            }
            //PORTDbits.RD7 = values[0];
            ChangeState = 1;
            break;
        case 1:
            PORTDbits.RD7 = values[1];
                        ChangeState = 2;
            break;
        case 2:
            PORTDbits.RD7 = values[2];
                        ChangeState = 3;
            break;
        case 3:
            PORTDbits.RD7 = values[3];
                        ChangeState = 4;
            break;
        case 4:
            PORTDbits.RD7 = values[4];
                        ChangeState = 5;
            break;
        case 5:
            PORTDbits.RD7 = values[5];
            ChangeState = 6;
            break;
        case 6:
            PORTDbits.RD7 = values[6];
            ChangeState = 7;
            break;
        case 7:
            PORTDbits.RD7 = values[7];
            ChangeState = 8;
            break;
        case 8:
            PORTDbits.RD7 = values[8];
            ChangeState = 9;
            break;
        case 9:
            PORTDbits.RD7 = values[9];
            ChangeState = 10;
            break;
        case 10:
            if(PORTDbits.RD7 == 1)
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
            break;
    }

    IFS1CLR = 0x1;
}
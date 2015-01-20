#include "PS2.h"
#include <p32xxxx.h>

char * keyboard_lookup(char number)
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
                
                //circular buffer insert handling of the ps2Buffer
                if(ps2BufferNumItems < ps2BufferSize)
                {
                    ps2Buffer[ps2BufferEndIndex] = code;
                    ps2BufferNumItems++;


                    KeysToProcess = 1;
                    code = 0;
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
        badkeypress = 1;
    }
}


void interpretKeypress(void)
{
    
    char temp = 0;
    char temp2 = 0;

    //circular buffer removal handling of the ps2Buffer
    if(ps2BufferNumItems > 0)
    {


        if( ps2Buffer[ps2BufferStart] == 0xE0 )
        {
            //special key pressed
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


            //writechar(keyboard_lookup(translateKeypress(temp)), 8, 8);
            writechar(keyboard_lookup(translateKeypress(temp)), cursor_x, cursor_y);
            if(cursor_x < 800)
            {
                cursor_x += 8;
            }
            else
            {
                cursor_x = 0;
                if(cursor_y < 600)
                {
                    cursor_y += 8;
                }
                else
                {
                    cursor_y = 0;
                }
                
            }




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

char translateKeypress(char translate)
{
    char temp;
    switch(translate)
    {
        case 0x15:
            temp = 0x71; //q
            break;
        case 0x1D:
            temp = 0x77; //w
            break;
        case 0x24:
            temp = 0x65; //e
            break;
        case 0x2D:
            temp = 0x72; //r
            break;
        case 0x2C:
            temp = 0x74; //t
            break;
        case 0x35:
            temp = 0x79; //y
            break;
        case 0x29: // spacebar will clear the screen
            ClearScreen();
            temp = 0x20;
            break;
        default:
            temp = 0x21;
    }

    return temp;
}
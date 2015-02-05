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

            //first translate the keypress
            temp2 = translateKeypress(temp);
            // this is the hinge for the keyboard keypresses

            //then add it to the textLine buffer and increase the index
            if(temp2 != 0)
            {
                textLine[textlineindex] = temp2;

                //then write the character to the screen

                //writechar(keyboard_lookup(textLine[textlineindex]), cursor_x, cursor_y);
                placeChar(keyboard_lookup(textLine[textlineindex]));

                 textlineindex++;
                
            }


            //this cursor stuff can be taken out and movde into the vga file itself.
            //the keyboard shouldn't know about where the cursor is, the video file should know that
            //probably should wrap writechar with the cursor stuff
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
    char temp = 0;
    int i = 0;
    if(translate == 0x58) // caps lock
    {
        ShiftPressed = !ShiftPressed;
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
    else if(ShiftPressed == 1)
    {
        switch(translate)
        {
            //start special keys: page up and page down
            case 0x7D: // page up
                ShiftScreenUp();
                temp = 0;
                break;
            case 0x7A: // page down
                ShiftScreenDown();
                temp = 0;
                break;
            //start special keys: arrow keys
            case 0x6B: // left arrow
                ShiftScreenLeft();
                //MoveCursorLeft(); 
                //BlinkCursor();
                temp = 0;
                break;
            case 0x74: // right arrow
                ShiftScreenRight();
                //MoveCursorRight(); 
                //BlinkCursor();
                temp = 0;
                break;
            case 0x75: // up arrow
                for(i = 0; i < 8; i++)
                {
                    ShiftScreenUp();
                }
                temp = 0;
                break;
            case 0x72: // down arrow
                for(i = 0; i < 8; i++)
                {
                    ShiftScreenDown();
                }
                temp = 0;
                break;
            //start keyboard line: esc F1F2F3F4F5F6F7F8F9F10F11F12
            case 0x76: // esc
                ClearScreen(); // esc will clear the screen for now
                break;
            //start keyboard line: `1234567890-=
            case 0x0E: //`
                temp = 0x7E; //~
                break;
            case 0x16: //1
                temp = 0x21; //!
                break;
            case 0x1E: //2
                temp = 0x40; //@
                break;
            case 0x26: //3
                temp = 0x23; //#
                break;
            case 0x25: //4
                temp = 0x24; //$
                break;
            case 0x2E: //5
                temp = 0x25; //%
                break;
            case 0x36: //6
                temp = 0x5E; //^
                break;
            case 0x3D: //7
                temp = 0x26; //&
                break;
            case 0x3E: //8
                temp = 0x2A; //*
                break;
            case 0x46: //9
                temp = 0x28; //(
                break;
            case 0x45: //0
                temp = 0x29; //)
                break;
            case 0x4E: //-
                temp = 0x5F; //_
                break;
           case 0x55: //=
                temp = 0x2B; //+
                break;
            //start keyboard line: qwertyuiop[] and '\'
            case 0x15: //q
                temp = 0x51; //Q
                break;
            case 0x1D: //w
                temp = 0x57; //W
                break;
            case 0x24: //e
                temp = 0x45; //E
                break;
            case 0x2D: //r
                temp = 0x52; //R
                break;
            case 0x2C: //t
                temp = 0x54; //T
                break;
            case 0x35: //y
                temp = 0x59; //Y
                break;
            case 0x3C: //u
                temp = 0x55; //U
                break;
            case 0x43: //i
                temp = 0x49; //I
                break;
            case 0x44: //o
                temp = 0x4F; //O
                break;
            case 0x4D: //p
                temp = 0x50; //P
                break;
            case 0x54: //[
                temp = 0x7B; //{
                break;
            case 0x5B: //]
                temp = 0x7D;  //}
                break;
            case 0x5D: //"\"
                temp = 0x7C; //|
                break;
            //start keyboard line: asdfghjkl;'
            case 0x1C: //a
                temp = 0x41; //A
                break;
            case 0x1B: //s
                temp = 0x53; //S
                break;
            case 0x23: //d
                temp = 0x44; //D
                break;
            case 0x2B: //f
                temp = 0x46; //F
                break;
            case 0x34: //g
                temp = 0x47; //G
                break;
            case 0x33: //h
                temp = 0x48; //H
                break;
            case 0x3B: //j
                temp = 0x4A; //J
                break;
            case 0x42: //k
                temp = 0x4B; //K
                break;
            case 0x4B: //l
                temp = 0x4C; //L
                break;
            case 0x4C:      //NOTE: this is actually a : not a ; but there is no bitmap for ;
                temp = 0x3A; //:
                break;
            case 0x52: //'
                temp = 0x22; //"
                break;
            //start keyboard line: zxcvbnm,./
            case 0x1A: //z
                temp = 0x5A; //Z
                break;
            case 0x22: //x
                temp = 0x58; //X
                break;
            case 0x21: //c
                temp = 0x43; //C
                break;
            case 0x2A: //v
                temp = 0x56; //V
                break;
            case 0x32: //b
                temp = 0x42; //B
                break;
            case 0x31: //n
                temp = 0x4E; //N
                break;
            case 0x3A: //m
                temp = 0x4D; //M
                break;
            case 0x41: //,
                temp = 0x3C; //<
                break;
            case 0x49: //.
                temp = 0x3E; //>
                break;
            case 0x4A: // "/"
                temp = 0x3F; //?
                break;
            case 0x29: // space
                temp = 0x20;
                break;
            default:
                temp = 0x21;
        }
    }
    else // shift is off
    {
        switch(translate)
        {
            //start special keys: page up and page down
            case 0x7D: // page up
                for(i = 0; i < 8; i++)
                {
                    ShiftScreenUp();
                }
                temp = 0;
                break;
            case 0x7A: // page down
                for(i = 0; i < 8; i++)
                {
                    ShiftScreenDown();
                }
                temp = 0;
                break;
            //start special keys: arrow keys
            case 0x6B:
                //ShiftScreenLeft();
                MoveCursorLeft(); // left arrow
                BlinkCursor();
                temp = 0;
                break;
            case 0x74:
                //ShiftScreenRight();
                MoveCursorRight(); // right arrow
                BlinkCursor();
                //temp = 1; // quick way to make the right arrow print nothing but not get skipped over when incrementeing
                temp = 0;
                break;
            case 0x75:
                MoveCursorUp(); // up arrow
                BlinkCursor();
                temp = 0;
                break;
            case 0x72:
                MoveCursorDown(); // down arrow
                BlinkCursor();
                temp = 0;
                break;
            //start keyboard line: esc F1F2F3F4F5F6F7F8F9F10F11F12
            case 0x76:
                ClearScreen(); // esc will clear the screen
                break;
            //start keyboard line: `1234567890-=
            case 0x0E:
                temp = 0x60; //`
                break;
            case 0x16:
                temp = 0x31; //1
                break;
            case 0x1E:
                temp = 0x32; //2
                break;
            case 0x26:
                temp = 0x33; //3
                break;
            case 0x25:
                temp = 0x34; //4
                break;
            case 0x2E:
                temp = 0x35; //5
                break;
            case 0x36:
                temp = 0x36; //6
                break;
            case 0x3D:
                temp = 0x37; //7
                break;
            case 0x3E:
                temp = 0x38; //8
                break;
            case 0x46:
                temp = 0x39; //9
                break;
            case 0x45:
                temp = 0x30; //0
                break;
            case 0x4E:
                temp = 0x2D; //-
                break;
           case 0x55:
                temp = 0x3D; //=
                break;
            //start keyboard line: qwertyuiop[] and '\'
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
            case 0x3C:
                temp = 0x75; //u
                break;
            case 0x43:
                temp = 0x69; //i
                break;
            case 0x44:
                temp = 0x6F; //o
                break;
            case 0x4D:
                temp = 0x70; //p
                break;
            case 0x54:
                temp = 0x5B; //[
                break;
            case 0x5B:
                temp = 0x5D;  //]
                break;
            case 0x5D:
                temp = 0x5C; //"\"
                break;
            //start keyboard line: asdfghjkl;'
            case 0x1C:
                temp = 0x61; //a
                break;
            case 0x1B:
                temp = 0x73; //s
                break;
            case 0x23:
                temp = 0x64; //d
                break;
            case 0x2B:
                temp = 0x66; //f
                break;
            case 0x34:
                temp = 0x67; //g
                break;
            case 0x33:
                temp = 0x68; //h
                break;
            case 0x3B:
                temp = 0x6A; //j
                break;
            case 0x42:
                temp = 0x6B; //k
                break;
            case 0x4B:
                temp = 0x6C; //l
                break;
            case 0x4C:      //NOTE: this is actually a : not a ; but there is no bitmap for ;
                temp = 0x3A; //;
                break;
            case 0x52:
                temp = 0x27; //'
                break;
            //start keyboard line: zxcvbnm,./
            case 0x1A:
                temp = 0x7A; //z
                break;
            case 0x22:
                temp = 0x78; //x
                break;
            case 0x21:
                temp = 0x63; //c
                break;
            case 0x2A:
                temp = 0x76; //v
                break;
            case 0x32:
                temp = 0x62; //b
                break;
            case 0x31:
                temp = 0x6E; //n
                break;
            case 0x3A:
                temp = 0x6D; //m
                break;
            case 0x41:
                temp = 0x2C; //,
                break;
            case 0x49:
                temp = 0x2E; //.
                break;
            case 0x4A:
                temp = 0x2F; // "/"
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
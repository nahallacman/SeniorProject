#include "cursor.h"

extern int setandgetCursorLocation(int newcursorLocation)
{
     CursorLocation = newcursorLocation;
     return CursorLocation;
}

extern int getCursorLocation(void)
{
     return CursorLocation;
}

extern void setCursorLocation(int newCursorLocation)
{
    CursorLocation = newCursorLocation;
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

//a print line function

//a cursor with get and set

//line limits to cursor movement

//

void interpret_keypress(char temp)
{
    char temp2;
    //first translate the keypress
    temp2 = translateKeypress(temp);
    // this is the hinge for the keyboard keypresses


    //this is where the non-printable keys are processed.
    if(temp2 == 0x01)// enter key was pressed
    {                       
        //here the code should try to interpret the received command
        processLine(textLine);
    }
    else if(temp2 == 0x02) // esc key was pressed
    {
        ClearScreen(); // esc will clear the screen for now
        clearTextLine();

        textlineindex = 0; // reset the index
        resetPlaceCharLocation(); // reset the screen beginning
    }
    else if(temp2 == 0x03) // caps lock was pressed
    {
        invertShiftPressed();
    }
    else if(temp2 == 0x04) // backspace pressed
    {
        press_backspace();
    }
    else if(temp2 != 0)  //if there is no special key pressed
    {   //then add it to the textLine buffer and increase the index
        addCharToTextLine(temp2);
   }
}

void resetPlaceCharLocation(void)
{
    setCursorLocation(0);
    LineLocationEnd = 0;
}

extern void setTextLineIndex(int newtextlineindex)
{
    textlineindex = newtextlineindex;
}

extern int getTextLineIndex(void)
{
    return textlineindex;
}


void processLine(uint8_t * textLinePtr)
{
    int valid_command;
    int z;
    int z2;
    valid_command = 1;

    for(z = 0; z < 11 && valid_command == 1; z++)
    {
            if(textLinePtr[z] != commandIPTargetSet[z])
            {
                    valid_command = 0;
            }
    }
    //check if the last character is a space
    if(' ' != textLinePtr[11])
    {
        valid_command = 0;
    }
    else
    {
        //then get the next ___.___.___.___(null) 15 characters
        //textLinePtr[12] to textLinePtr[27]
        for(z2 = 0, z = 12; textLinePtr[z] != ' ' && z < 28; z++, z2++)
        {
            IPTarget[z2] = textLinePtr[z];
        }
    }

    if(valid_command == 0)
    {
        valid_command = 1;
        for(z = 0; z < 2 && valid_command == 1; z++)
        {
                if(textLinePtr[z] != commandLS[z])
                {
                        valid_command = 0;
                }
        }
        //check if the last character is a space
        if(' ' != textLinePtr[2])
        {
            valid_command = 0;
        }
    }
    if(valid_command == 0)
    {
        valid_command = 1;
        for(z = 0; z < 2 && valid_command == 1; z++)
        {
                if(textLinePtr[z] != commandCD[z])
                {
                        valid_command = 0;
                }
        }
        //check if the last character is a space
        if(' ' != textLinePtr[2])
        {
            valid_command = 0;
        }
    }


    if(valid_command == 1)
    {
            placeChar(keyboard_lookup('S'));
            placeChar(keyboard_lookup('u'));
            placeChar(keyboard_lookup('c'));
            placeChar(keyboard_lookup('c'));
            placeChar(keyboard_lookup('e'));
            placeChar(keyboard_lookup('s'));
            placeChar(keyboard_lookup('s'));
            //interpret command

    }
    else
    {
            placeChar(keyboard_lookup('F'));
            placeChar(keyboard_lookup('a'));
            placeChar(keyboard_lookup('i'));
            placeChar(keyboard_lookup('l'));
	//print error message?
    }
}

extern void press_F1(void)
{
    int i = 0;
    //copy iptargetset command with default IP address to newtextLine
    for(i = 0; i < DefaultIpTargetCommandLength + 1; i++)
    {
        newtextLine[i] = defaultIPTargetCommand[i];
    }
    CompareTextLines(newtextLine);
}


//take out a character at the cursor location
//shift all the characters from there to the end of the text line down
void press_backspace(void)
{
    //uint8_t newtextLine[TEXTLINELENGTH];
    int i = 0;
    if(getTextLineIndex() > 1)
    {
        setTextLineIndex( getTextLineIndex() - 1 );
        //textlineindex--;
        for(i = 0; i < getTextLineIndex(); i++)
        {
            //TEMPORARY COMMENTING
            newtextLine[i] = textLine[i];
        }

        //copy from cursor location to end of line, shifting by one to compensate for the erased character
        //converting this to be until the first 0 in the newtextline
        for(i = getTextLineIndex(); i < TEXTLINELENGTH - 1 ; i++ )
        {
            //TEMPORARY COMMENTING
            newtextLine[i] = textLine[i + 1];
        }
        CompareTextLines(newtextLine);
    }

}

char * getIPTarget()
{
    return IPTarget;
}

extern void placeChar(uint8_t * character)
{


    if(getCursorLocation() < 7499)
    {
        setCursorLocation(getCursorLocation() + 1);
    }
    else
    {
        setCursorLocation(0);
    }
    LineLocationEnd++;

    writechar(character, getCursorLocation() - (getCursorLocation() / 100 ) , getCursorLocation() / 100);

}

uint8_t * gettextLine(void)
{
    return textLine;
}


//this function compares the two text lines and edits the old text line to equal the new text line
//to make it work appropriately, edit the newtextLine and call this function.
void CompareTextLines(char * newtextLine)
{
    int i = 0;
    int j = 0;
    int tempcursor = 0;
    for(i = 0; i < TEXTLINELENGTH && textLine[i] == newtextLine[i]; i++)
    {

    }
    if(i == TEXTLINELENGTH)
    {
        //then there is no difference, we are done
        return;
    }
    else
    {
        //then i is now the first difference between two lines.
        //this solution is alright for now, it does change the entire line from the beginning of changes to the end of the line
        //but it should go from the beginning of the changes to the end of the changes

        clearchar(i, TEXTLINELENGTH); // maybe i-1?

        tempcursor = setandgetCursorLocation(i - (i%4));

        for( j = i - (i % 4) - 1; j < TEXTLINELENGTH && newtextLine[j] != 0; j++)
        {
            textLine[j] = newtextLine[j];
            //here this function should call a print for a space first, then print the characters in the line until the end of the line.


            writechar(keyboard_lookup(newtextLine[j]), getCursorLocation() - (getCursorLocation() / 100 ) , getCursorLocation() / 100 ); // new text line or text line?

            //MoveCursorRight();

            //should the characters be printed first or the cursorlocation increased first?
            //does the cursor location really need to be increased?
            if(tempcursor < 7499)
            {
                tempcursor++;
            }
            else
            {
                tempcursor = 0;
            }
            //this increment may be incorrect, it can be removed
            //LineLocationEnd++;
            setandgetCursorLocation(tempcursor);

        }
        //this is a maybe, attempt to fix the delete issue
        setandgetCursorLocation(tempcursor-1);
    }

}

extern void clearTextLine(void)
{
    int i = 0;
    for(i = 0; i < TEXTLINELENGTH; i++) // iterates and clears the line
    {
        textLine[i] = 0;
    }
}

extern void addCharToTextLine(char temp2)
{
    textLine[getTextLineIndex()] = temp2;

    //then write the character to the screen

    //writechar(keyboard_lookup(textLine[textlineindex]), cursor_x, cursor_y);
    placeChar(keyboard_lookup(textLine[getTextLineIndex()]));

    //increase index
    setTextLineIndex(getTextLineIndex() + 1);
    //textlineindex++;
}
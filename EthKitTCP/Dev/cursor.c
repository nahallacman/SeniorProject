#include "cursor.h"



void cursor_init(void)
{
    //ResponseCompleteFlag = 0;
    NewCommandFlag = 0;
    DoneReceivingFlag = 0; 
    setCursorLocation(0);
    resetLineLocationEnd();
    setLineLocationStart(0);
}

//Do all of these functions really need to be external still?
//--- start cursor location operations ---

extern int setandgetCursorLocation(int newcursorLocation)
{
     CursorLocation = newcursorLocation;
     return CursorLocation;
}

/**
 * Gets the cursor location
 * @return CursorLocation
 */
extern int getCursorLocation(void)
{
     return CursorLocation;
}


/**
 * Sets the cursor location manually. Not suggested for normal use. No parameter checking.
 * @param newCursorLocation - int that the cursor will be set to.
 */
extern void setCursorLocation(int newCursorLocation)
{
    CursorLocation = newCursorLocation;
}

void MoveCursorLeft(void)
{
    if(getCursorLocation() == 0)
    {
        //do nothing, can't move more left
    }
    else
    {
        if(getCursorLocation() > getLineLocationStart() - 1)
        {
            //move cursor left
            setCursorLocation(getCursorLocation() - 1);
            //CursorLocation--;
        }
        //else
        //{
            //do nothing, the cursor can't go any more left
        //}
    }

}

void MoveCursorRight(void)
{
    if(getCursorLocation() < 7499)
    {
        if(getCursorLocation() < getLineLocationEnd())
        {
            //move cursor right
            //CursorLocation++;
            setCursorLocation(getCursorLocation() + 1);
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
        if(CursorLocation - 100 > getLineLocationStart())
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
        if(CursorLocation + 100 < getLineLocationEnd())
        {
            //move cursor down
            CursorLocation = CursorLocation + 100;
        }
    }
    else
    {
        //do nothing, can't move more up
    }
}

void MoveCursorDownOneLine(void)
{
    int i = CursorLocation + 100 - (CursorLocation % 100);
    if(CursorLocation < 7499)
    {
        if( i - 1 < getLineLocationEnd())
        {
            //move cursor down
            CursorLocation = CursorLocation + 100 - (CursorLocation % 100);
        }
    }
}

//--- end cursor location operations ---
//--- start line end location operations ---

extern void increaseLineLocationEnd(void)
{
    //needs bounds checking
    LineLocationEnd++;
}

extern void increaseLineLocationEndOneLine(void)
{
    LineLocationEnd = LineLocationEnd - ( LineLocationEnd % 100 ) + 100;
}

extern void decreaseLineLocationEnd(void)
{
    //needs bounds checking
    if(LineLocationEnd > 0)
    {
        LineLocationEnd--;
    }
}

extern void resetLineLocationEnd(void)
{
    LineLocationEnd = 0;
}

extern int getLineLocationEnd(void)
{
    return LineLocationEnd;
}
//--- end line end location operations ---
//--- begin line start location operations ---
int getLineLocationStart(void)
{
    return LineLocationStart;
}
void setLineLocationStart(int newLineLocationStart)
{
    LineLocationStart = newLineLocationStart;
}
//--- end line start location operations ---

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
        //if the processed line isn't recognized, set it to the command to send
        if(processLine(textLine) == 0)
        {
            if(textLine[0] != '\0')
            {
                setCommand(textLine);
                ResponseBeginFlag = 1;
                NewCommandFlag = 1;
            }
        }


        //clear the textLine so we can start over with the commands
        clearTextLine();

        //wait for the command to be sent then recieved.
        //while(ResponseBeginFlag == 0);

        //set the flag for beginning a send command, wait for response, print response cycle

        

        //not sure if this goes here, but going to try
        //printStoredString();

        //now move the beginning of the line to the current cursor.
        setLineLocationStart(getCursorLocation());
    }
    else if(temp2 == 0x02) // esc key was pressed
    {
        //might want to put all of these into an init() or reset()
        ClearScreen(); // esc will clear the screen for now
        clearTextLine();

        resetPlaceCharLocation(); // reset to the screen beginning
        setLineLocationStart(0); // reset the lineLocationStart after reseting things
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
    resetLineLocationEnd();
    //LineLocationEnd = 0;
}


int processLine(uint8_t * textLinePtr)
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
        //if(' ' != textLinePtr[2])
        //{
        //    valid_command = 0;
        //}
    }
    if(valid_command == 0)
    {
        valid_command = 1;
        for(z = 0; z < 15 && valid_command == 1; z++)
        {
                if(textLinePtr[z] != commandprinttestscreen[z])
                {
                        valid_command = 0;
                }
        }
        //check if the last character is a space
        //if(' ' != textLinePtr[15])
        //{
        //    valid_command = 0;
        //}
        if(valid_command == 1)
        {
            printTestScreen();
        }
    }
    if(valid_command == 0)
    {
        valid_command = 1;
        for(z = 0; z < 4 && valid_command == 1; z++)
        {
                if(textLinePtr[z] != commandhelp[z])
                {
                        valid_command = 0;
                }
        }
        //check if the last character is a space
        //if(' ' != textLinePtr[4])
        //{
        //    valid_command = 0;
        //}
        if(valid_command == 1)
        {
            printHelpScreen();
        }
    }

    //commandhelp[] = "help";


    if(valid_command == 1)
    {
            placeString("\nPIC32 Valid String\n\0");
            //interpret command
    }
    else
    {
            placeString("\nPIC32 Invalid String, passing it on\n\0");
	//print error message?
    }

    return valid_command;
}

/*
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

*/
//take out a character at the cursor location
//shift all the characters from there to the end of the text line down
void press_backspace(void)
{
    //uint8_t newtextLine[TEXTLINELENGTH];
    int i = 0;
    int iter = 0;
    char * printStart;


    int cursor = getCursorLocation()- getLineLocationStart();
    int lineEnd = getLineLocationEnd();
    int printBegin = 0;
    //only do stuff if the cursor is bigger than the current line beginning
    //(attempting to keep from deleting off the back of the line)
    if(getCursorLocation() > getLineLocationStart())
    {
        //delete the character before the cursor
        //if it is the last one in the line, replace it with a null
        if(textLine[cursor] == 0)
        {
            textLine[cursor - 1]  = 0;
        }
        else
        {
            //this needs to be tested and corrected
            //otherwise shift down all characters after that
            for(iter = cursor - 1; iter < lineEnd; iter++ )
            {
                textLine[iter] = textLine[iter + 1];
            }
        }
        //move the cursor back one
        MoveCursorLeft();
        //decrease the end of the line index
        decreaseLineLocationEnd();
        //clear the line
        clearchar(getCursorLocation(), lineEnd); // maybe i-1?

        //reprint the string from the curor location
        printStart = textLine; // does this need a dereference?
        printBegin = cursor - (cursor % 4);
        if(printBegin == cursor)
        {
            printBegin = printBegin - 4;
        }
        if( ( cursor % 4 ) == 0 )
        {
            for(i = 0; i < 4; i++)
            {
                //move the cursor back one
                MoveCursorLeft();
                //decrease the end of the line index
                decreaseLineLocationEnd();
            }
        }
        else
        {
            for(i = 0; i < (cursor % 4); i++)
            {
                //move the cursor back one
                MoveCursorLeft();
                //decrease the end of the line index
                decreaseLineLocationEnd();
            }
        }
        for(i = 0; i < printBegin - 1 ; i++)
        {
            printStart++;
        }

        //walk the cursor back while reprinting the area that was just cleared
        placeString(printStart);
    }

    //reduce the


/*
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
*/
}

char * getIPTarget()
{
    return IPTarget;
}

/**
 * Places a null terminated string on the screen.
 * @param string - string that gets placed on screen.
 */
extern void placeString(char * string)
{
    int iter;
    for(iter = 0; string[iter] != 0; iter++)
    {
        //placeChar(keyboard_lookup(string[iter]));
        placeChar(string[iter]);
    }
}

//extern void placeChar(uint8_t * character)
extern void placeChar(uint8_t character)
{
    //only for testing
    int breakpointint = 0;


    uint8_t character_memory[8];
    uint8_t * character_map = character_memory;

    int cursor_x = 0;
    int part1 = 0;
    int part2 = 0;
    int cursor_y = 0;


    if(character == 10)//newline = \n
    {
        increaseLineLocationEndOneLine();
        MoveCursorDownOneLine();
    }
    else if(character == 13) //carriage return = \r
    {
        //TODO
    }
    else if(character == 9) // tab = \t
    {
        //TODO
    }
    else // normal printable character
    {
        part1 = getCursorLocation();
        part2 = ((getCursorLocation() / 100 ) * 100);
        cursor_x = part1 - part2;
        cursor_y = getCursorLocation() / 100;

        //purely for testing
        if(cursor_x > 97)
        {
            breakpointint = 1;
        }
        if(cursor_y > 2)
        {
            breakpointint = 0;
        }
        //get the character map and feed it to the printing function
        character_map = keyboard_lookup(character);
        writechar( character_map, cursor_x , cursor_y );

        //if the character gets placed, increase things after
        increaseLineLocationEnd();
        MoveCursorRight();
    }
}

uint8_t * gettextLine(void)
{
    return textLine;
}


//this function compares the two text lines and edits the old text line to equal the new text line
//to make it work appropriately, edit the newtextLine and call this function.
//this function no longer works appropriately, needs a lot of work
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

/**
 * Adds a character to the text line indexed by the cursor.
 * @param temp2
 */
extern void addCharToTextLine(char temp2)
{
    int index = 0;
    index  = getCursorLocation() - getLineLocationStart();
    //add the character to the line
    //textLine[getCursorLocation()] = temp2;
    textLine[index] = temp2;

    //then write the character to the screen
    //placeChar(keyboard_lookup(textLine[getCursorLocation()]));
    placeChar(textLine[index]);
    
}

void printHelpScreen(void)
{
    clearTextLine();
    placeString("\nhelp - prints this menu\niptargetset - sets a target machine by IP address\nprinttestscreen - clears the screen then prints a test pattern\n\0");
}

void printTestScreen(void)
{
	uint8_t a;
	int i;
        //first clear the screen, then start printing the test pattern.
        ClearScreen();
        clearTextLine();
        resetPlaceCharLocation(); // reset to the screen beginning
	for(i = 0; i < 79; i++) // 94 * 79 = 7426
        //for(i = 0; i < 2; i++) // 94 * 79 = 7426, less than 7500 total
	{
		for(a = 0x21; a < 0x7F; a++) //94 characters
		{
                    //placeChar(keyboard_lookup(a));
                    placeChar(a);
		}
	}
}

//text line that will be added to using addtoprintstring(char *)
//uint8_t PrintTextLine[TEXTLINELENGTH];
//index for addtoprintstring(char *)
//int PrintTextIndex;

//add the string to a line using the PrintTextIndex
void AddToPrintString(char * TextString)
{
    int iter;
    for(iter = 0; TextString[iter] != 0; iter++)
    {
        PrintTextLine[PrintTextIndex+iter] = TextString[iter];
    }
    PrintTextIndex += iter;
}
void printStoredString(void)
{
    

    //make sure the string ends in a newline and a null
    if(PrintTextLine[PrintTextIndex] != '\n')
    {
        PrintTextLine[PrintTextIndex] = '\n';
    }
    if(PrintTextLine[PrintTextIndex + 1] != '\0')
    {
        PrintTextLine[PrintTextIndex + 1] = '\0';
    }

    placeString(PrintTextLine);
    PrintTextIndex = 0;
}

//currently has no indication of the size of the command buffer, may need to implement that
void setCommand(uint8_t * TextString)
{
    int iter;
    for(iter = 0; TextString[iter] != 0; iter++)
    {
        CommandLine[iter] = TextString[iter];
    }
    CommandLine[iter] = '\0';
}

uint8_t * getCommand(void)
{
    return CommandLine;
}
/*
void setLastCommand(uint8_t * TextString)
{
    int iter;
    for(iter = 0; TextString[iter] != 0; iter++)
    {
        LastCommandLine[iter] = TextString[iter];
    }
    LastCommandLine[iter] = '\0';
}
uint8_t * getLastCommand(void)
{
    return LastCommandLine;
}
 * */
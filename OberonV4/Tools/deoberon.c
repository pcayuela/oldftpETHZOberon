#include <stdio.h>

/*
Usage: deoberon < inputfile [> outputfile]

A program to convert an Oberon text file to a unix text file.

If the input is not an Oberon text file, it is copied to the output.

An Oberon text file consists of a variable-sized header followed
by the ASCII representation of the text. The header contains attribute
information like fonts and colors.

Notes :

OS  End Of Line
Unix   10
DOS  13,10
Mac  13,10
Oberon  13

Bugs :
  
*/

#define CntrlChr (' ')

int Eof = 0;

int RdCh()
{
  int bytes;
  bytes = getchar();
  if ( bytes == EOF ) {
    Eof = 1;
  }
  return bytes;
}
  
void printchar(ch)
  int ch;
{
  if (ch == 13 || ch == 10) putchar(10);
  else if (ch == '\t') {putchar(' '); putchar(' ');}
  else if (iscntrl(ch)) putchar(CntrlChr);
  else putchar(ch); 
}

void SkipHeader()
{
  int word[4], ch1, ch2;
  int skip;
  
  ch1 = RdCh(); ch2 = RdCh();
  if (((ch1 == 240) && (ch2 == 1)) || ((ch1 == 1) && (ch2 == 240))) {/* text tag */
    /* read a long word in little endian format */
    word[0] = RdCh();
    word[1] = RdCh();
    word[2] = RdCh();
    word[3] = RdCh();
    /* seek to start of ascii text */
    for (skip = word[0] + ( word[1]<<8 ) +
      ( word[2]<<16 ) + ( word[3]<<24 ) - 6; skip--; skip == 0) RdCh();
  } else {
    printchar(ch1); printchar(ch2);
  }
}
  
void main()
{
  int ch;

  SkipHeader(); 
  for (;;) {
    ch = RdCh();
    if ( Eof ) break;
    else printchar(ch);
  } 
}


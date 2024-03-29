//Global Variables

PFont titleFont;
color ink, RedInk=#FF0000, BlackInk=#000000;
int alignHorizontal, alignVertical; //Display
String Pausestring = "Pause", Playstring = "Play&Pause", Stopstring = "Stop", SkipForwardstring = "Fast Forward", SkipBackwardstring = "Rewind", Nextstring = "Next", Backstring = "Previous", Loopstring = "Loop", Mutestring = "Mute";
String YEEstring = "YEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE";
PFont Font;
PFont YEEFont;
//color red=#FF0000, black=#000000,  cyan=#00FFFF, blue=#0000FF, white=#FFFFFF, orange=#FF7F03, darkblue=#000080; //Night Mode Friendly
//color white=#FFFFFF; //Not Night Mode Friendly 
//
void TextSetup() {
  
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choose, then createFont
   
  Font = createFont ("Old English Text MT", 25); //Verify font exists
  YEEFont = createFont ("Snap ITC", 25);
  //OldEnglishTextMT = createFont ("Old English Text MT", 35); //Verify font exists
  /*
  Fonts I will might use;
  [280] "Old English Text MT"
  [381] "Snap ITC"
  Parchment
  Algerian
  Mistral
  [34] "Berlin Sans FB"
  [35] "Berlin Sans FB Bold"
  [36] "Berlin Sans FB Demi Bold"
  */
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
}// End textSetup
//
void preTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font ) {
  fill(ink); //Ink, hexidecimal copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(Font, height); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
}// End preTextDraw
//
void PauseTextDraw( float height, color ink, int alignHorizontal, int alignVertical, String Pausestring, float pauseTextX, float pauseTextY, float pauseTextWidth, float pauseTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, Pausestring, pauseTextWidth));
  text(Pausestring, pauseTextX, pauseTextY, pauseTextWidth, pauseTextHeight);
  TextReset();
}// End textDraw
void PlayTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String Playstring, float playTextX, float playTextY, float playTextWidth, float playTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, Playstring, playTextWidth));
  text(Playstring, playTextX, playTextY, playTextWidth, playTextHeight);
  TextReset();
}// End textDraw

void StopTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String Stopstring, float stopX, float stopY, float stopWidth, float stopHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, Stopstring, stopWidth));
  text(Stopstring, stopX, stopY, stopWidth, stopHeight);
  TextReset();
}// End textDraw

void SkipForwardTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String SkipForwardstring, float ffTextX, float ffTextY, float ffTextWidth, float ffTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, SkipForwardstring, ffTextWidth));
  text(SkipForwardstring, ffTextX, ffTextY, ffTextWidth, ffTextHeight);
  TextReset();
}// End textDraw
void SkipBackwardTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String SkipBackwardstring, float rTextX, float rTextY, float rTextWidth, float rTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, SkipBackwardstring, rTextWidth));
  text(SkipBackwardstring, rTextX, rTextY, rTextWidth, rTextHeight);
  TextReset();
}// End textDraw
void NextTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String Nextstring, float skipTextX, float skipTextY, float skipTextWidth, float skipTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, Nextstring, skipTextWidth));
  text(Nextstring, skipTextX, skipTextY, skipTextWidth, skipTextHeight);
  TextReset();
}// End textDraw
void BackTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String Backstring, float backTextX, float backTextY, float backTextWidth, float backTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, Backstring, backTextWidth));
  text(Backstring, backTextX, backTextY, backTextWidth, backTextHeight);
  TextReset();
}// End textDraw
void LoopTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String Loopstring, float loopTextX, float loopTextY, float loopTextWidth, float loopTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, Loopstring, loopTextWidth));
  text(Loopstring, loopTextX, loopTextY, loopTextWidth, loopTextHeight);
  TextReset();
}// End textDraw
void MuteTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String Mutestring, float muteTextX, float muteTextY, float muteTextWidth, float muteTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, Mutestring, muteTextWidth));
  text(Mutestring, muteTextX, muteTextY, muteTextWidth, muteTextHeight);
  TextReset();
}// End textDraw
void YEETextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont YEEFont, String YEEstring, float YEEx, float YEEy, float YEEWidth, float playTextHeight) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, YEEFont ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, Mutestring, muteTextWidth));
  text(YEEstring, YEEx, YEEy, YEEWidth, playTextHeight);
  TextReset();
}// End textDraw
void TextReset() {
  fill(BlackInk);
}// End textReset
//
float TextCalculator( float size, String string, float Width ) {
  textSize(size);
  while ( textWidth(string) > Width)
  {
    size = size * 0.99; //size-- will do pixils
    textSize(size);
  }
  return size;
}// End textCalculator
//
void textKeyPressed() {
}// End textKeyPressed
//
void textMousePressed() {
}//End textMousePressed
//

//End Text SubProgram

//Global Variables

PFont titleFont;
color ink, RedInk=#FF0000, BlackInk=#000000;
int alignHorizontal, alignVertical; //Display
String string = "Something I'm too lazy to think of anything", Alternatestring = "I can't think of anything";
PFont Font;
PFont OldEnglishTextMT;
//color red=#FF0000, black=#000000,  cyan=#00FFFF, blue=#0000FF, white=#FFFFFF, orange=#FF7F03, darkblue=#000080; //Night Mode Friendly
//color white=#FFFFFF; //Not Night Mode Friendly 
//
void TextSetup() {
  
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choose, then createFont
   
  Font = createFont ("Old English Text MT", 35); //Verify font exists
  //OldEnglishTextMT = createFont ("Old English Text MT", 35); //Verify font exists
  /*
  Fonts I will might use;
  [280] "Old English Text MT"
  [381] "Snap ITC"
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
void TextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String string, float RectX1, float RectY1, float RectWidth, float RectHeight ) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //Passing Par
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(TextCalculator(height, string, RectWidth));
  text(string, RectX1, RectY1, RectWidth, RectHeight);
  TextReset();
}// End textDraw
void TextReset() {
  fill(BlackInk);
}// End textReset
//
float TextCalculator( float size, String string, float RectWidth ) {
  textSize(size);
  while ( textWidth(string) > RectWidth)
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

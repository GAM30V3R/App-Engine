
//Global Varibale
PFont titleFont
void TextSetup() {
  /*
  string[] fontList = P.list
  */
  titleFont = createFont ("insert font here", 97);
}//End TextSetup

void preTextDraw() {
  fill(ink);
  textAlign (alignHorizontal, alignVertical );
  textFont (font, height);
}//End TextDraw
void TextDraw() {
  preTextDraw();
  textSize (textCalculator(height, string, Width));
  text (string, X, Y, Width, Height);
  textReset();
  
  
}//End TextDraw
void TextReset() {}
float textCalculator() {
  return ;

}
void TextKeyPressed() {}//End TextKeyPressed

void TextMousePressed() {}//End TextMousePressed

//End Text SubProgram

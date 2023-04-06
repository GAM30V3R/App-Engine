/* Prototyping text
-copy a rectangle from the 2D Music Button shapes
-add a Rectangle to put text in
-Note: could also be a HoverOver feature
*/
//Global Variables

//color redink=#FF0000, black=#000000,  cyan=#00FFFF, blue=#0000FF, white=#FFFFFF, orange=#FF7F03, darkblue=#000080; //Night Mode Friendly



void setup() {
  size(1000,500); //width, height
  //FlatText();
  drawRectangle();
  TextSetup(); // Must be in void setup
  //Code Below
  TextDraw(height, RedInk, CENTER, CENTER, Font, string, RectX1, RectY1, RectHeight, RectHeight ); // Can be anywhere
  TextDraw(height, RedInk, CENTER, CENTER, Font, Alternatestring, RectX1, RectY1+height*1/4, RectHeight, RectHeight );
}//End Setup

void draw() {
  
}//End Draw

void keyPressed() {}//End KeyPressed

void mousePressed() {}//End MousePressed\

//Reviewing Intro Text Code
void flatText() {}

//End Main Program

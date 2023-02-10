//Global Variables
float buttonX1, buttonY1, buttonX2, buttonY2, buttonWidth, buttonHeight;
float buttonScaleWidth, buttonScaleHeight ;
//
void setup() {
  //Landscape (portrait, square)
  size(500, 500); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //Population, visual data
  float MusicButtonDrawX = width * 1/2;
  float MusicButtonDrawY = height * 5/10;
  buttonScaleWidth = 1.0/20.0 ;
  buttonScaleHeight = 1.0/5.0;
  buttonWidth = width * buttonScaleWidth ; 
  buttonX1 = MusicButtonDrawX - buttonWidth - buttonWidth*1/2;
  buttonY1 = MusicButtonDrawY;
  buttonX2 = MusicButtonDrawX + buttonWidth*1/2;
  buttonY2 = buttonY1;
  buttonHeight = height * buttonScaleHeight;
}//End setup
//
void draw() {
  rect( buttonX1, buttonY1, buttonWidth, buttonHeight );
  rect( buttonX2, buttonY2, buttonWidth, buttonHeight );
  
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
//
//End MAIN Program (Driver)

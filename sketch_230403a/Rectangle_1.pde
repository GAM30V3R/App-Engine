// Text is always put in one rectangle
//Global Variables
/*
float rectX1, rectY1, rectWidth, rectHeight;
float musicButtonDrawX = width * 1/2;
float musicButtonDrawY = height * 1/2;
float ScaleWidth, ScaleHeight;
//ScaleWidth = 1.0/30.0; //used to change x-size
//ScaleHeight = 1.0/5.5; //used to change y-axis

void setuprectangle() {
  rectWidth = width/2;
  rectX1 = musicButtonDrawX;
  rectY1 = musicButtonDrawY;
  rectHeight = height/2 ;
}
rect(X1, Y1, rectWidth, rectHeight );
*/
void drawRectangle() {
  //
    
  float RectX1, RectY1, RectX2, RectY2, RectWidth, RectHeight;
  float RectScaleWidth, RectScaleHeight;
  float RectDrawX = width * 1/2;
  float RectDrawY = height * 1/2;
  RectScaleWidth = 1.0/30.0; //used to change x-size
  RectScaleHeight = 1.0/5.5; //used to change y-axis
  println(RectScaleWidth);
  println(RectScaleHeight);
  RectWidth = width * RectScaleWidth;
  RectHeight = height * RectScaleHeight;
  RectX1 = RectDrawX - RectWidth - RectWidth*1/2;
  RectY1 = RectDrawY ;
  RectX2 = RectDrawX + RectWidth + RectWidth*1/4;
  RectY2 = RectY1 + RectHeight;
  rect( RectX1, RectY1, RectHeight, RectHeight );
  rect( RectX2, RectY2, -RectHeight, -RectHeight );
}


//Global Variables
float RectX1, RectY1, RectX2, RectY2, RectWidth, RectHeight;
float RectScaleWidth, RectScaleHeight;
void drawRectangle() {
  float RectDrawX = width * 1/2;
  float RectDrawY = height * 1/2;
  RectScaleWidth = 1.0/30.0; //used to change x-size
  RectScaleHeight = 1.0/5.5; //used to change y-axis
  println(RectScaleWidth);
  println(RectScaleHeight);
  RectWidth = width/2;
  RectHeight = height/2;
  RectX1 = RectDrawX - RectWidth/2;
  RectY1 = RectDrawY - RectHeight/2;
  RectX2 = RectDrawX ;
  RectY2 = RectY1 + RectHeight;
  rect( RectX1, RectY1, RectHeight, RectHeight );
  //rect( RectX2, RectY2, -RectHeight, -RectHeight );
}

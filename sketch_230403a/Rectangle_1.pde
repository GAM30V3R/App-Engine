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
    
  float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
  float pauseScaleWidth, pauseScaleHeight;
  float stopX, stopY, stopWidth, stopHeight;
  float playX1, playY1, playX2, playY2, playX3, playY3;
  float musicButtonDrawX = width * 1/2;
  float musicButtonDrawY = height * 1/2;
  pauseScaleWidth = 1.0/30.0; //used to change x-size
  pauseScaleHeight = 1.0/5.5; //used to change y-axis
  println(pauseScaleWidth);
  println(pauseScaleHeight);
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = height * pauseScaleHeight;
  //
  stopX = pauseX1;
  stopY = musicButtonDrawY * 3/2;
  stopWidth = pauseHeight ;
  stopHeight = pauseHeight;
  //
  playX1 = pauseX1 ;
  playY1 = musicButtonDrawY;
  playX2 = musicButtonDrawX + (pauseWidth * 1.5) ;
  playY2 = (playY1 + pauseHeight) / 1.15;
  playX3 = pauseX1 ;
  playY3 = musicButtonDrawY + pauseHeight ;
  //
  /*
  drawPauseButton();
  drawStopButton();
  drawPlayButton ();
  */
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  rect( stopX, stopY, stopWidth, stopHeight );
  triangle( playX1, playY1, playX2, playY2, playX3, playY3);
}

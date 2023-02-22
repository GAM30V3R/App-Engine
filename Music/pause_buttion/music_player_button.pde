//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6;
float rX1, rY1, rX2, rY2, rX3, rY3, rX4, rY4, rX5, rY5, rX6, rY6;
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3, skipX4, skipY4;
float backX1, backY1, backX2, backY2, backX3, backY3, backX4, backY4;
color resetcolorNightMode=#FFFF48, red=#FF0000; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly
//
void drawMusicButtons() {
  drawPauseButton();
  drawStopButton();
  drawPlayButton ();
  drawFFButton();
  drawRButton();
  drawSkipButton();
  drawBackButton();
}//End drawMusicButtons() 
//
void drawPauseButton() {
  fill(red);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawPauseButton()
//
void drawStopButton() {
  fill(red);
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawStopButton()
//
void drawPlayButton() {
  fill(red);
  triangle( playX1, playY1, playX2, playY2, playX3, playY3) ;
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawPlayButton()
//
void drawFFButton() {
   fill(red);
   triangle( ffX4, ffY4, ffX5, ffY5, ffX6, ffY6) ;
   triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawFFButton()
//
void drawRButton() {
   fill(red);
   triangle( rX4 , rY4, rX5, rY5, rX6, rY6) ;
   triangle( rX1, rY1, rX2, rY2, rX3, rY3) ;
   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawReverseButton()
//
void drawSkipButton() {
  fill(red);
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawSkipButton()
void drawBackButton() {
  fill(red);
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawBackButton()
//  
//End Music Player Buttons

//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6;
color resetcolorNightMode=#FFFF48, red=#FF0000; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly
//
void drawMusicButtons() {
  drawPauseButton();
  drawStopButton();
  drawPlayButton ();
  drawFFButton();
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
   triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
   triangle( ffX4, ffY4, ffX5, ffY5, ffX6, ffY6) ;
   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawFFButton()
//

//
//End Music Player Buttons

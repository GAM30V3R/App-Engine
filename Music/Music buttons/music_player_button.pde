//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6;
float rX1, rY1, rX2, rY2, rX3, rY3, rX4, rY4, rX5, rY5, rX6, rY6;
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3, skipX4, skipY4;
float backX1, backY1, backX2, backY2, backX3, backY3, backX4, backY4;
float loopX1, loopY1, loopWidth, loopHeight, loopX2, loopY2, loopWidth2, loopHeight2, loopX3, loopY3, loopX4, loopY4, loopX5, loopY5;
float muteX1, muteY1, muteX2, muteY2, muteX3, muteY3, muteX4, muteY4, muteX5, muteY5, muteX6, muteY6, muteX7, muteY7, muteX8, muteY8, muteX9, muteY9, muteWidth, muteHeight, muteWidth2, muteHeight2;
color resetcolorNightMode=#FFFF48, red=#FF0000, black=#000000, cyan=#00FFFF, blue=#0000FF, green=#00FF00; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly
//
void drawMusicButtons() {
  stroke(red) ;
  strokeWeight(7.5);
  //strokeWeight(4.75) when doing the extra lines for design
  drawPauseButton();
  drawStopButton();
  drawPlayButton ();
  drawFFButton();
  drawRButton();
  drawSkipButton();
  drawBackButton();
  drawLoopButton() ;
  drawMuteButton();
}//End drawMusicButtons() 
//
/*
  {
    stroke(cyan);
    strokeWeight(4.75);
    line( , , , );
    strokeWeight(7.5);
    stroke(red):
  }
*/
//
void drawPauseButton() {
  fill(black);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawPauseButton()
//
void drawStopButton() {
  fill(black);
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawStopButton()
//
void drawPlayButton() {
  fill(black);
  triangle( playX1, playY1, playX2, playY2, playX3, playY3);
  {
    stroke(cyan);
    strokeWeight(4.75);
    line( playX1, playY2, playX2, playY2);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawPlayButton()
//
void drawFFButton() {
   fill(black);
   triangle( ffX4, ffY4, ffX5, ffY5, ffX6, ffY6) ;
   {
     stroke(cyan);
     strokeWeight(4.75);
     line( ffX4, ffY4, ffX2, ffY2);
     line( ffX6, ffY6, ffX2, ffY2);
     strokeWeight(7.5);
     stroke(red);
   }

   triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
   {
     stroke(cyan);
     strokeWeight(4.75);
     line( ffX1, ffY2, ffX5, ffY5);
     line( ffX1, ffY1, ffX4, ffY5);
     line( ffX3, ffY3, ffX4, ffY5);
     line( ffX4, ffY4, ffX6, ffY6);
     strokeWeight(7.5);
     stroke(red);
   }

   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawFFButton()
//
void drawRButton() {
   fill(black);
   triangle( rX4 , rY4, rX5, rY5, rX6, rY6) ;
   triangle( rX1, rY1, rX2, rY2, rX3, rY3) ;
   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawReverseButton()
//
void drawSkipButton() {
  fill(black);
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawSkipButton()
//
void drawBackButton() {
  fill(black);
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawBackButton()
// 
void drawLoopButton() {
  fill(black);
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  fill(resetcolorDayMode) ; //Change this to ternary
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  fill(black);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawLoopButton()
//
void drawMuteButton() {
  fill(black);
  triangle (muteX1, muteY1, muteX2, muteY2, muteX3, muteY3);
  rect (muteX4, muteY4, muteWidth, muteHeight);
  rect (muteX5, muteY5, muteWidth2, muteHeight2);
  line ( muteX6, muteY6, muteX7, muteY7);
  line ( muteX8, muteY8, muteX9, muteY9);
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawMuteButton()
//End Music Player Buttons

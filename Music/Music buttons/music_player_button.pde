//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight, pauseX3;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6;
float rX1, rY1, rX2, rY2, rX3, rY3, rX4, rY4, rX5, rY5, rX6, rY6;
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3, skipX4, skipY4, skipX5;
float backX1, backY1, backX2, backY2, backX3, backY3, backX4, backY4, backX5;
float loopX1, loopY1, loopWidth, loopHeight, loopX2, loopY2, loopWidth2, loopHeight2, loopX3, loopY3, loopX4, loopY4, loopX5, loopY5, loopX6, loopY6, loopX7, loopY7, loopX8, loopY8, loopX9, loopY9, loopX10, loopY10, loopX11, loopY11, loopX12, loopY12;
float muteX1, muteY1, muteX2, muteY2, muteX3, muteY3, muteX4, muteY4, muteX5, muteY5, muteX6, muteY6, muteX7, muteY7, muteX8, muteY8, muteX9, muteY9, muteWidth, muteHeight, muteWidth2, muteHeight2, muteX10;
color resetcolorNightMode=#FFFF48, red=#FF0000, black=#000000, cyan=#00FFFF, blue=#0000FF, white=#FFFFFF, green=#00FF00; //Night Mode Friendly
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
    stroke(white);
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
  {
    stroke(white);
    strokeWeight(2.5);
    line( pauseX1, pauseY1, pauseX3, playY2 );
    line( pauseX1, playY3, pauseX3, playY2 );
    line( pauseX3, playY3, pauseX1, playY2 );
    line( pauseX3, pauseY1, pauseX1, playY2 );
    line( pauseX2, pauseY2, playX2, playY2 );
    line( pauseX2, playY3, playX2, playY2 );
    line( playX2, playY3, pauseX2, playY2 );
    line( playX2, pauseY2, pauseX2, playY2 );
    line( pauseX1, playY2, pauseX3, playY2 );
    line( pauseX2, playY2, playX2, playY2 );
    strokeWeight(7.5);
    stroke(red);
  }
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
    stroke(white);
    strokeWeight(2.5);
    line( playX1, playY2, playX2, playY2);
    line( playX1, playY1, pauseX2, playY2);
    line( playX1, playY1, pauseX3, playY2);
    line( playX3, playY3, pauseX2, playY2);
    line( playX3, playY3, pauseX3, playY2);
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
     stroke(white);
     strokeWeight(2.5);
     line( ffX4, ffY4, ffX2, ffY2);
     line( ffX6, ffY6, ffX2, ffY2);
     line( ffX1, ffY2, ffX5, ffY5);
     strokeWeight(7.5);
     stroke(red);
   }

   triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
   {
     stroke(white);
     strokeWeight(2.5);
     line( ffX1, ffY1, ffX4, ffY5);
     line( ffX3, ffY3, ffX4, ffY5);
     line( ffX1, ffY2, ffX2, ffY2);
     line( ffX4, ffY4, ffX6, ffY6);
     strokeWeight(7.5);
     stroke(red);
   }

   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawFFButton()
//
void drawRButton() {
   fill(black);
   triangle( rX4 , rY4, rX5, rY5, rX6, rY6);
   {
     stroke(white);
     strokeWeight(2.5);
     line( rX4, rY4, rX2, rY2);
     line( rX6, rY6, rX2, rY2);
     line( rX4, rY2, rX5, rY5);
     strokeWeight(7.5);
     stroke(red);
   }
   triangle( rX1, rY1, rX2, rY2, rX3, rY3);
   {
     stroke(white);
     strokeWeight(2.5);
     line( rX1, rY1, rX4, rY5);
     line( rX3, rY3, rX4, rY5);
     line( rX1, rY2, rX2, rY2);
     line( rX4, rY4, rX6, rY6);  
     strokeWeight(7.5);
     stroke(red);
   }
   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawReverseButton()
//
void drawSkipButton() {
  fill(black);
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
  {
    stroke(white);
    strokeWeight(2.5);
    line( skipX1, skipY2, skipX2, skipY2);
    line( skipX2, skipY2, skipX5, skipY1);
    line( skipX2, skipY2, skipX5, skipY3);
    line( skipX5, skipY2, skipX4, skipY1);
    line( skipX5, skipY2, skipX4, skipY3);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawSkipButton()
//
void drawBackButton() {
  fill(black);
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
  {
    stroke(white);
    strokeWeight(2.5);
    line( backX1, backY2, backX2, backY2);
    line( backX2, backY2, backX5, backY1);
    line( backX2, backY2, backX5, backY3);
    line( backX5, backY2, backX4, backY1);
    line( backX5, backY2, backX4, backY3);
    strokeWeight(7.5);
    stroke(red);
  }
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
  {
    stroke(white);
    strokeWeight(2.5);
    line( loopX1, loopY7, loopX8, loopY8);
    line( loopX8, loopY8, loopX1, loopY9);
    line( loopX7, loopY8, loopX1, loopY6);
    line( loopX1, loopY6, loopX9, loopY8);
    line( loopX1, loopY9, loopX6, loopY8);
    line( loopX1, loopY7, loopX6, loopY8);
    line( loopX1, loopY10, loopX7, loopY8);
    line( loopX1, loopY10, loopX9, loopY8);
    line( loopX1, loopY10, loopX11, loopY11);
    line( loopX11, loopY11, loopX8, loopY8);
    line( loopX8, loopY8, loopX11, loopY12);
    line( loopX11, loopY12, loopX1, loopY6);
    line( loopX1, loopY6, loopX12, loopY12);
    line( loopX12, loopY12, loopX6, loopY8);
    line( loopX6, loopY8, loopX12, loopY11);
    line( loopX12, loopY11, loopX1, loopY10);
    line( loopX1, loopY7, loopX11, loopY11);
    line( loopX11, loopY11, loopX7, loopY8);
    line( loopX7, loopY8, loopX11, loopY12);
    line( loopX11, loopY12, loopX1, loopY9);
    line( loopX1, loopY9, loopX12, loopY12);
    line( loopX12, loopY12, loopX9, loopY8);
    line( loopX9, loopY8, loopX12, loopY11);
    line( loopX12, loopY11, loopX1, loopY7);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
  noFill() ;
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  fill(resetcolorDayMode) ; //Change this to ternary
  fill(black);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  {
    stroke(white);
    strokeWeight(2.5);
    line( loopX1, loopY4, loopX4, loopY4);
    strokeWeight(7.5);
    stroke(red);
  }
}//End drawLoopButton()
//
void drawMuteButton() {
  fill(black);
  triangle (muteX1, muteY1, muteX2, muteY2, muteX3, muteY3);
  line(muteX1, muteY1, muteX4, muteY4);
  line(muteX3, muteY3, muteX5, muteY5);
  rect (muteX4, muteY4, muteWidth, muteHeight);
  rect (muteX5, muteY5, muteWidth2, muteHeight2);
  line ( muteX6, muteY6, muteX7, muteY7);
  line ( muteX8, muteY8, muteX9, muteY9);
  fill(resetcolorDayMode) ; //Change this to ternary
  {
    stroke(white);
    strokeWeight(2.5);
    line( muteX10, muteY4, muteX5, muteY5);
    line( muteX10, muteY5, muteX4, muteY4);
    line( muteX10, muteY4, muteX3, muteY3);
    line( muteX10, muteY5, muteX1, muteY1);
    line(muteX3, muteY3, muteX4, muteY4);
    line(muteX1, muteY1, muteX5, muteY5);
    strokeWeight(7.5);
    stroke(red);
  }
}//End drawMuteButton()
//End Music Player Buttons

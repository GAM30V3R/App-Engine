void population()
{
  //float startingX = width * 1/2;
  //float startingY = height * 1/2;
  //float buttonReferentMeasure = width*1/9;
  //float buttonSide = buttonReferentMeasure;
  float musicButtonDrawX = width * 1/2;
  float musicButtonDrawY = height * 1/2;
  pauseScaleWidth = 1.0/30.0; //used to change x-size
  pauseScaleHeight = 1.0/5.5; //used to change y-axis
  println(mouseX);
  println(mouseY);
  

  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = height * pauseScaleHeight;
  pauseX3 = pauseX1 + pauseWidth;
  pauseButtonWidth = (pauseX2 + pauseWidth) - pauseX1 ;
  pauseButtonHeight= buttonSide;
  //
  stopX = pauseX1;
  stopY = musicButtonDrawY * 3/2;
  stopWidth = pauseHeight ;
  stopHeight = pauseHeight;
  stopX2 = stopX + (pauseHeight/2);
  stopY2 = stopY + (pauseHeight/2);
  stopX3 = stopX + pauseHeight;
  stopY3 = stopY + pauseHeight;
  //
  playX1 = pauseX1 ;
  playY1 = musicButtonDrawY;
  playX2 = musicButtonDrawX + (pauseWidth * 1.5) ;
  playY2 = (playY1 + pauseHeight) / 1.15;
  playX3 = pauseX1 ;
  playY3 = musicButtonDrawY + pauseHeight ;
  playButtonWidth = pauseButtonWidth;
  playButtonHeight = pauseButtonHeight;
  //
  ffX1 = musicButtonDrawX + pauseHeight*1/3 + pauseHeight;
  ffY1 = musicButtonDrawY;
  ffX2 = ffX1 * 10.5/9.0;
  ffY2 = playY2;
  ffX3 = ffX1;
  ffY3 = playY3;
  ffX4 = ffX1 * 9.5/9.0;
  ffY4 = musicButtonDrawY;
  ffX5 = ffX4 * 10.5/9.0;
  ffY5 = playY2;
  ffX6 = ffX4;
  ffY6 = ffY3;
  ffButtonWidth = ffX5 - ffX1;
  ffButtonHeight= pauseButtonHeight;
  //
  rX1 = musicButtonDrawX - pauseHeight*1/3 - pauseHeight;
  rY1 = musicButtonDrawY;
  rX2 =  rX1 * 6.5/9.0;
  rY2 = ffY2;
  rX3 = musicButtonDrawX - pauseHeight*1/3 - pauseHeight;
  rY3 = ffY3;
  rX4 = rX1 * 8.15/9.0;
  rY4 = ffY4;
  rX5 = rX4 * 6.25/9.0 ;
  rY5 = ffY5;
  rX6 = rX4;
  rY6 = ffY6;
  rButtonWidth = rX1 - rX5;
  rButtonHeight= pauseButtonHeight;
  //
  skipX1 = ffX2 + pauseHeight*1/3 + pauseHeight;
  skipY1 = playY1;
  skipX2 = skipX1 + (pauseWidth * 1.5);
  skipY2 = playY2;
  skipX3 = skipX1;
  skipY3 = playY3;
  skipX4 = skipX2;
  skipY4 = pauseY1;
  skipX5 = skipX2 + (pauseWidth);
  skipButtonWidth = skipX5 - skipX1;
  skipButtonHeight= pauseButtonHeight;
  //
  backX1 = rX2 - pauseHeight*1/3 - pauseHeight;
  backY1 = skipY1;
  backX2 = backX1 - (pauseWidth * 1.5); 
  backY2 = skipY2;
  backX3 = backX1;
  backY3 = skipY3;
  backX4 = backX2;
  backY4 = skipY4;
  backX5 = backX2 - (pauseWidth);
  backButtonWidth = backX1 - backX5;
  backButtonHeight = pauseButtonHeight;
  //
  loopX1 = ffX4;
  loopY1 = musicButtonDrawY * 6.75/4;
  loopWidth = pauseHeight;
  loopHeight = pauseHeight;
  loopX2 = loopX1;
  loopY2 = loopY1;
  loopWidth2 = loopWidth * 1/2;
  loopHeight2 = loopHeight * 1/2;
  loopX3 = ffX4;
  loopY3 = loopY1 - (loopHeight2 * 2.5/2 );
  loopX4 = loopX1 * 10.5/10;
  loopY4 = loopY3 * 9.55/9;
  loopX5 = loopX3;
  loopY5 = loopY1 - (loopHeight2 / 2.5/2) ;
  loopX6 = loopX1 - loopWidth/4;
  loopY6 = loopY3 + (loopHeight/1.15);
  loopX7 = loopX1 + loopWidth/2;
  loopY7 = loopY1 - loopHeight/2;
  loopX8 = loopX1 + loopWidth/4;
  loopY8 = loopY3 + (loopHeight/1.65);
  loopX9 = loopX1 - loopWidth/2;
  loopY9 = loopY1 + loopHeight/2;
  loopY10 = loopY3 + (loopHeight/2.5);
  loopX11 = loopX1 + (loopWidth/2.7);
  loopY11 = loopY3 + (loopHeight/4);
  loopX12 = loopX1 - (loopWidth/2.7);
  loopY12 = loopY3 + (loopHeight/1);
  loopButtonWidth = loopX7 - loopX9;
  loopButtonHeight = loopY3 - loopY9;
  //
  muteX1 = musicButtonDrawX - (pauseWidth * 5);
  muteY1 = stopY;
  muteX2 = rX5;
  muteY2 = loopY1;
  muteX3 = muteX1;
  muteY3 = muteY1 + pauseHeight;
  muteX4 = muteX1 - (pauseWidth * 1.0);
  muteY4 = loopY4;
  muteWidth = -stopHeight * 5/8;
  muteHeight = stopHeight * 6/8;
  muteX5 = muteX4;
  muteY5 = muteY3 * 3.9/4;
  muteWidth2 = -stopHeight * 5/8;
  muteHeight2 = -stopHeight * 6/8;
  muteX6 = muteX1;
  muteY6 = muteY1;
  muteX7 = musicButtonDrawX - pauseHeight*0.50/12.0 - pauseHeight;
  muteY7 = muteY1 + pauseHeight;
  muteX8 = muteX7;
  muteY8 = muteY1;
  muteX9 = muteX6;
  muteY9 = muteY1 + pauseHeight;
  muteX10 = muteX5 + muteWidth;
  muteButtonWidth = muteX7 - muteX10;
  muteButtonHeight= stopHeight;
  
  pauseTextX=pauseX1;
  pauseTextY= pauseY1;
  pauseTextWidth= pauseX3 - pauseX1;
  pauseTextHeight= pauseHeight/2;
  playTextX= playX1;
  playTextY= playY1;
  playTextWidth= playX2-playX1;
  playTextHeight= pauseTextHeight ;
  /*
  stopTextX= ;
  stopTextY= ;
  stopTextWidth= ;
  stopTextHeight= ;
  */
  ffTextX= ffX1;
  ffTextY= ffY1;
  ffTextWidth= ffX5-ffX1 ;
  ffTextHeight= pauseTextHeight ;
  rTextX= rX5;
  rTextY= rY1;
  rTextWidth= rX1-rX5;
  rTextHeight= pauseTextHeight;
  skipTextX= skipX1;
  skipTextY= skipY1;
  skipTextWidth= skipX5-skipX1;
  skipTextHeight= pauseTextHeight;
  backTextX= backX5;
  backTextY= backY1;
  backTextWidth= backX1-backX5;
  backTextHeight= pauseTextHeight;
  loopTextX= loopX7;
  loopTextY= loopY8 + pauseTextHeight;
  loopTextWidth= loopX7-loopX9;
  loopTextHeight= pauseTextHeight;
  muteTextX= muteX10;
  muteTextY= muteY2 + pauseTextHeight;
  muteTextWidth= muteX1-muteX10;
  muteTextHeight= pauseTextHeight;
}


void drawMusicButtons() {
  stroke(red);
  strokeWeight(7.5);
  background(darkblue);
  /*
  drawPauseButton();
  drawStopButton();
  drawPlayButton ();
  drawFFButton();
  drawRButton();
  drawSkipButton();
  drawBackButton();
  drawLoopButton() ;
  drawMuteButton();
  */
}//End drawMusicButtons() 

void drawPauseButton() {
  fill(black);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  {
    stroke(cyan);
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
  noFill() ;
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
}//End drawPauseButton()
//
void drawStopButton() {
  fill(black);
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
  {
    stroke(cyan);
    strokeWeight(2.5);
    line( stopX, stopY, stopX3, stopY3);
    line( stopX3, stopY, stopX, stopY3);
    line( stopX, stopY2, stopX3, stopY2);
    line( stopX2, stopY, stopX2, stopY3);
    line( stopX, stopY, stopX3, stopY2);
    line( stopX, stopY, stopX2, stopY3);
    line( stopX3, stopY, stopX, stopY2);
    line( stopX3, stopY, stopX2, stopY3);
    line( stopX, stopY3, stopX2, stopY);
    line( stopX, stopY3, stopX3, stopY2);
    line( stopX3, stopY3, stopX2, stopY);
    line( stopX3, stopY3, stopX, stopY2);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
  noFill() ;
  rect( stopX, stopY, stopWidth, stopHeight );
}//End drawStopButton()
//
void drawPlayButton() {
  fill(black);
  triangle( playX1, playY1, playX2, playY2, playX3, playY3);
  {
    stroke(cyan);
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
  noFill() ;
  triangle( playX1, playY1, playX2, playY2, playX3, playY3);
}//End drawPlayButton()
//
void drawFFButton() {
   fill(black);
   triangle( ffX4, ffY4, ffX5, ffY5, ffX6, ffY6) ;
   {
     stroke(cyan);
     strokeWeight(2.5);
     line( ffX4, ffY4, ffX2, ffY2);
     line( ffX6, ffY6, ffX2, ffY2);
     line( ffX1, ffY2, ffX5, ffY5);
     strokeWeight(7.5);
     stroke(red);
   }

   triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
   {
     stroke(cyan);
     strokeWeight(2.5);
     line( ffX1, ffY1, ffX4, ffY5);
     line( ffX3, ffY3, ffX4, ffY5);
     line( ffX1, ffY2, ffX2, ffY2);
     line( ffX4, ffY4, ffX6, ffY6);
     strokeWeight(7.5);
     stroke(red);
   }

   fill(resetcolorDayMode) ; //Change this to ternary
   noFill() ;
   triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
   line(ffX4, ffY4, ffX5, ffY5);
   line(ffX5, ffY5, ffX6, ffY6);
}//End drawFFButton()
//
void drawRButton() {
   fill(black);
   triangle( rX4 , rY4, rX5, rY5, rX6, rY6);
   {
     stroke(cyan);
     strokeWeight(2.5);
     line( rX4, rY4, rX2, rY2);
     line( rX6, rY6, rX2, rY2);
     line( rX4, rY2, rX5, rY5);
     strokeWeight(7.5);
     stroke(red);
   }
   triangle( rX1, rY1, rX2, rY2, rX3, rY3);
   {
     stroke(cyan);
     strokeWeight(2.5);
     line( rX1, rY1, rX4, rY5);
     line( rX3, rY3, rX4, rY5);
     line( rX1, rY2, rX2, rY2);
     line( rX4, rY4, rX6, rY6);  
     strokeWeight(7.5);
     stroke(red);
   }
   fill(resetcolorDayMode) ; //Change this to ternary
   noFill() ;
   triangle( rX1, rY1, rX2, rY2, rX3, rY3);
   line(rX4 , rY4, rX5, rY5);
   line(rX5, rY5, rX6, rY6);
}//End drawReverseButton()
//
void drawSkipButton() {
  fill(black);
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
  {
    stroke(cyan);
    strokeWeight(2.5);
    line( skipX1, skipY2, skipX5, skipY2);
    line( skipX2, skipY2, skipX5, skipY1);
    line( skipX2, skipY2, skipX5, skipY3);
    line( skipX5, skipY2, skipX4, skipY1);
    line( skipX5, skipY2, skipX4, skipY3);
    line( skipX4, skipY4, skipX5, skipY3);
    line( skipX5, skipY4, skipX4, skipY3);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
  noFill() ;
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
}//End drawSkipButton()
//
void drawBackButton() {
  fill(black);
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
  {
    stroke(cyan);
    strokeWeight(2.5);
    line( backX1, backY2, backX5, backY2);
    line( backX2, backY2, backX5, backY1);
    line( backX2, backY2, backX5, backY3);
    line( backX5, backY2, backX4, backY1);
    line( backX5, backY2, backX4, backY3);
    line( backX4, backY4, backX5, backY3);
    line( backX5, backY4, backX4, backY3);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
  noFill() ;
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
}//End drawBackButton()
// 
void drawLoopButton() {
  fill(black);
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  fill(darkblue) ; //Change this to ternary
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  fill(black);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  {
    stroke(cyan);
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
    line(loopX12, loopY11, loopX11, loopY12);
    line(loopX11, loopY11, loopX12, loopY12);
    line(loopX7, loopY8, loopX9, loopY8);
    line(loopX1, loopY7, loopX1, loopY9);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
  noFill() ;
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  fill(darkblue);
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  noFill();
  fill(resetcolorDayMode) ; //Change this to ternary
  fill(black);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  {
    stroke(cyan);
    strokeWeight(2.5);
    line( loopX1, loopY4, loopX4, loopY4);
    strokeWeight(7.5);
    stroke(red);
  }
  noFill() ;
  
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
}//End drawLoopButton()
//
void drawMuteButton() {
  fill(black);
  triangle (muteX1, muteY1, muteX10, muteY2, muteX3, muteY3);
  line(muteX1, muteY1, muteX4, muteY4);
  line(muteX3, muteY3, muteX5, muteY5);
  rect (muteX4, muteY4, muteWidth, muteHeight);
  rect (muteX5, muteY5, muteWidth2, muteHeight2);
  line ( muteX6, muteY6, muteX7, muteY7);
  line ( muteX8, muteY8, muteX9, muteY9);
  fill(resetcolorDayMode) ; //Change this to ternary
  {
    stroke(cyan);
    strokeWeight(2.5);
    //line( muteX10, muteY2, muteX1, muteY1);
    //line( muteX10, muteY2, muteX3, muteY3);
    //line( muteX10, muteY2, muteX4, muteY4);
    //line( muteX10, muteY2, muteX5, muteY5);
    //line( muteX1, muteY2, muteX4, muteY4);
    //line( muteX1, muteY2, muteX5, muteY5);
    line( muteX10, muteY4, muteX5, muteY5);
    line( muteX10, muteY5, muteX4, muteY4);
    line( muteX10, muteY4, muteX3, muteY3);
    line( muteX10, muteY5, muteX1, muteY1);
    line(muteX3, muteY3, muteX4, muteY4);
    line(muteX1, muteY1, muteX5, muteY5);
    line( muteX10, muteY2, muteX1, muteY2);
    line( muteX1, muteY2, muteX10, muteY4);
    line( muteX1, muteY2, muteX10, muteY5);
    strokeWeight(7.5);
    stroke(red);
  }
  noFill() ;
  line(muteX1, muteY1, muteX4, muteY4);
  line(muteX3, muteY3, muteX5, muteY5);
  rect (muteX4, muteY4, muteWidth, muteHeight);
  rect (muteX5, muteY5, muteWidth2, muteHeight2);
  line(muteX1, muteY1, muteX3, muteY3);
}//End drawMuteButton()
void drawButtonText() {
  stroke(red);
  strokeWeight(2.5);
  rect(pauseTextX, pauseTextY, pauseTextWidth, -pauseTextHeight);
  rect(playTextX, playTextY, playTextWidth, -playTextHeight);
  //rect();
  rect(ffTextX, ffTextY, ffTextWidth, -ffTextHeight);
  rect(rTextX, rTextY, rTextWidth, -rTextHeight);
  rect(skipTextX, skipTextY, skipTextWidth, -skipTextHeight);
  rect(backTextX, backTextY, backTextWidth, -backTextHeight);
  rect(loopTextX, loopTextY, loopTextWidth, -loopTextHeight);
  rect(muteTextX, muteTextY, -muteTextWidth, -muteTextHeight);
}
//End Music Player Buttons

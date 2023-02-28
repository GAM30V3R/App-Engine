void setupPopulation() {
  //
    
  
  float musicButtonDrawX = width * 25/50;
  float musicButtonDrawY = height * 1/2;
  pauseScaleWidth = 1.0/30.0; //used to change x-size
  pauseScaleHeight = 1.0/5.5; //used to change y-axis
  //println(pauseScaleWidth);
  //println(pauseScaleHeight);
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
  //
  rX1 = musicButtonDrawX - pauseHeight*1/3 - pauseHeight;
  rY1 = musicButtonDrawX - ffY1;
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
  //
  skipX1 = ffX2 + pauseHeight*1/3 + pauseHeight;
  skipY1 = playY1;
  skipX2 = skipX1 + (pauseWidth * 1.5);
  skipY2 = playY2;
  skipX3 = skipX1;
  skipY3 = playY3;
  skipX4 = skipX2;
  skipY4 = pauseY1;
  //
  backX1 = rX2 - pauseHeight*1/3 - pauseHeight;
  backY1 = skipY1;
  backX2 = backX1 - (pauseWidth * 1.5); 
  backY2 = skipY2;
  backX3 = backX1;
  backY3 = skipY3;
  backX4 = backX2;
  backY4 = skipY4;
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
  loopY4 =  loopY3 * 9.55/9;
  loopX5 = loopX3;
  loopY5 = loopY1 - (loopHeight2 / 2.5/2) ;
  //
  muteX1 = rX3;
  muteY1 = stopY;
  muteX2 = rX2;
  muteY2 = loopY1;
  muteX3 = muteX1;
  muteY3 = muteY1 + pauseHeight;
  muteX4 = rX4;
  muteY4 = loopY4;
  muteWidth = -stopHeight;
  muteHeight = stopHeight * 0.75;
  muteX5 = musicButtonDrawX - pauseHeight*2/3 - pauseHeight;
}//End setupPopulation()
//

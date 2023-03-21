//Prototyping program for logical buttion pressing
//Global Varibles
float stopX, stopY, stopWidth, stopHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight, pauseButtonWidth, pauseButtonHeight;
float playX1, playY1, playX2, playY2, playX3, playY3, playButtonWidth, playButtonHeight;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6, ffButtonWidth, ffButtonHeight;
float rX1, rY1, rX2, rY2, rX3, rY3, rX4, rY4, rX5, rY5, rX6, rY6, rButtonWidth, rButtonHeight;
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3, skipX4, skipY4, skipX5, skipButtonWidth, skipButtonHeight;
float backX1, backY1, backX2, backY2, backX3, backY3, backX4, backY4, backX5, backButtonWidth, backButtonHeight;
float loopX1, loopY1, loopWidth, loopHeight, loopX2, loopY2, loopWidth2, loopHeight2, loopX3, loopY3, loopX4, loopY4, loopX5, loopY5, loopButtonWidth, loopButtonHeight;
float muteX1, muteY1, muteX2, muteY2, muteX3, muteY3, muteX4, muteY4, muteX5, muteY5, muteX6, muteY6, muteX7, muteY7, muteX8, muteY8, muteX9, muteY9, muteWidth, muteHeight, muteWidth2, muteHeight2, muteX10, muteButtonWidth, muteButtonHeight;
boolean stopHoverOver=false;
void setup() {
  size(1000, 500);
  //
  //Populaton, before moving to a Subprogram
  float startingX = width * 1/2;
  float startingY = height * 1/2;
  float buttonReferentMeasure = width*1/10;
  float buttonSide = buttonReferentMeasure;
  //
  stopX = startingX - (width * 1.0/30.0) - (width * 1.0/30.0)*1/2;
  stopY = startingY * 3/2;
  stopWidth = buttonSide ;
  stopHeight = buttonSide;
  //
  pauseWidth = width * 1/30;
  pauseX1 = startingX - pauseWidth - pauseWidth*1/2;
  pauseY1 = startingY;
  pauseX2 = startingX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = stopHeight;
  pauseButtonWidth=
  pauseButtonHeight= stopHeight;
  //
  playX1 = pauseX1 ;
  playY1 = startingY;
  playX2 = startingX + (pauseWidth * 1.5) ;
  playY2 = (playY1 + pauseHeight) / 1.15;
  playX3 = pauseX1 ;
  playY3 = startingY + pauseHeight ;
  playButtonWidth=
  playButtonHeight=
  //
  ffX1 = startingX + pauseHeight*1/3 + pauseHeight;
  ffY1 = startingY;
  ffX2 = ffX1 * 10.5/9.0;
  ffY2 = playY2;
  ffX3 = ffX1;
  ffY3 = playY3;
  ffX4 = ffX1 * 9.5/9.0;
  ffY4 = startingY;
  ffX5 = ffX4 * 10.5/9.0;
  ffY5 = playY2;
  ffX6 = ffX4;
  ffY6 = ffY3;
  ffButtonWidth=
  ffButtonHeight=
  //
   rX1 = startingX - pauseHeight*1/3 - pauseHeight;
  rY1 = startingY;
  rX2 =  rX1 * 6.5/9.0;
  rY2 = ffY2;
  rX3 = startingX - pauseHeight*1/3 - pauseHeight;
  rY3 = ffY3;
  rX4 = rX1 * 8.15/9.0;
  rY4 = ffY4;
  rX5 = rX4 * 6.25/9.0 ;
  rY5 = ffY5;
  rX6 = rX4;
  rY6 = ffY6;
  rButtonWidth=
  rButtonHeight=
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
  skipButtonWidth=
  skipButtonHeight=
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
  backButtonWidth=
  backButtonHeight=
  //
  
  //
  loopX1 = ffX4;
  loopY1 = startingY * 6.75/4;
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
  loopButtonWidth=
  loopButtonHeight=
  //
  muteX1 = startingX - (pauseWidth * 5);
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
  muteX7 = startingX - pauseHeight*0.50/12.0 - pauseHeight;
  muteY7 = muteY1 + pauseHeight;
  muteX8 = muteX7;
  muteY8 = muteY1;
  muteX9 = muteX6;
  muteY9 = muteY1 + pauseHeight;
  muteX10 = muteX5 + muteWidth;
  muteButtonWidth = muteX1 - muteX10;
  muteButtonHeight= stopHeight;
} //End setup

void draw() {
  //STOP Button: button is the logical rectangle
  //Hoverover Feature
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight)
  {
  println("Hovering Over Button");
  } else
  { 
    println("");
  }
  rect(stopX, stopY, stopWidth, stopHeight);
} //End draw

void keyPressed() {
} //End keyPressed

void mousePressed() {
  /*
  if (mouseX>=X && mouseX<=X && mouseY=>Y && mouseY<=Y+)
  add varibles to rect()
  */
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight)  println("Button Pressed");
} //End mousePressed

//End Main Program

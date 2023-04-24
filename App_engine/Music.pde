//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates a "Play list" variable holding MP
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, Start_Your_Engines, The_Simplest, Wood_Door_Series, Attic_Door ;
int currentmp3= 0;
Boolean AutoPlayOn=false;
Boolean PlayOn= false;
Boolean PauseOn= false;
Boolean StopOn= false;
Boolean SkipForwardOn= false;
Boolean SkipBackwardOn= false;
Boolean On= false;
Boolean NextOn= false;
Boolean BackOn= false;
Boolean LoopOn= false;
Boolean MuteOn= false;
Boolean ShowPlay = true, ShowPause = false;
Boolean infiniteloopon = false, singleloopon = false;
Boolean YEE = false;

//
int Width = width, Height = height;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight, pauseX3, pauseButtonWidth, pauseButtonHeight, pauseTextX, pauseTextY, pauseTextWidth, pauseTextHeight  ;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight, stopX2, stopY2, stopX3, stopY3, stopTextX, stopTextY, stopTextWidth, stopTextHeight ;
float playX1, playY1, playX2, playY2, playX3, playY3, playButtonWidth, playButtonHeight, playTextX, playTextY, playTextWidth, playTextHeight ;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6, ffButtonWidth, ffButtonHeight, ffTextX, ffTextY, ffTextWidth, ffTextHeight ;
float rX1, rY1, rX2, rY2, rX3, rY3, rX4, rY4, rX5, rY5, rX6, rY6, rButtonWidth, rButtonHeight, rTextX, rTextY, rTextWidth, rTextHeight ;
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3, skipX4, skipY4, skipX5, skipButtonWidth, skipButtonHeight, skipTextX, skipTextY, skipTextWidth, skipTextHeight ;
float backX1, backY1, backX2, backY2, backX3, backY3, backX4, backY4, backX5, backButtonWidth, backButtonHeight, backTextX, backTextY, backTextWidth, backTextHeight ;
float loopX1, loopY1, loopWidth, loopHeight, loopX2, loopY2, loopWidth2, loopHeight2, loopX3, loopY3, loopX4, loopY4, loopX5, loopY5, loopX6, loopY6, loopX7, loopY7, loopX8, loopY8, loopX9, loopY9, loopX10, loopY10, loopX11, loopY11, loopX12, loopY12, loopButtonWidth, loopButtonHeight, loopTextX, loopTextY, loopTextWidth, loopTextHeight ;
float muteX1, muteY1, muteX2, muteY2, muteX3, muteY3, muteX4, muteY4, muteX5, muteY5, muteX6, muteY6, muteX7, muteY7, muteX8, muteY8, muteX9, muteY9, muteWidth, muteHeight, muteWidth2, muteHeight2, muteX10, muteButtonWidth, muteButtonHeight, muteTextX, muteTextY, muteTextWidth, muteTextHeight ;
color resetcolorNightMode=#FFFF48, red=#FF0000, black=#000000,  cyan=#00FFFF, blue=#0000FF, blue4fifthcyan=#00CCFD, bluehalfcyan=#0080FF, white=#FFFFFF, orange=#FF8000,  red2thirdsorange=#FFAA00, redthirdsorange=#FF5500, darkblue=#000080, darkblue2=#000055, darkbluehalfcyan=#004080  ; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly 
float buttonReferentMeasure = width*1/9.75;
float buttonSide = buttonReferentMeasure;
float YEEx, YEEy, YEEWidth;
//

void setupMusic() {
  minim = new Minim (this); //loads data from directory, loadFile should also load from project folder, like loadImage
  //
  //Set the directory to the Music
  //Pathway: data / Music or Sound Effect Files
  //
  //Reminder finish Opperating System Code to auto read pathway and files (See Operating System)
  //
  concatenationOfMusicFiles(); 
  songs[1] = minim.loadFile( pathway + Start_Your_Engines );
  songs[0] = minim.loadFile( pathway + The_Simplest );
  soundEffects[0] = minim.loadFile( pathway + Wood_Door_Series );
  soundEffects[1] = minim.loadFile( pathway + Attic_Door );
} //End setupMusic
//
void drawMusic() {
  //Debugging in CONSOLE
  //print("Current Song Position:", songs[currentmp3].position() );
  //println("\tEnd of Song:", songs[currentmp3].length() );
  //ShowPlayandPause();
  
  if (ShowPlay == false && ShowPause == true){
    drawPauseButton();
    if ( PauseOn==true ) { stroke(bluehalfcyan);} else { stroke(redthirdsorange);};
    if (mouseX>=pauseX1 && mouseX<=playX2 && mouseY>=pauseY1 && mouseY<=playY3) stroke(bluehalfcyan);
    strokeWeight(4);
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
    if ( PauseOn==true ) { stroke(cyan);} else { stroke(red2thirdsorange);};
    if (mouseX>=pauseX1 && mouseX<=playX2 && mouseY>=pauseY1 && mouseY<=playY3) stroke(cyan);
    strokeWeight(2);
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
    if ( PauseOn==true ) { stroke(bluehalfcyan);} else { stroke(red2thirdsorange);};
    if (mouseX>=pauseX1 && mouseX<=playX2 && mouseY>=pauseY1 && mouseY<=playY3) stroke(bluehalfcyan);
    strokeWeight(7.5);
    noFill() ;
    rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
    rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
    strokeWeight(4);
    if ( PauseOn==true ) { stroke(cyan);} else { stroke(red);};
    if (mouseX>=pauseX1 && mouseX<=playX2 && mouseY>=pauseY1 && mouseY<=playY3) stroke(cyan);
    rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
    rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
    stroke(cyan);
  }
  if (ShowPlay == true && ShowPause == false){
    drawPlayButton ();
    if ( PlayOn==true ) {stroke(bluehalfcyan);} else {stroke(redthirdsorange);};
    if (mouseX>=playX1 && mouseX<=playX2 && mouseY>=playY1 && mouseY<=playY3) stroke(bluehalfcyan);
    strokeWeight(4);
    line( playX1, playY2, playX2, playY2);
    line( playX1, playY1, pauseX2, playY2);
    line( playX1, playY1, pauseX3, playY2);
    line( playX3, playY3, pauseX2, playY2);
    line( playX3, playY3, pauseX3, playY2);
    if ( PlayOn==true ) {stroke(cyan);} else {stroke(red2thirdsorange);};
    if (mouseX>=playX1 && mouseX<=playX2 && mouseY>=playY1 && mouseY<=playY3) stroke(cyan);
    strokeWeight(2);
    line( playX1, playY2, playX2, playY2);
    line( playX1, playY1, pauseX2, playY2);
    line( playX1, playY1, pauseX3, playY2);
    line( playX3, playY3, pauseX2, playY2);
    line( playX3, playY3, pauseX3, playY2);
    if ( PlayOn==true ) {stroke(bluehalfcyan);} else {stroke(red2thirdsorange);};
    if (mouseX>=playX1 && mouseX<=playX2 && mouseY>=playY1 && mouseY<=playY3) stroke(bluehalfcyan);
    strokeWeight(7.5);
    noFill() ;
    triangle( playX1, playY1, playX2, playY2, playX3, playY3);
    strokeWeight(4);
    if ( PlayOn==true ) {stroke(cyan);} else {stroke(red);};
    if (mouseX>=playX1 && mouseX<=playX2 && mouseY>=playY1 && mouseY<=playY3) stroke(cyan);
    triangle( playX1, playY1, playX2, playY2, playX3, playY3);
  }

  //
  drawStopButton();
  if ( StopOn==true ) {/*fill*/ stroke(bluehalfcyan); } else {/*fill*/ stroke(redthirdsorange);};
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(bluehalfcyan); //redhalforange, red2thirdsorange, redthirdsorange
  strokeWeight(4);
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
  if ( StopOn==true ) {/*fill*/ stroke(cyan); } else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(cyan); 
  strokeWeight(2);
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
  if ( StopOn==true ) {/*fill*/ stroke(bluehalfcyan); } else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(7.5);
  noFill() ;
  rect( stopX, stopY, stopWidth, stopHeight );
  strokeWeight(4);
  if ( StopOn==true ) {/*fill*/ stroke(cyan); } else {/*fill*/ stroke(red);};
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(cyan); 
  rect( stopX, stopY, stopWidth, stopHeight );
  drawFFButton();
  if ( SkipForwardOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(redthirdsorange);};
  if (mouseX>=ffX1 && mouseX<=ffX5 && mouseY>=ffY1 && mouseY<=ffY3) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(4);
  line( ffX4, ffY4, ffX2, ffY2);
  line( ffX6, ffY6, ffX2, ffY2);
  line( ffX1, ffY2, ffX5, ffY5);
  line( ffX1, ffY1, ffX4, ffY5);
  line( ffX3, ffY3, ffX4, ffY5);
  line( ffX1, ffY2, ffX2, ffY2);
  line( ffX4, ffY4, ffX6, ffY6);
  if ( SkipForwardOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=ffX1 && mouseX<=ffX5 && mouseY>=ffY1 && mouseY<=ffY3) /*fill*/ stroke(cyan);
  strokeWeight(2);
  line( ffX4, ffY4, ffX2, ffY2);
  line( ffX6, ffY6, ffX2, ffY2);
  line( ffX1, ffY2, ffX5, ffY5);
  line( ffX1, ffY1, ffX4, ffY5);
  line( ffX3, ffY3, ffX4, ffY5);
  line( ffX1, ffY2, ffX2, ffY2);
  line( ffX4, ffY4, ffX6, ffY6);
  if ( SkipForwardOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=ffX1 && mouseX<=ffX5 && mouseY>=ffY1 && mouseY<=ffY3) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(7.5);
  noFill() ;
  triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
  line(ffX4, ffY4, ffX5, ffY5);
  line(ffX5, ffY5, ffX6, ffY6);
  strokeWeight(4);
   if ( SkipForwardOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=ffX1 && mouseX<=ffX5 && mouseY>=ffY1 && mouseY<=ffY3) /*fill*/ stroke(cyan);
  triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
  line(ffX4, ffY4, ffX5, ffY5);
  line(ffX5, ffY5, ffX6, ffY6);
  drawRButton();
  if ( SkipBackwardOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(redthirdsorange);};
  if (mouseX>=rX5 && mouseX<=rX1 && mouseY>=rY1 && mouseY<=rY3) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(4);
  line( rX4, rY4, rX2, rY2);
  line( rX6, rY6, rX2, rY2);
  line( rX4, rY2, rX5, rY5);
  line( rX1, rY1, rX4, rY5);
  line( rX3, rY3, rX4, rY5);
  line( rX1, rY2, rX2, rY2);
  line( rX4, rY4, rX6, rY6);
  if ( SkipBackwardOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=rX5 && mouseX<=rX1 && mouseY>=rY1 && mouseY<=rY3) /*fill*/ stroke(cyan);
  strokeWeight(2);
  line( rX4, rY4, rX2, rY2);
  line( rX6, rY6, rX2, rY2);
  line( rX4, rY2, rX5, rY5);
  line( rX1, rY1, rX4, rY5);
  line( rX3, rY3, rX4, rY5);
  line( rX1, rY2, rX2, rY2);
  line( rX4, rY4, rX6, rY6);
  if ( SkipBackwardOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=rX5 && mouseX<=rX1 && mouseY>=rY1 && mouseY<=rY3) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(7.5);
  noFill() ;
  triangle( rX1, rY1, rX2, rY2, rX3, rY3);
  line(rX4 , rY4, rX5, rY5);
  line(rX5, rY5, rX6, rY6);
  strokeWeight(4);
  if ( SkipBackwardOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=rX5 && mouseX<=rX1 && mouseY>=rY1 && mouseY<=rY3) /*fill*/ stroke(cyan);
  triangle( rX1, rY1, rX2, rY2, rX3, rY3);
  line(rX4 , rY4, rX5, rY5);
  line(rX5, rY5, rX6, rY6);
  drawSkipButton();
  if ( NextOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(redthirdsorange);};
  if (mouseX>=skipX1 && mouseX<=skipX5 && mouseY>=skipY1 && mouseY<=skipY3) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(4);
  line( skipX1, skipY2, skipX5, skipY2);
  line( skipX2, skipY2, skipX5, skipY1);
  line( skipX2, skipY2, skipX5, skipY3);
  line( skipX5, skipY2, skipX4, skipY1);
  line( skipX5, skipY2, skipX4, skipY3);
  line( skipX4, skipY4, skipX5, skipY3);
  line( skipX5, skipY4, skipX4, skipY3);
  if ( NextOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=skipX1 && mouseX<=skipX5 && mouseY>=skipY1 && mouseY<=skipY3) /*fill*/ stroke(cyan);
  strokeWeight(2);
  line( skipX1, skipY2, skipX5, skipY2);
  line( skipX2, skipY2, skipX5, skipY1);
  line( skipX2, skipY2, skipX5, skipY3);
  line( skipX5, skipY2, skipX4, skipY1);
  line( skipX5, skipY2, skipX4, skipY3);
  line( skipX4, skipY4, skipX5, skipY3);
  line( skipX5, skipY4, skipX4, skipY3);
  if ( NextOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=skipX1 && mouseX<=skipX5 && mouseY>=skipY1 && mouseY<=skipY3) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(7.5);
  noFill() ;
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
  strokeWeight(4);
  if ( NextOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=skipX1 && mouseX<=skipX5 && mouseY>=skipY1 && mouseY<=skipY3) /*fill*/ stroke(cyan);
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
  drawBackButton();
  if ( BackOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(redthirdsorange);};
  if (mouseX>=backX5 && mouseX<=backX1 && mouseY>=backY1 && mouseY<=backY3) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(4);
  line( backX1, backY2, backX5, backY2);
  line( backX2, backY2, backX5, backY1);
  line( backX2, backY2, backX5, backY3);
  line( backX5, backY2, backX4, backY1);
  line( backX5, backY2, backX4, backY3);
  line( backX4, backY4, backX5, backY3);
  line( backX5, backY4, backX4, backY3);
  if ( BackOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=backX5 && mouseX<=backX1 && mouseY>=backY1 && mouseY<=backY3) /*fill*/ stroke(cyan);
  strokeWeight(2);
  line( backX1, backY2, backX5, backY2);
  line( backX2, backY2, backX5, backY1);
  line( backX2, backY2, backX5, backY3);
  line( backX5, backY2, backX4, backY1);
  line( backX5, backY2, backX4, backY3);
  line( backX4, backY4, backX5, backY3);
  line( backX5, backY4, backX4, backY3);
  if ( BackOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=backX5 && mouseX<=backX1 && mouseY>=backY1 && mouseY<=backY3) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(7.5);
  noFill() ;
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
  strokeWeight(4);
  if ( BackOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=backX5 && mouseX<=backX1 && mouseY>=backY1 && mouseY<=backY3) /*fill*/ stroke(cyan);
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
  drawLoopButton() ;
  if ( LoopOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(redthirdsorange);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(4);
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
  if ( LoopOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(cyan);
  strokeWeight(2);
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
  if ( LoopOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(7.5);
  noFill() ;
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  strokeWeight(4);
  if ( LoopOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(cyan);
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  strokeWeight(7.5);
  if ( LoopOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(bluehalfcyan);
  fill(darkblue);
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  noFill();
  strokeWeight(4);
  if ( LoopOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(cyan);
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  strokeWeight(7.5);
  if ( LoopOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(cyan);
  fill(black);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  noFill();
  strokeWeight(4);
  if ( LoopOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(cyan);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  noStroke();
  drawMuteButton();
  if ( MuteOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(redthirdsorange);};
  if (mouseX>=muteX10 && mouseX<=muteX7 && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(4);
  line( muteX10, muteY4, muteX5, muteY5);
  line( muteX10, muteY5, muteX4, muteY4);
  line( muteX10, muteY4, muteX3, muteY3);
  line( muteX10, muteY5, muteX1, muteY1);
  line(muteX3, muteY3, muteX4, muteY4);
  line(muteX1, muteY1, muteX5, muteY5);
  line( muteX10, muteY2, muteX1, muteY2);
  line( muteX1, muteY2, muteX10, muteY4);
  line( muteX1, muteY2, muteX10, muteY5);
  if ( MuteOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=muteX10 && mouseX<=muteX7 && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(cyan);
  strokeWeight(2);
  line( muteX10, muteY4, muteX5, muteY5);
  line( muteX10, muteY5, muteX4, muteY4);
  line( muteX10, muteY4, muteX3, muteY3);
  line( muteX10, muteY5, muteX1, muteY1);
  line(muteX3, muteY3, muteX4, muteY4);
  line(muteX1, muteY1, muteX5, muteY5);
  line( muteX10, muteY2, muteX1, muteY2);
  line( muteX1, muteY2, muteX10, muteY4);
  line( muteX1, muteY2, muteX10, muteY5);
  if ( MuteOn==true ) {/*fill*/ stroke(bluehalfcyan);} else {/*fill*/ stroke(red2thirdsorange);};
  if (mouseX>=muteX10 && mouseX<=muteX7 && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(bluehalfcyan);
  strokeWeight(7.5);
  noFill() ;
  line(muteX1, muteY1, muteX4, muteY4);
  line(muteX3, muteY3, muteX5, muteY5);
  rect (muteX4, muteY4, muteWidth, muteHeight);
  rect (muteX5, muteY5, muteWidth2, muteHeight2);
  line(muteX1, muteY1, muteX3, muteY3);
  strokeWeight(4);
  if ( MuteOn==true ) {/*fill*/ stroke(cyan);} else {/*fill*/ stroke(red);};
  if (mouseX>=muteX10 && mouseX<=muteX7 && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(cyan);
  line(muteX1, muteY1, muteX4, muteY4);
  line(muteX3, muteY3, muteX5, muteY5);
  rect (muteX4, muteY4, muteWidth, muteHeight);
  rect (muteX5, muteY5, muteWidth2, muteHeight2);
  line(muteX1, muteY1, muteX3, muteY3);
  AutoPlaymp3();
}//End drawMusic
//
void keyPressedMusic() {

  if ( key =='m' || key =='M' ) mute();
  if ( key == 'f' || key == 'F' ) skipforward();
  if ( key == 'r' || key == 'R' )skipbackward();
  if ( key == 'l' || key == 'L' ) songs[currentmp3].loop(1) ; //ERROR: immediately restarts song
  if ( key == '1') singleloop();
  if ( key == '8' && key == '1') infiniteloop();
  if ( key == 's' || key == 'S' ) stop();
  if ( key == 'p' || key == 'P' ) playpause();//End Play-Pause
  if ( key == '0' ) AutoPlay();
  if ( key == 'n' || key =='N' ) next();
  if ( key == 'b' || key =='B' ) back();
  if ( key == 'y' || key =='y' ) YEE();
}//End keyPressedMusic
//
void mousePressedMusic() {
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) stop();  
  if (mouseX>=pauseX1 && mouseX<=playX2 && mouseY>=pauseY1 && mouseY<=playY3) playpause();
  if (mouseX>=playX1 && mouseX<=playX2 && mouseY>=playY1 && mouseY<=playY3) playpause(); 
  if (mouseX>=ffX1 && mouseX<=ffX5 && mouseY>=ffY1 && mouseY<=ffY3) skipforward();
  if (mouseX>=rX5 && mouseX<=rX1 && mouseY>=rY1 && mouseY<=rY3) skipbackward();
  if (mouseX>=skipX1 && mouseX<=skipX5 && mouseY>=skipY1 && mouseY<=skipY3) next();
  if (mouseX>=backX5 && mouseX<=backX1 && mouseY>=backY1 && mouseY<=backY3) back();
  if (infiniteloopon == false && singleloopon == false) {
    if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) infiniteloop();
    infiniteloopon = true;
    singleloopon = false;
  } else if  (singleloopon == false && infiniteloopon == true ) {
    if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) singleloop();
    infiniteloopon = false;
    singleloopon = true;
  } else {
    if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight);
    infiniteloopon = false;
    singleloopon = false;
  }
  if (mouseX>=muteX10 && mouseX<=muteX7 && mouseY>=stopY && mouseY<=stopY+stopHeight) mute();
  if (mouseX>=YEEx && mouseX<=YEEx+YEEWidth && mouseY>=YEEy && mouseY<=YEEy+playTextHeight) imageCode(); //End mousePressedMusic
}
void concatenationOfMusicFiles() {
  pathway = "Music and Sound Effects/";
  Start_Your_Engines = "Start_Your_Engines.mp3";
  The_Simplest = "The_Simplest.mp3";
  Wood_Door_Series = "Wood_Door_Open_and_Close_Series.mp3";
  Attic_Door = "Spring_Attic_Door.mp3";
  //
}//End concatenation
void ShowPlayandPause(){
  if (songs[currentmp3].isPlaying()) {
    PlayOn=false;
    PauseOn= true;
  } else {
    PlayOn=true;
    PauseOn= false;
  }
}
void mute() {

  if ( songs[currentmp3].isMuted(  ) ) {
    songs[currentmp3].unmute();
    MuteOn= false;
  } else if ( songs[currentmp3].position() >= songs[currentmp3].length()*99/100 ) {
    songs[currentmp3].pause();
    songs[currentmp3].rewind();
    songs[currentmp3].unmute();
    MuteOn= true;
  } else {
      songs[currentmp3].mute();
      MuteOn= true;
  }
  
}//End Mute
  //
void stop(){

  if ( songs[currentmp3].isPlaying()) {
    songs[currentmp3].pause();
    songs[currentmp3].rewind();
    StopOn= true;
  } else {
    songs[currentmp3].rewind();
    StopOn= true;
  }
  StopOn= false;
}//End Stop
//
void singleloop() {

  delay(songs[currentmp3].length() - songs[currentmp3].position() );
  //ERROR: delay stops all player functions, computer doesn't recognize if
  //       song is playing
  songs[currentmp3].loop(0); //perameter is empty or -1

}

void infiniteloop() {
  delay(songs[currentmp3].length() - songs[currentmp3].position() );
  songs[currentmp3].loop(-1); //perameter is empty or -1
  LoopOn= true;
  LoopOn= false;
}

void playpause() {
  if ( songs[currentmp3].isPlaying() ) {
    songs[currentmp3].pause();
    PlayOn=false;
    PauseOn= true;
  } else if (songs[currentmp3].position() >= songs[currentmp3].length()*99/100) {
    songs[currentmp3].pause();
    songs[currentmp3].rewind();
  } else {
    songs[currentmp3].play(); //no auto rewind like loop()
    PlayOn= true;
    PauseOn= false;
  }
}

void skipforward() {

  songs[currentmp3].skip( 5000 ); //parameter in milliseconds
  SkipForwardOn= true;
  if ( songs[currentmp3].position() >= songs[currentmp3].length()*99/100 ) {
    songs[currentmp3].skip( songs[currentmp3].length() - songs[currentmp3].position());
    songs[currentmp3].pause();
  }
  SkipForwardOn= false;
}
void skipbackward(){
  SkipBackwardOn= true;
  songs[currentmp3].skip( -5000 ); //parameter in milliseconds
  SkipBackwardOn= false;
}

void next(){

  if ( songs[currentmp3].isPlaying() ) {
    songs[currentmp3].pause();
    currentmp3+=1; //Still figuring this part out
    songs[currentmp3].play();
    NextOn= true;
  } else if ( currentmp3 == songs.length - 1 ) {
    songs[currentmp3].rewind();
    currentmp3 = songs.length - songs.length;
    NextOn= true;
  } else {
    songs[currentmp3].rewind();
    currentmp3++;
    NextOn= true;
  }
  NextOn= false;
}

void back() {

  if ( songs[currentmp3].isPlaying() ) {
    songs[currentmp3].pause();
    currentmp3-=1 ; //Still figuring this part out
    songs[currentmp3].play();
    BackOn= true;
      //If the current song is playing, then pressing the next button
      //play the next song
  } else if ( currentmp3 == songs.length + 1 ) {
    songs[currentmp3].rewind();
    currentmp3 = songs.length - songs.length;
    BackOn= true;
  } else {
    songs[currentmp3].rewind();
    currentmp3--;
    BackOn= true;
  }
  BackOn= false;
}
void ShowPause() {
  if (songs[currentmp3].isPlaying()){
    ShowPlay= false;
  } else {
    ShowPlay= true;
  }
}

void AutoPlaymp3() {
  if ( AutoPlayOn ) {
    if(songs[currentmp3].position() >= songs[currentmp3].length()*99/100) {
      songs[currentmp3].rewind();
      currentmp3+=1 ;
      songs[currentmp3].play();
    }

    
    //songs[currentmp3].isPlaying();
    //when false rewind();
    //currentmp3+=1;
    //songs[currentmp3].play();
  }
}
void AutoPlay(){
  if (AutoPlayOn == false) {
    AutoPlayOn= true;
    PlayOn = true;
    print("Autoplay on");
  } else {
    AutoPlayOn = false;
    PlayOn = false;
    print("Autoplay off");
  }
}//End Autoplay
void YEE(){
  imageCode();
}
//End Music SubProgram

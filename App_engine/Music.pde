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
//
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
color resetcolorNightMode=#FFFF48, red=#FF0000, black=#000000,  cyan=#00FFFF, blue=#0000FF, white=#FFFFFF, orange=#FF7F03, darkblue=#000080; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly 
float buttonReferentMeasure = width*1/9.75;
float buttonSide = buttonReferentMeasure;
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
  drawMusicButtons();
  
  drawPauseButton();
  if ( PauseOn==true ) {/*fill*/ stroke(orange);} else {/*stroke*/ stroke(cyan);};
  if (mouseX>=pauseX1 && mouseX<=playX2 && mouseY>=pauseY1 && mouseY<=playY3)/*fill*/ stroke(orange);

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
  noFill() ;
  stroke(red);
  //rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  //rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  stroke(cyan);
  drawPlayButton ();
  if ( PlayOn==true ) {stroke(orange);} else {stroke(cyan);};
  if (mouseX>=playX1 && mouseX<=playX2 && mouseY>=playY1 && mouseY<=playY3) stroke(orange);
  strokeWeight(2.5);
  line( playX1, playY2, playX2, playY2);
  line( playX1, playY1, pauseX2, playY2);
  line( playX1, playY1, pauseX3, playY2);
  line( playX3, playY3, pauseX2, playY2);
  line( playX3, playY3, pauseX3, playY2);
  strokeWeight(7.5);
  stroke(red);
  noFill() ;
  triangle( playX1, playY1, playX2, playY2, playX3, playY3);
  //
  drawStopButton();
  if ( StopOn==true ) {/*fill*/ stroke(orange);} else {/*fill*/ stroke(cyan);};
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(orange);
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
  noFill() ;
  stroke(red);
  rect( stopX, stopY, stopWidth, stopHeight );
  
  drawFFButton();
  if ( SkipForwardOn==true ) {/*fill*/ stroke(orange);} else {/*fill*/ stroke(cyan);};
  if (mouseX>=ffX1 && mouseX<=ffX5 && mouseY>=ffY1 && mouseY<=ffY3) /*fill*/ stroke(orange);
  strokeWeight(2.5);
  line( ffX4, ffY4, ffX2, ffY2);
  line( ffX6, ffY6, ffX2, ffY2);
  line( ffX1, ffY2, ffX5, ffY5);
  line( ffX1, ffY1, ffX4, ffY5);
  line( ffX3, ffY3, ffX4, ffY5);
  line( ffX1, ffY2, ffX2, ffY2);
  line( ffX4, ffY4, ffX6, ffY6);
  strokeWeight(7.5);
  stroke(red);
  noFill() ;
  triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
  line(ffX4, ffY4, ffX5, ffY5);
  line(ffX5, ffY5, ffX6, ffY6);

  
  drawRButton();
  if ( SkipBackwardOn==true ) {/*fill*/ stroke(orange);} else {/*fill*/ stroke(cyan);};
  if (mouseX>=rX5 && mouseX<=rX1 && mouseY>=rY1 && mouseY<=rY3) /*fill*/ stroke(orange);
  strokeWeight(2.5);
  line( rX4, rY4, rX2, rY2);
  line( rX6, rY6, rX2, rY2);
  line( rX4, rY2, rX5, rY5);
  line( rX1, rY1, rX4, rY5);
  line( rX3, rY3, rX4, rY5);
  line( rX1, rY2, rX2, rY2);
  line( rX4, rY4, rX6, rY6);  
  strokeWeight(7.5);
  stroke(red);
  noFill() ;
  triangle( rX1, rY1, rX2, rY2, rX3, rY3);
  line(rX4 , rY4, rX5, rY5);
  line(rX5, rY5, rX6, rY6);
  drawSkipButton();
  if ( NextOn==true ) {/*fill*/ stroke(orange);} else {/*fill*/ stroke(cyan);};
  if (mouseX>=skipX1 && mouseX<=skipX5 && mouseY>=skipY1 && mouseY<=skipY3) /*fill*/ stroke(orange);
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
  noFill() ;
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
  drawBackButton();
  if ( BackOn==true ) {/*fill*/ stroke(orange);} else {/*fill*/ stroke(cyan);};
  if (mouseX>=backX5 && mouseX<=backX1 && mouseY>=backY1 && mouseY<=backY3) /*fill*/ stroke(orange);
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
  noFill() ;
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
  drawLoopButton() ;
  if ( LoopOn==true ) {/*fill*/ stroke(orange);} else {/*fill*/ stroke(cyan);};
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) /*fill*/ stroke(orange);
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
  noFill() ;
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  fill(darkblue);
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  noFill();
  fill(black);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  drawMuteButton();
  if ( MuteOn==true ) {/*fill*/ stroke(orange);} else {/*fill*/ stroke(cyan);};
  if (mouseX>=muteX10 && mouseX<=muteX7 && mouseY>=stopY && mouseY<=stopY+stopHeight) /*fill*/ stroke(orange);
  strokeWeight(2.5);
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
  noFill() ;
  line(muteX1, muteY1, muteX4, muteY4);
  line(muteX3, muteY3, muteX5, muteY5);
  rect (muteX4, muteY4, muteWidth, muteHeight);
  rect (muteX5, muteY5, muteWidth2, muteHeight2);
  line(muteX1, muteY1, muteX3, muteY3);
  //AutoPlaymp3();
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
  //if ( key == '0' ) AutoPlay();
  if ( key == 'n' || key =='N' ) next();
  if ( key == 'b' || key =='B' ) back();
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
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) infiniteloop();
  if (mouseX>=muteX10 && mouseX<=muteX7 && mouseY>=stopY && mouseY<=stopY+stopHeight) mute();
}//End mousePressedMusic
void concatenationOfMusicFiles() {
  pathway = "Music and Sound Effects/";
  Start_Your_Engines = "Start_Your_Engines.mp3";
  The_Simplest = "The_Simplest.mp3";
  Wood_Door_Series = "Wood_Door_Open_and_Close_Series.mp3";
  Attic_Door = "Spring_Attic_Door.mp3";
  //
}//End concatenation
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
/*
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
*/
//End Music SubProgram

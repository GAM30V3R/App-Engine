//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates a "Play list" variable holding MP
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, Start_Your_Engines, The_Simplest, Wood_Door_Series, Attic_Door ;
int currentmp3= 0;
Boolean AutoPlayOn=false;
Boolean PlayOn= false;
//
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight, pauseX3, pauseButtonWidth, pauseButtonHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight, stopX2, stopY2, stopX3, stopY3;
float playX1, playY1, playX2, playY2, playX3, playY3, playButtonWidth, playButtonHeight;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6, ffButtonWidth, ffButtonHeight;
float rX1, rY1, rX2, rY2, rX3, rY3, rX4, rY4, rX5, rY5, rX6, rY6, rButtonWidth, rButtonHeight;
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3, skipX4, skipY4, skipX5, skipButtonWidth, skipButtonHeight;
float backX1, backY1, backX2, backY2, backX3, backY3, backX4, backY4, backX5, backButtonWidth, backButtonHeight;
float loopX1, loopY1, loopWidth, loopHeight, loopX2, loopY2, loopWidth2, loopHeight2, loopX3, loopY3, loopX4, loopY4, loopX5, loopY5, loopX6, loopY6, loopX7, loopY7, loopX8, loopY8, loopX9, loopY9, loopX10, loopY10, loopX11, loopY11, loopX12, loopY12, loopButtonWidth, loopButtonHeight;
float muteX1, muteY1, muteX2, muteY2, muteX3, muteY3, muteX4, muteY4, muteX5, muteY5, muteX6, muteY6, muteX7, muteY7, muteX8, muteY8, muteX9, muteY9, muteWidth, muteHeight, muteWidth2, muteHeight2, muteX10, muteButtonWidth, muteButtonHeight;
color resetcolorNightMode=#FFFF48, red=#FF0000, black=#000000,  cyan=#00FFFF, blue=#0000FF, white=#FFFFFF, orange=#FF7F03, darkblue=#000080; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly 
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
  if ( PlayOn==true ) {fill(orange);} else {fill(cyan);};
  if (mouseX>=playX1 && mouseX<=playX1+playButtonWidth && mouseY>=playY1 && mouseY<=playY1+playButtonHeight) fill(red);
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  fill(cyan);
  //AutoPlaymp3();
  //


  
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
  if (mouseX>=pauseX1 && mouseX<=pauseX1+pauseButtonWidth && mouseY>=pauseY1 && mouseY<=pauseY1+pauseButtonHeight) playpause();
  if (mouseX>=playX1 && mouseX<=playX1+playButtonWidth && mouseY>=playY1 && mouseY<=playY1+playButtonHeight) playpause(); 
  if (mouseX>=ffX1 && mouseX<=ffX1+ffButtonWidth && mouseY>=ffY1 && mouseY<=ffY1+ffButtonHeight) skipforward();
  if (mouseX>=rX1 && mouseX<=rX1-rButtonWidth && mouseY>=rY1 && mouseY<=rY1+rButtonHeight) skipbackward();
  if (mouseX>=skipX1 && mouseX<=skipX1+skipButtonWidth && mouseY>=skipY1 && mouseY<=skipY1+skipButtonHeight) next();
  if (mouseX>=backX1 && mouseX<=backX1-backButtonWidth && mouseY>=backY1 && mouseY<=backY1+backButtonHeight) back();
  if (mouseX>=loopX9 && mouseX<=loopX9+loopButtonWidth && mouseY>=loopY3 && mouseY<=loopY3-loopButtonHeight) infiniteloop();
  if (mouseX>=muteX7 && mouseX<=muteX7-muteButtonWidth && mouseY>=muteY1 && mouseY<=muteY1+muteButtonHeight) mute();
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
  } else if ( songs[currentmp3].position() >= songs[currentmp3].length()*99/100 ) {
    songs[currentmp3].pause();
    songs[currentmp3].rewind();
    songs[currentmp3].unmute();
  } else {
      songs[currentmp3].mute();
  }
  
}//End Mute
  //
void stop(){

  if ( songs[currentmp3].isPlaying()) {
    songs[currentmp3].pause();
    songs[currentmp3].rewind();
  } else {
    songs[currentmp3].rewind();
  }
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
}

void playpause() {
  if ( songs[currentmp3].isPlaying() ) {
    songs[currentmp3].pause();
    PlayOn=false;
  } else if (songs[currentmp3].position() >= songs[currentmp3].length()*99/100) {
    songs[currentmp3].pause();
    songs[currentmp3].rewind();
  } else {
    songs[currentmp3].play(); //no auto rewind like loop()
    PlayOn= true;
  }
}

void skipforward() {

  songs[currentmp3].skip( 5000 ); //parameter in milliseconds
  if ( songs[currentmp3].position() >= songs[currentmp3].length()*99/100 ) {
    songs[currentmp3].skip( songs[currentmp3].length() - songs[currentmp3].position());
    songs[currentmp3].pause();
  }
}
void skipbackward(){
  songs[currentmp3].skip( -5000 ); //parameter in milliseconds
}

void next(){

  if ( songs[currentmp3].isPlaying() ) {
    songs[currentmp3].pause();
    currentmp3+=1; //Still figuring this part out
    songs[currentmp3].play();
  } else if ( currentmp3 == songs.length - 1 ) {
    songs[currentmp3].rewind();
    currentmp3 = songs.length - songs.length;
  } else {
    songs[currentmp3].rewind();
    currentmp3++;
  }
}

void back() {

  if ( songs[currentmp3].isPlaying() ) {
    songs[currentmp3].pause();
    currentmp3-=1 ; //Still figuring this part out
    songs[currentmp3].play();
      //If the current song is playing, then pressing the next button
      //play the next song
  } else if ( currentmp3 == songs.length + 1 ) {
    songs[currentmp3].rewind();
    currentmp3 = songs.length - songs.length;
  } else {
    songs[currentmp3].rewind();
    currentmp3--;
  }
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

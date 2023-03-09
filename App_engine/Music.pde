//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[1]; //creates a "Play list" variable holding MP
AudioPlayer[] soundEffects = new AudioPlayer[1];
String pathway, _______M1, _______M2, _______SEFF1, _______SEFF2 ;
int currentSong=0;
Boolean autoPlayOn=false;
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
  songs[0] = minim.loadFile( path + _______M1 );
  songs[1] = minim.loadFile( path + _______M1 );
  soundEffects[0] = minim.loadFile( pathway + _______SEFF1 );
  soundEffects[1] = minim.loadFile( pathway + _______SEFF2 );
} //End setupMusic
//
void drawMusic() {
  //Debugging in CONSOLE
  print("current Song Position:", songs[currentSong].position() );
  println("\tEnd of Song:", songs[currentSong].length() );
  //
  //autoPlayMusic();
  //


  
}//End drawMusic
//
void keyPressedMusic() {
  //
  //Prototyping to copy when it works
  if ( key =='m' || key =='M' ) {//Mute Button, not PAUSE, only affect
    //ERROR: this MUTE button only workes when song is playing
    //ERROR Fix: unmute or rewind when song is not playing (i.e. unmute next song)
    if ( songs[currentSong].isMuted(  ) ) {
      songs[currentSong].unmute();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*99/100 ) {
      //MAKE IT SMARTER
      //make it play the next song
      //ERROR song breaks if the song finishes
      songs[currentSong].rewind();
    } else {
      songs[currentSong].mute();
    }
  }//End Mute Button
  //
  //Fast Forward and Reverse
  if ( key == 'f' || key == 'F' ) {
    //skips Forward to end of song
    //ERROR: if at end, plays begining
    songs[currentSong].skip( 5000 ); //parameter in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*99/100 ) {
    //NEEDS TO BE DONE ON MY OWN
    //ERROR Catch: if end of song, then next song
  }//End Fast Forward
  //ERROR
  if ( key == 'r' || key == 'R' ) {
    songs[currentSong].skip( -5000 ); //parameter in milliseconds
    //spaming R means start playing at beginning of song
  }//End Reverse
  //
  //Single loop
  //if ( key == 'l' || key == 'L' ) songs[currentSong].loop(1) ; //ERROR: immediately restarts song
  if ( key == '1') {
    //Finish Playing current song, then replay once
    delay(songs[currentSong].length() - songs[currentSong].position() );
    //ERROR: delay stops all player functions, computer doesn't recognize if
    //       song is playing

    songs[currentSong].loop(0);
  }//End Single loop

  //Infinite Loop
  if ( key == '8' && key != '1') {
    //Finish Playing current song, then replay once
    delay(songs[currentSong].length() - songs[currentSong].position() );
    //ERROR: delay stops all player functions, computer doesn't recognize if
    //       song is playing

    songs[currentSong].loop(-1); //perameter is empty or -1
  }//End Infinite Loop
  //
  //Stop
  if ( key == 's' || key == 'S' ) {
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
      songs[currentSong].rewind();
    } else {
      songs[currentSong].rewind();
    }
  }//End stop
  //
  //Play-Pause
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
    } else if (songs[currentSong].position() >= songs[currentSong].length()*99/100) {
      songs[currentSong].pause();
      songs[currentSong].rewind();
    } else {
      songs[currentSong].play(); //no auto rewind like loop()
    }
  }//End Play-Pause
  //
  /*
  //Autoplay
  if ( key == '[' ) {
    if (autoPlayOn == false) {
      autoPlayOn= true;
    } else {
      autoPlayOn = false;
    }
  }//End Autoplay
  */
  //
  //
  if (key == 'n'|| key =='N') {}//End
  //
  //
  if (key == 'n'|| key =='N') {}//End
  //Music Key Board Short Cuts
}//End keyPressedMusic
//
void mousePressedMusic() {
}//End mousePressedMusic
void concatenationOfMusicFiles() {
  pathway = "_______/";
  _______M1 = "_______.mp3";
  _______M2 = "_______.mp3";
  _______SEFF1 = "_______.mp3";
  _______SEFF2 = "_______.mp3";
  //

  //
}//End concatenation
//
/*
void autoPlayMusic() {
  Autoplay (might use)
  if ( autoPlayOn ) {//End AutoPlay
    //if () {} else if () {} else {}
    //EX1: .position() >= .length, the rewind(), currentSong+=1, .play
    //EX2: .isPlaying(), when false rewind(), currentSong+=1, .play()
  }
}//End Auto Play Music
*/
//End Music SubProgram

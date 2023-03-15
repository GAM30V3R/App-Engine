//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[1]; //creates a "Play list" variable holding MP
AudioPlayer[] soundEffects = new AudioPlayer[1];
String pathway, Start_Your_Engines, The_Simplest, Wood_Door_Series, Attic_Door ;
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
  songs[0] = minim.loadFile( pathway + Start_Your_Engines );
  songs[1] = minim.loadFile( pathway + The_Simplest );
  soundEffects[0] = minim.loadFile( pathway + Wood_Door_Series );
  soundEffects[1] = minim.loadFile( pathway + Attic_Door );
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
  if ( key =='m' || key =='M' ) {
    mute();
  }//End Mute Button
  //
  //Fast Forward and Reverse
  if ( key == 'f' || key == 'F' ) {
    fastforward();
    //skips Forward to end of song
    //ERROR: if at end, plays begining
    songs[currentSong].skip( 5000 ); //parameter in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*99/100 ) {
    //NEEDS TO BE DONE ON MY OWN
    //ERROR Catch: if end of song, then next song
  }//End Fast Forward
  //ERROR
  if ( key == 'r' || key == 'R' ) {
    reverse();
    
  }//End Reverse
  //
  //Single loop
  //if ( key == 'l' || key == 'L' ) songs[currentSong].loop(1) ; //ERROR: immediately restarts song
  if ( key == '1') {
    singleloop();
  }//End Single loop

  //Infinite Loop
  if ( key == '8' && key != '1') {
    infiniteloop();
  }//End Infinite Loop
  //
  //Stop
  if ( key == 's' || key == 'S' ) {
    stop();
    
  }//End stop
  //
  //Play-Pause
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
    playpause();
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
  if ( key == 'n' || key =='N' ) {
    next();
  
  } //End Next Button
  //
  //Back Button
  if ( key == 'b' || key =='B' ) {
    back();
  } //End Previous Song Button or Back Button
  //
  //Music Key Board Short Cuts
}//End keyPressedMusic
//
void mousePressedMusic() {
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
  /*
  It must:
  Mute the song
  At the end of the song it must: rewind to the begining and then pause it and then unmute it
  */
  /*
  Extra things to have:
  ???
  */
  //
  //Mute Button, not PAUSE, only affect
  //ERROR: this MUTE button only workes when song is playing
  //ERROR Fix: unmute or rewind when song is not playing (i.e. unmute next song)
  if ( songs[currentSong].isMuted(  ) ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*99/100 ) {
    //MAKE IT SMARTER
    //rewind to the begining and then pause it and then unmute it
    //ERROR song breaks if the song finishes
    songs[currentSong].rewind();
  } else {
      songs[currentSong].mute();
  }
  
}//End Mute
  //
void stop(){
  /*
  It must:
  Stop playing the song and rewind to the begining 
  */
  /*
  Extra things to have:
  ether Close or crash the program if held or spammed
  */
  //needs to be smarter
  if ( songs[currentSong].isPlaying()) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End Stop
//
void singleloop() {
  /*
  It must:
  loop the song once WITHOUT delaying the entire program
  */
  /*
  Extra things to have:
  ???
  */
  //needs to be smarter
  //Finish Playing current song, then replay once
  delay(songs[currentSong].length() - songs[currentSong].position() );
  //ERROR: delay stops all player functions, computer doesn't recognize if
  //       song is playing
  songs[currentSong].loop(0); //perameter is empty or -1
}

void infiniteloop() {
  /*
  It must:
  Loop the song an infinite amount of times
  */
  /*
  Extra things to have:
  ???
  */
  //Finish Playing current song, then replay once
  delay(songs[currentSong].length() - songs[currentSong].position() );
  //ERROR: delay stops all player functions, computer doesn't recognize if
  //       song is playing
  songs[currentSong].loop(-1); //perameter is empty or -1
}

void playpause() {
  /*
  It must:
  Pause or play the Song
  Rewind to the begining if the song is at the end
  */
  /*
  Extra things to have:
  MAYBE play the song backwards if held
  */
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if (songs[currentSong].position() >= songs[currentSong].length()*99/100) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].play(); //no auto rewind like loop()
  }
}

void fastforward() {
  /*
  It must:
  skip 5 seconds of the song
  */
  /*
  Extra things to have:
  ???
  */
  songs[currentSong].skip( 5000 ); //parameter in milliseconds
  if ( songs[currentSong].position() >= songs[currentSong].length()*99/100 ) {
    //Needs to pause at the end of the song or play the next song
    //NEEDS TO BE DONE ON MY OWN
    //ERROR Catch: if end of song, then next song
  }
}
void reverse(){
  /*
  It must:
  rewind 5 seconds of the song
  */
  /*
  Extra things to have:
  ???
  */
  songs[currentSong].skip( -5000 ); //parameter in milliseconds
}

void next(){
    /*
  It must:
  stop the curent song
  play the next song
  */
  /*
  Extra things to have:
  ???
  */
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    //figure out how to make it play the next song
    songs[currentSong].play();
  } else if ( currentSong == songs.length - 1 ) {
    songs[currentSong].rewind();
    currentSong = songs.length - songs.length;
  } else {
    songs[currentSong].rewind();
    currentSong++;
  }
}

void back() {
    /*
  It must:
  stop the current song
  play the previous song
  */
  /*
  Extra things to have:
  ???
  */
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    //figure out how to make it play the previous song
    songs[currentSong].play();
      //If the current song is playing, then pressing the next button
      //play the next song
  } else if ( currentSong == songs.length + 1 ) {
    songs[currentSong].rewind();
    currentSong = songs.length - songs.length;
  } else {
    songs[currentSong].rewind();
    currentSong--;
  }
}
//End Music SubProgram

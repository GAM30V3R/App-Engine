//Global Variables 
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[1]; //creates a "Play list" variable holding MP
AudioPlayer[] soundEffects = new AudioPlayer[1];
String pathway, _______M1, _______M2, _______SEFF1, _______SEFF2 ;
int currentSong=0;
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
}//End drawMusic
//
void keyPressedMusic() {
      //
    //Prototyping to copy when it works
    if ( key =='m' || key =='M' ) {//Mute Button, not PAUSE, only affect 
      if ( songs[currentSong].isMuted(  ) ) {
        songs[currentSong].unmute();
      } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
        //play the next song
        //ERROR song breaks if the song finishes
        songs[currentSong].rewind();
      
      } else {
        songs[currentSong].mute();
      
      }
    }//End Mute Button
    
    //
  //Music Keay Board Short Cuts
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
//End Music SubProgram

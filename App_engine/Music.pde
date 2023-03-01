//Global Variables 
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[1]; //creates a "Play list" variable holding MP
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
 songs[] = minim.loadFile( path + musicFile );
 soundEffects[] = minim.loadFile( path + soundEffectFile );
} //End setupMusic
//
void drawMusic() {
}//End drawMusic
//
void keyPressedMusic() {
}//End keyPressedMusic
//
void mousePressedMusic() {
}//End mousePressedMusic
void concatenationOfMusicFiles() {
  path = "data/";
  something = "";
}//End concatenation
//
//End Music SubProgram

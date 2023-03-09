//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//
void setup() {
  //
  setupMusic();
  //
  songs[currentSong].loop(0); //Change the index manually
  //
}//End setup
//
void draw() {
  drawMusic();
}//End draw
//
void keyPressed() {
  keyPressedMusic();

}//End keyPressed
//
void mousePressed() {}//ENd mousePressed
//
//End MAIN Program

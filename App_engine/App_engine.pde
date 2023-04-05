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
  size(1000, 500); //width, height
  setupMusic();
  population();
  //
}//End setup
//
void draw() {
  drawMusic();
  //drawMusicButtons();
}//End draw
//
void keyPressed() {
  keyPressedMusic();

}//End keyPressed
//
void mousePressed() {
  mousePressedMusic();
}//ENd mousePressed
//
//End MAIN Program

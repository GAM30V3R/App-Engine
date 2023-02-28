//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String path = new File("").getAbsolutePath(); //Exported Program
String directory = "C:"; //Not Exported
//Reminder: \n is a character escape, so pathway must have forward slashes
//

//
void setup() {
  //
 

  songs[0].loop(0); //Change the index manually
  //
  setupMusic();
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//ENd mousePressed
//
//End MAIN Program

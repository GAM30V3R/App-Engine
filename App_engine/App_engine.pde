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
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[1]; //creates a "Play list" variable holding MP
//
void setup() {
  //
  minim = new Minim (this); //loads data from directory, loadFile should also load from project folder, like loadImage
  //
  File anyDirectory = new File(path); //Used when exported
  println ("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //Used when prototyping
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items in FileList:", FileListAnyDirectory.length);
  int i = 0;
  for (File file : FileListAnyDirectory) {
    if ( file.isFile() ) {
      if ( file.toString().endsWith(".mp3") ) {
        println("Any Directory is working");
        songs[i] = minim.loadFile( file.getName() );
        i = i + 1;
      }
    }
  }
  //
  //When Prototyping, songs is not loaded from anyDirectory
  
  File[] FileListGitHubDir = githubDirectory.listFiles();
  if (songs[0] == null) {
    printArray(FileListGitHubDir);
    for ( File file : FileListGitHubDir ) {
      if ( file.isFile() ) {
        if ( file.toString().endsWith(".mp3") ) {
          println("File Name .mp3 only", file.getName() );
          songs[i] = minim.loadFile(file.getName());
          i+=1;
        }
      }
    }
  } //Catch when Pathway NULL, not exported
  songs[0].loop(0); //Change the index manually
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//ENd mousePressed
//
//End MAIN Program

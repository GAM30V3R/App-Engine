//Prototyping program for logical buttion pressing
//Global Varibles
float stopX, stopY, stopWidth, stopHeight;
boolean stopHoverOver=false;
void setup() {
  size(1000, 500);
  //
  //Populaton, before moving to a Subprogram
  float startingX = width * 1/2;
  float startingY = height * 1/2;
  float buttionReferentMeasure = width*1/9;
  float buttonSide = buttionReferentMeasure;
  //
  stopX = startingX - (width * 1.0/30.0) - (width * 1.0/30.0)*1/2;
  stopY = startingY * 3/2;
  stopWidth = buttonSide ;
  stopHeight = buttonSide;
  
  /*
  stopX = pauseX1;
  stopY = musicButtonDrawY * 3/2;
  stopWidth = pauseHeight ;
  stopHeight = pauseHeight;
  startingX - (width * 1.0/30.0) - (width * 1.0/30.0)*1/2
  */
  //
} //End setup

void draw() {
  //STOP Button: button is the logical rectangle
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight)
  {
  println("Hovering Over Button");
  } else
  { 
    println("");
  }
  rect(stopX, stopY, stopWidth, stopHeight);
} //End draw

void keyPressed() {
} //End keyPressed

void mousePressed() {
  /*
  mouseX>=X && mouseX<=X+Width && mouseY=>Y && mouseY<=Y+Height)
  add varibles to rect()
  */
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) 
  {
    println("Button Pressed");
    stopHoverOver = true;
  } 
} //End mousePressed

//End Main Program

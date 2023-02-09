//Global Variables
float  pauseX1, pauseY1, pauseWidth, pauseHeight,  pauseX2, pauseY2, pauseWidth, pauseHeight
//
void setup() {
  size(); //width, height 
  //population, visual data
  pauseX1 = width;
  pauseY1 = height;
  pauseX2 = width;
  pauseY2 = height;
  pauseWidth = width;
  pauseHight = height;
}//End setup
//
void draw() {
  rect();
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)

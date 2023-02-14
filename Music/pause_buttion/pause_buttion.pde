//Global Variables
//
void setup() {
  //Landscape (portrait, square)
  size(800, 800); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //Population, visual data
  float musicButtonDrawX = width * 25/50;
  float musicButtonDrawY = height * 1/2;
  pauseScaleWidth = 1.0/30.0; //used to change x-size
  pauseScaleHeight = 1.0/7.5; //used to change y-axis
  println(pauseScaleWidth);
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = height * pauseScaleHeight;
  //
  stopX = pauseX1;
  stopY = musicButtonDrawY * 3/2;
  stopWidth = pauseHeight ;
  stopHeight = pauseHeight;
  //
  playX1 = pauseX1 ;
  playY1 = pauseY1 ;
  playX2 = pauseX1 + (musicButtonDrawY * 1/2) + width ;
  playY2 = musicButtonDrawY + playY3 - playY1 * 1/2;
  playX3 = pauseX1 ;
  playY3 = playY1 + pauseHeight ;
}//End setup()
//
void draw() {
  drawMusicButtons();
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)

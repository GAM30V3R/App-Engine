//Global Variables
//
void setup() {
  //Landscape (portrait, square)
  size(1000, 500); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //Population, visual data
  float musicButtonDrawX = width * 25/50;
  float musicButtonDrawY = height * 1/2;
  pauseScaleWidth = 1.0/30.0; //used to change x-size
  pauseScaleHeight = 1.0/5.5; //used to change y-axis
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
  stopWidth = -pauseHeight ;
  stopHeight = pauseHeight;
  //
  playX1 = pauseX1 ;
  playY1 = musicButtonDrawY;
  playX2 = musicButtonDrawX + (pauseWidth * 1.5) ;
  playY2 = (playY1 + pauseHeight) / 1.15;
  playX3 = pauseX1 ;
  playY3 = musicButtonDrawY + pauseHeight ;
  //
  ffX1 = pauseX1 * 4.0/3.0 ;
  ffY1 = musicButtonDrawY;
  ffX2 = playX2 * 11.5/9.0;
  ffY2 = playY2;
  ffX3 = ffX1;
  ffY3 = playY3;
  ffX4 = playX2 * 10.5/9.0;
  ffY4 = musicButtonDrawY;
  ffX5 = ffX2 * 9.5/9.0;
  ffY5 = playY2;
  ffX6 = ffX4;
  ffY6 = ffY3;
  //
  rX1 = musicButtonDrawX - pauseHeight*1/3 - pauseHeight;
  rY1 = musicButtonDrawX -ffY1;
  rX2 =  -ffX2;
  rY2 = ffY2;
  rX3 = musicButtonDrawX - pauseHeight*1/3 - pauseHeight;
  rY3 = ffY3;
  rX4 = musicButtonDrawX - pauseHeight*1/3 - pauseHeight;
  rY4 = ffY4;
  rX5 = -ffX5;
  rY5 = ffY5;
  rX6 = musicButtonDrawX - pauseHeight*1/3 - pauseHeight;
  rY6 = ffY6;
  //
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

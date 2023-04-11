/* Background image
no aspect ratio
Filling the rectangle
*/
//Global Varibles
int appWidth, appHeight;
float BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight;
PImage pic;
Boolean nightMode = false;
size(1000, 750); //landscape 480, 360
appWidth = width;
appHeight =height ;
//Population
BackgroundimageX = appWidth*0;
BackgroundimageY = appHeight*0;
BackgroundimageWidth = appWidth-1;
BackgroundimageHeight = appHeight-1;
pic = loadImage("../Images/0.jpg");
//Rectangle layout and Image drawing  to canvas
rect(BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight);
if (nightMode==false) tint(255, 128, 128);//gray scale
if (nightMode==true)  tint(255, 128, 128); //RGB 
image(pic, BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight);

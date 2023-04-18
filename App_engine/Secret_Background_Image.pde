//Global Varibles
void ImageVaribles () {
  int Width2 = width, Height2 = height;
  float BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight;
  PImage Pic;
  float Space = 0.0, picX_Adjusted = 0.0, picY_Adjusted = 0.0;
  float PicWidthAdjusted = 0.0, PicHeightAdjusted = 0.0; //If needs a previous value
  //Boolean nightMode = false;
  Boolean ImageCenter = false, ImageRightBottom = true; 
  //landscape 480, 360
  //Width = width;
  //Height = height;
  //Population
  Width2 = width;
  Height2 = height;
  BackgroundimageX = Width2 * 0;
  BackgroundimageY = Height2 * 0;
  BackgroundimageWidth = Width2 - 1;
  BackgroundimageHeight = Height2 - 1;
  //
  Pic = loadImage("../Images/0.jpg");
}

//Pathway and Files
/*
String upFolder= "..";
 String openFolder= "/";
 String Images= "Images";
 String FileName = "0.jpg";
 Pic = loadImage(upFolder+openFolder+Images+openFolder+FileName);
 */
void Image() {
  int PicWidth = 1280; //Original Dimention 1280 or 480
  int PicHeight = 720; //Original Dimention 720 or 360
  int LargerDimension, SmallerDimension;
  float ImageWidthRatio, ImageHeightRatio;
  if ( PicWidth >= PicHeight ) { //TRUE if its Landscape ore square
    LargerDimension = PicWidth;
    SmallerDimension = PicHeight;
    ImageHeightRatio = float(SmallerDimension) / float(LargerDimension); //>=1
    
    PicWidthAdjusted = BackgroundimageWidth; //compressed
    PicHeightAdjusted = BackgroundimageWidth * ImageHeightRatio;
    
    Space = BackgroundimageHeight - PicHeightAdjusted;
    
    picX_Adjusted = BackgroundimageX;
    picY_Adjusted = BackgroundimageY;
    
    if (ImageCenter == true) picY_Adjusted = BackgroundimageY + Space*1/2;
    if (ImageRightBottom == true ) picY_Adjusted = BackgroundimageY + Space*1/2;
    
    if (PicHeightAdjusted > BackgroundimageHeight) {//ERROR Catch: adjusted Height is Bigger then 
      PicHeightAdjusted = BackgroundimageHeight;
      PicWidthAdjusted = PicWidthAdjusted * ImageHeightRatio;
      
      Space = BackgroundimageWidth - PicWidthAdjusted;
      
      picX_Adjusted = BackgroundimageX;
      picY_Adjusted = BackgroundimageY;
      if (ImageCenter==true) picX_Adjusted = BackgroundimageX + Space*1/2;
      if (ImageRightBottom==true ) picX_Adjusted = BackgroundimageX + Space*1/2;
    }
  
  } else {
    LargerDimension = PicHeight;
    SmallerDimension = PicWidth;
    ImageWidthRatio = float (SmallerDimension) / float (LargerDimension);
    PicHeightAdjusted = BackgroundimageHeight;
    PicWidthAdjusted = BackgroundimageHeight * ImageWidthRatio;
    
    Space = BackgroundimageWidth - PicWidthAdjusted;
    
    picX_Adjusted = BackgroundimageX;
    picY_Adjusted = BackgroundimageY;
    if (ImageCenter==true) picX_Adjusted = BackgroundimageX + Space*1/2;
    if (ImageRightBottom==true ) picX_Adjusted = BackgroundimageX + Space*1/2;
    
    if (PicWidthAdjusted > BackgroundimageWidth) {//ERROR Catch: adjusted Height is Bigger then 
      PicWidthAdjusted = BackgroundimageWidth;
      PicHeightAdjusted = PicHeightAdjusted * ImageWidthRatio;
      
      Space = BackgroundimageHeight - PicHeightAdjusted;
      
      picX_Adjusted = BackgroundimageX;
      picY_Adjusted = BackgroundimageY;
      if (ImageCenter==true) picY_Adjusted = BackgroundimageY + Space*1/2;
      if (ImageRightBottom==true ) picY_Adjusted = BackgroundimageY + Space*1/2;
    }
  }
  
  //
  //Rectangle layout and Image drawing  to canvas
  rect( BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight);
  //if (nightMode==false) tint(128, 255, 255);//gray scale
  //if (nightMode==true)  tint(255, 128, 128); //RGB
  //image(Pic, BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight);
  println (BackgroundimageX, BackgroundimageY, PicWidthAdjusted, PicHeightAdjusted);
  image(Pic, picX_Adjusted, picY_Adjusted, PicWidthAdjusted, PicHeightAdjusted);
}

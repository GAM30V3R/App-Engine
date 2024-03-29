//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Boolean musicplayer = true;
//
void setup() {
  //
  size(1000, 500); //width, height
  drawMusicBackground();
  if (musicplayer==true){
    drawMusicBackground();
    setupMusic();
    population();
    TextSetup();
  }
}//End setup
//
void draw() {
  if (musicplayer==true){
    drawMusic();
    drawButtonText();
    PlayTextDraw(height, RedInk, CENTER, CENTER, Font, Playstring, playTextX, playTextY, playTextWidth, -playTextHeight);
    StopTextDraw(height, RedInk, CENTER, CENTER, Font, Stopstring, stopX, stopY2, stopWidth, stopHeight*25/20);
    SkipForwardTextDraw(height, RedInk, CENTER, CENTER, Font, SkipForwardstring, ffTextX, ffTextY, ffTextWidth, -ffTextHeight);
    SkipBackwardTextDraw(height, RedInk, CENTER, CENTER, Font, SkipBackwardstring, rX5, rY1 - rTextHeight, rTextWidth, rTextHeight);
    NextTextDraw(height, RedInk, CENTER, CENTER, Font, Nextstring, skipTextX, skipTextY, skipTextWidth, -skipTextHeight);
    BackTextDraw(height, RedInk, CENTER, CENTER, Font, Backstring, backTextX, backTextY, backTextWidth, -backTextHeight);
    LoopTextDraw(height, RedInk, CENTER, CENTER, Font, Loopstring, loopTextX,loopTextY, loopTextWidth, loopTextHeight);
    MuteTextDraw(height, RedInk, CENTER, CENTER, Font, Mutestring, backX1, muteTextY, muteTextWidth, muteTextHeight);
    YEETextDraw(height, RedInk, CENTER, CENTER, YEEFont, YEEstring, YEEx, YEEy, YEEWidth, playTextHeight);
  }
  //drawMusicBackground();
}//End draw
//
void keyPressed() {
  if (musicplayer==true){
    keyPressedMusic();
  }
}//End keyPressed
//
void mousePressed() {
  if (musicplayer==true){
    mousePressedMusic();
  }
}//ENd mousePressed
//
//End MAIN Program

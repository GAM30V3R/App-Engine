//Global Varibles
int Width=0, Height=0;
float ButtonX1, ButtonY1, ButtonWidth1, ButtonHeight1, ButtonX2, ButtonY2, ButtonWidth2, ButtonHeight2;
Boolean tri1on= false, tri2on = false;
void setup() {
  size(1000, 500);
  println(width, height, displayWidth, displayHeight); 
  //ERROR CATCH: If canvas is bigger than display, send feedback to user
  if (width >= displayWidth || height >= displayHeight) {
    Width = 0;
    Height =0 ;
  } else {
   Width= width;
   Height= height;
  }
  population();
}
void draw() {
  rect(ButtonX1, ButtonY1, ButtonWidth1, ButtonHeight1);
  rect(ButtonX2, ButtonY2, ButtonWidth2, ButtonHeight2);
  if (tri1on==true && tri2on==false) triangle(ButtonX1, ButtonY1+ButtonHeight1 ,ButtonX1 + ButtonWidth1, ButtonY1+ButtonHeight1+ButtonHeight1, ButtonX1, ButtonY1+ButtonHeight1+ButtonHeight1+ButtonHeight1);
  if (tri1on==false && tri2on==true) triangle(ButtonX2 + ButtonWidth2, ButtonY2+ButtonHeight2, ButtonX2 , ButtonY2+ButtonHeight2+ButtonHeight2, ButtonX2 + ButtonWidth2, ButtonY2+ButtonHeight2+ButtonHeight2+ButtonHeight2);
}

void keyPressed() {
}

void mousePressed() {
  if (mouseX>=ButtonX1 && mouseX<=ButtonX1+ ButtonWidth1 && mouseY>=ButtonY1 && mouseY<=ButtonY1+ButtonHeight1)tri1on = true ;
  if (mouseX>=ButtonX2 && mouseX<=ButtonX2+ButtonWidth2 && mouseY>=ButtonY2 && mouseY<=ButtonY2+ButtonHeight2) tri2on = true ;
}

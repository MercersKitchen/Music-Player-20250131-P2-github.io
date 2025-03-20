//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  imageDivX = appWidth*0.17;
  imageDivY = appHeight*0.20;
  imageDivWidth = appWidth*0.67;
  imageDivHeight = appHeight*0.15;
  //
  //rect(X, Y, Width, Height);
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program

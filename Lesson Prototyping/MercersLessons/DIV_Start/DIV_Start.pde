//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float imageX, imageY, imageWidth, imageHeight;
//
void setup() {
  //Display
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  imageX = appWidth*0.17;
  imageY = appHeight*0.20;
  imageWidth = appWidth*0.67;
  imageHeight = appHeight*0.15;
  //
  //rect(X, Y, Width, Height);
  //
} //End setup
//
void draw() {
  rect(imageX, imageY, imageWidth, imageHeight);
} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program

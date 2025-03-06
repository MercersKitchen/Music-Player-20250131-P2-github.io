//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
float imageX, imageY, imageWidth, imageHeight;
//
void setup() {
  //Display
  fullscreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  imageX = displayWidth*0.17;
  imageY = displayHeight*0.20;
  imageWidth = displayWidth*0.67;
  imageHeight = displayHeight*0.15;
  //
  //rect();
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

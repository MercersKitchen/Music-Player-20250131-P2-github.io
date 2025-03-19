/* Button Template: all buttons
 - TBA
 */
//
//Library - minim
//
//Global Variables
float divX, divY, divWidth, divHeight;
float musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight;
float stopX, stopY, stopWidth, stopHeight;
//
void setup() {
  //Display
  fullScreen(); //displayWidth, displayHeight
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //Population
  divX = appWidth*1/4;
  divY = appHeight*1/4;
  divWidth = appWidth*1/2;
  divHeight = appHeight*1/2;
  float smallerSide = ( divWidth < divHeight ) ? divWidth : divHeight ; //Ternary Operator
  musicButtonX = divX;
  musicButtonY = divY;
  musicButtonWidth = smallerSide;
  musicButtonHeight = smallerSide;
  stopX = musicButtonX + musicButtonWidth*1/4;
  stopY = musicButtonY + musicButtonHeight*1/4;
  stopWidth = musicButtonWidth*1/2;
  stopHeight = musicButtonHeight*1/2;
  //
  //DIV: musicButtonDIV
  //rect(X, Y, Width, Height);
  rect(divX, divY, divWidth, divHeight);
  rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  //Shapes to turn off
  rect(stopX, stopY, stopWidth, stopHeight);
  //PLAY
  //FAST FORWARD
  //PAUSE
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program

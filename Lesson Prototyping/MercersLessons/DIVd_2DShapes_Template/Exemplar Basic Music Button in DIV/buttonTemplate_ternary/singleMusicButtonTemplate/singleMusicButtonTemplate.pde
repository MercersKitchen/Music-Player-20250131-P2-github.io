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
float playX1, playY1, playX2, playY2, playX3, playY3;
float fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3;
float fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6;
float pauseX1, pauseY1, pauseWidth1, pauseHeight1;
float pauseX2, pauseY2, pauseWidth2, pauseHeight2;
//
void setup() {
  //Display
  fullScreen(); //displayWidth, displayHeight
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //Population
  //DIV is rect()
  divX = appWidth*1/4;
  divY = appHeight*1/4;
  divWidth = appWidth*1/2;
  divHeight = appHeight*1/2;
  //
  //rect(DIV) is made into a square(DIV)
  float smallerSide = ( divWidth < divHeight ) ? divWidth : divHeight ; //Ternary Operator
  musicButtonX = divX;
  musicButtonY = divY;
  musicButtonWidth = smallerSide;
  musicButtonHeight = smallerSide;
  stopX = musicButtonX + musicButtonWidth*1/4;
  stopY = musicButtonY + musicButtonHeight*1/4;
  stopWidth = musicButtonWidth*1/2;
  stopHeight = musicButtonHeight*1/2;
  playX1 = musicButtonX + musicButtonWidth*1/4;
  playY1 = musicButtonY + musicButtonHeight*1/4;
  playX2 = musicButtonX + musicButtonWidth*3/4;
  playY2 = musicButtonY + musicButtonHeight*1/2;
  playX3 = musicButtonX + musicButtonWidth*1/4;
  playY3 = musicButtonY + musicButtonHeight*3/4;
  fastForwardX1 = musicButtonX + musicButtonWidth*1/4;
  fastForwardY1 = musicButtonY + musicButtonHeight*1/4;
  fastForwardX2 = musicButtonX + musicButtonWidth*1/2;
  fastForwardY2 = musicButtonY + musicButtonHeight*1/2;
  fastForwardX3 = musicButtonX + musicButtonWidth*1/4;
  fastForwardY3 = musicButtonY + musicButtonHeight*3/4;
  fastForwardX4 = musicButtonX + musicButtonWidth*1/2;
  fastForwardY4 = musicButtonY + musicButtonHeight*1/4;
  fastForwardX5 = musicButtonX + musicButtonWidth*3/4;
  fastForwardY5 = musicButtonY + musicButtonHeight*1/2;
  fastForwardX6 = musicButtonX + musicButtonWidth*1/2;
  fastForwardY6 = musicButtonY + musicButtonHeight*3/4;
  pauseX1 = musicButtonX + musicButtonWidth*1/4;
  pauseY1 = musicButtonY + musicButtonHeight*1/4;
  pauseWidth1 = musicButtonWidth*1/8;
  pauseHeight1 = musicButtonHeight*1/2;
  pauseX2 = musicButtonX + musicButtonWidth*5/8;
  pauseY2 = musicButtonY + musicButtonHeight*1/4;
  pauseWidth2 = musicButtonWidth*1/8;
  pauseHeight2 = musicButtonHeight*1/2;
  //
  //DIV: musicButtonDIV
  //rect(X, Y, Width, Height);
  rect(divX, divY, divWidth, divHeight);
  rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  //Shapes to turn off with a comment
  rect(stopX, stopY, stopWidth, stopHeight);
  //triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  //triangle(fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3);
  //triangle(fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6);
  //rect(pauseX1, pauseY1, pauseWidth1, pauseHeight1);
  //rect(pauseX2, pauseY2, pauseWidth2, pauseHeight2);
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

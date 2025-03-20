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
float fastForward1X1, fastForward1Y1, fastForward1X2, fastForward1Y2, fastForward1X3, fastForward1Y3;
float fastForward2X1, fastForward2Y1, fastForward2X2, fastForward2Y2, fastForward2X3, fastForward2Y3;
float pause1X, pause1Y, pause1Width, pause1Height;
float pause2X, pause2Y, pause2Width, pause2Height;


//Music Button Floats from 2D Shapes
//
void setup() {
  //Display
  //size(); //landscape, protrait prototyping //width, height
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
  musicButtonX = divX; //Produces button in the corner of DIV
  musicButtonY = divY; //Produces button in the corner of DIV
  musicButtonWidth = smallerSide;
  musicButtonHeight = smallerSide;
  //Music Button Variables from 2D Shapes
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
  fastForward1X1 = musicButtonX + musicButtonWidth*1/4;
  fastForward1Y1 = musicButtonY + musicButtonHeight*1/4;
  fastForward1X2 = musicButtonX + musicButtonWidth*1/2;
  fastForward1Y2 = musicButtonY + musicButtonHeight*1/2;
  fastForward1X3 = musicButtonX + musicButtonWidth*1/4;
  fastForward1Y3 = musicButtonY + musicButtonHeight*3/4;
  fastForward2X1 = musicButtonX + musicButtonWidth*1/2;
  fastForward2Y1 = musicButtonY + musicButtonHeight*1/4;
  fastForward2X2 = musicButtonX + musicButtonWidth*3/4;
  fastForward2Y2 = musicButtonY + musicButtonHeight*1/2;
  fastForward2X3 = musicButtonX + musicButtonWidth*1/2;
  fastForward2Y3 = musicButtonY + musicButtonHeight*3/4;
  pause1X = musicButtonX + musicButtonWidth*1/4;
  pause1Y = musicButtonY + musicButtonHeight*1/4;
  pause1Width = musicButtonWidth*1/8;
  pause1Height = musicButtonHeight*1/2;
  pause2X = musicButtonX + musicButtonWidth*5/8;
  pause2Y = musicButtonY + musicButtonHeight*1/4;
  pause2Width = musicButtonWidth*1/8;
  pause2Height = musicButtonHeight*1/2;
  //
  //DIV: musicButtonDIV
  //rect( X, Y, Width, Height );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //rect( divX, divY, divWidth, divHeight );
  rect( musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight );
  //Shapes to turn off
  //rect( stopX, stopY, stopWidth, stopHeight );
  //triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //triangle( fastForward1X1, fastForward1Y1, fastForward1X2, fastForward1Y2, fastForward1X3, fastForward1Y3 );
  //triangle( fastForward2X1, fastForward2Y1, fastForward2X2, fastForward2Y2, fastForward2X3, fastForward2Y3 );
  //rect( pause1X, pause1Y, pause1Width, pause1Height );
  //rect( pause2X, pause2Y, pause2Width, pause2Height );
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

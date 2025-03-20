/* Button Template: all buttons
 - TBA
 */
//
//Library - minim
//
//Global Variables
float divX, divY, divWidth, divHeight;
float musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight;
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
  musicButtonWidth = smallerSide; //NOTICE: variables reordered b/c used to calculate X & Y
  musicButtonHeight = smallerSide;
  //if () {} else {} to change X OR Y depending on smallerSide
  if ( divWidth < divHeight ) {
    //divWidth smaller side
    //must CENTER or BOTTOM on Y-Axis
    musicButtonX = divX; //Old divX
    musicButtonY = divY + (divHeight - musicButtonHeight)/2;
  } else {
    //divHeight smaller side
    //must CENTER or Right-justify on X-Axis
    musicButtonX = divX + ( divWidth - musicButtonWidth )/2;
    musicButtonY = divY; //Old divY
  }
  println(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  //
  //DIV: musicButtonDIV
  //rect( X, Y, Width, Height );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //rect( divX, divY, divWidth, divHeight );
  rect( musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight );
  //Shapes to turn off
  //rect( stopX, stopY, stopWidth, stopHeight );
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

//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
float divX, divY, divWidth, divHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //Population
  //Move around CANVAS to illustrate 2D Code will also shift
  //DIV Numbers are what are important, same as display numbers
  divX = appWidth*1/4;  
  divY = appHeight*1/4;
  divWidth = appWidth*1/2;
  divHeight = appHeight*1/2;
  //
  // Play Variables
  //
  //DIVs
  rect(divX, divY, divWidth, divHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program

//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
float divX, divY, divWidth, divHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float pause1X, pause1Y, pause1Width, pause1Height;
float pause2X, pause2Y, pause2Width, pause2Height;
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
  stopX = divX + divWidth*1/4;
  stopY = divY + divHeight*1/4;
  stopWidth = divWidth*1/2;
  stopHeight = divHeight*1/2;
  playX1 = divX + divWidth*1/4; //not divX
  playY1 = divY + divHeight*1/4;
  playX2 = divX + divWidth*3/4;
  playY2 = divY + divHeight*1/2;
  playX3 = divX + divWidth*1/4;
  playY3 = divY + divHeight*3/4;
  /*
  pause1X = ;
  pause1Y = ;
  pause1Width = ;
  pause1Height = ;
  pause2X = ;
  pause2Y = ;
  pause2Width = ;
  pause2Height
  */
  //
  //DIVs
  rect(divX, divY, divWidth, divHeight);
  // Compile one shape or other
  rect(stopX, stopY, stopWidth, stopHeight); 
  //triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //rect(pause1X, pause1Y, pause1Width, pause1Height);
  //rect(pause2X, pause2Y, pause2Width, pause2Height)
  //how do you draw a square in a rectangle, smaller side then smaller side / 2 from the middle
  //how do you draw a triangle with the same dimensions as the rectangle, verticies on square
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

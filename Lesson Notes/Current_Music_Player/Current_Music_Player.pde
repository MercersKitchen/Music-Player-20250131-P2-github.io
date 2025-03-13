// Dynamic not static
//
//Library - Minim
//
//Global Variables
//
float X, Y, Width, Height;
float topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight;
float muteX, muteY, muteWidth, muteHeight;

void setup() {
  fullScreen(); //displayWidth, displayHeight
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  
  X = appWidth * 0.20;
  Y = appHeight * 0.20;
  Width = appWidth * 0.20;
  Height = appHeight * 0.20;
  
  //rect(X, Y, Width, Height);
  
  topDisplayX = appWidth * 0.25;
  topDisplayY= appHeight * 0.25; 
  topDisplayWidth = appWidth * 0.50; 
  topDisplayHeight = appHeight * 0.30;
  muteX = appWidth * 0.60;
  muteY = appHeight * 0.10;
  muteWidth = appWidth * 0.10;
  muteHeight = appHeight * 0.02;
  
  
  rect(topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight);
  //
  
  rect(muteX, muteY, muteWidth, muteHeight);
  /*
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  */
  // 
  
}
//
void draw() {}
//
void mousePressed() {}
//
void keyPressed() {}
//
//End MAIN Program

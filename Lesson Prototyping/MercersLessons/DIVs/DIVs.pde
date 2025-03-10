/* Purpose: draw a rectangle
   Vocabulary
   - Declaration & Initialization
   - Local Variables v Global Variables
   - Population of variables
 */
//Library - Minim
//
//Global Variables
float X, Y, Width, Height;
//
void setup() {
  println("1.", X, Y, Width, Height);
  // Display
  fullScreen();
  println(displayWidth, displayHeight);
  int appWidth = ;
  int appHeight = ;
  //
  println(appWidth, appHeight);
  appWidth = displayWidth;
  appHeight = displayHeight;
  println(appWidth, appHeight);
  //
  X = appWidth*1/4;
  Y = appHeight*2/5;
  Width = appWidth*1/2;
  Height = appHeight*2/5;
  //
  //DIVs
  //rect(X, Y, Width, Height)
  rect(imageX, imageY, imageWidth, imageHeight);
  rect(playX, playY, playWidth, playHeight);
  rect(pauseX, pauseY, pauseWidth, pauseHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  rect(fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);
  rect(fastRewindX, fastRewindY, fastRewindWidth, fastRewindHeight);
  rect(muteX, muteY, muteWidth, muteHeight);
  rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
  rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
  rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
  rect(nextX, nextY, nextWidth, nextHeight);
  rect(previousX, previousY, previousWidth, previousHeight);
  rect(songPositionX, songPositionY, songPositionWidth, songPositionHeight);
  rect(timeRemainingX, timeRemainingY, timeRemainingWidth, timeRemainingHeight);
  rect(songTitleX, songTitleY, songTitleWidth, songTitleHeight);
  rect(timeBarX, timeBarY, timeBarWidth, timeBarHeight);
  //
} //End setup
//
void draw() {
  rect(X, Y, Width, Height); //X, Y, Width, Height
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program

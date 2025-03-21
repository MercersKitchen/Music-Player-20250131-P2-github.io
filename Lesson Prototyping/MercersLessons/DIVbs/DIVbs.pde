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
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
float stopDivX, stopDivY, stopDivWidth, stopDivHeight;
//Button Variables before
float playDivX, playDivY, playDivWidth, playDivHeight;
//Button Variables after
//
void setup() {
  println("1.", X, Y, Width, Height);
  // Display
  fullScreen();
  println(displayWidth, displayHeight);
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  imageDivX = appWidth*1/4;
  imageDivY = appHeight*1/5;
  imageDivWidth = appWidth*1/2;
  imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
  //
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
  println("Button Width:", appWidth/numberOfButtons);
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  int buttonY = appHeight*3/5;
  stopDivX = beginningButtonSpace;
  stopDivY = buttonY;
  stopDivWidth = widthOfButton;
  stopDivHeight = widthOfButton;
  //
  playDivX = beginningButtonSpace + widthOfButton*5; //TEACHER Only" manipulate this number to draw simulate all buttons
  playDivY = buttonY;
  playDivWidth = widthOfButton;
  playDivHeight = widthOfButton;
  //
  //DIVs
  //rect(X, Y, Width, Height)
  //rect(quitX, quitY, quitWidth, quitHeight);
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight);  //*0
  //rect(muteDivX, muteDivY, muteDivWidth, muteDivHeight); //*1
  //rect(previousDivX, previousDivY, previousDivWidth, previousDivHeight); //*2
  //rect(fastRewindDivX, fastRewindDivY, fastRewindDivWidth, fastRewindDivHeight); //*3
  //rect(pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight); //*4
  rect(playDivX, playDivY, playDivWidth, playDivHeight); //*5
  //rect(loopOnceDivX, loopOnceDivY, loopOnceDivWidth, loopOnceDivHeight);
  //rect(loopInfiniteDivX, loopInfiniteDivY, loopInfiniteDivWidth, loopInfiniteDivHeight);
  //rect(fastForwardDivX, fastForwardDivY, fastForwardDivWidth, fastForwardDivHeight);
  //rect(nextDivX, nextDivY, nextDivWidth, nextDivHeight);
  //rect(shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight);
  //rect(songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight);
  //rect(timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight);
  //rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  //rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
  //
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
// End Main Program

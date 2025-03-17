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
float imageX, imageY, imageWidth, imageHeight;
float stopX, stopY, stopWidth, stopHeight;
//Button Variables before
float playX, playY, playWidth, playHeight;
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
  println(appWidth, appHeight);
  appWidth = displayWidth;
  appHeight = displayHeight;
  println(appWidth, appHeight);
  //
  imageX = appWidth*1/4;
  imageY = appHeight*1/5;
  imageWidth = appWidth*1/2;
  imageHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
  //
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
  println("Button Width:", appWidth/numberOfButtons);
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  int buttonY = appHeight*3/5;
  stopX = beginningButtonSpace;
  stopY = buttonY;
  stopWidth = widthOfButton;
  stopHeight = widthOfButton;
  //
  playX = beginningButtonSpace + widthOfButton*5; //TEACHER Only" manipulate this number to draw simulate all buttons
  playY = buttonY;
  playWidth = widthOfButton;
  playHeight = widthOfButton;
  //
  //DIVs
  //rect(X, Y, Width, Height)
  //rect(quitX, quitY, quitWidth, quitHeight);
  rect(imageX, imageY, imageWidth, imageHeight);
  rect(stopX, stopY, stopWidth, stopHeight);  //*0
  //rect(muteX, muteY, muteWidth, muteHeight); //*1
  //rect(previousX, previousY, previousWidth, previousHeight); //*2
  //rect(fastRewindX, fastRewindY, fastRewindWidth, fastRewindHeight); //*3
  //rect(pauseX, pauseY, pauseWidth, pauseHeight); //*4
  rect(playX, playY, playWidth, playHeight); //*5
  //rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
  //rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
  //rect(fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);
  //rect(nextX, nextY, nextWidth, nextHeight);
  //rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
  //rect(songPositionX, songPositionY, songPositionWidth, songPositionHeight);
  //rect(timeRemainingX, timeRemainingY, timeRemainingWidth, timeRemainingHeight);
  //rect(songTitleX, songTitleY, songTitleWidth, songTitleHeight);
  //rect(timeBarX, timeBarY, timeBarWidth, timeBarHeight);
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

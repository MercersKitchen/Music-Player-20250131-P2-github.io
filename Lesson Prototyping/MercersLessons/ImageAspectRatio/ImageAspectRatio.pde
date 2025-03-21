/* Purpose: Image Aspect Ratio
 - An algorithm for replicating the exact image
 - Allows other algorithms to be known and compared
 - Uses computer's compression algoirthm
 - Uses alogiorthm of drawing a square in a rectangle, comparing sides
 - Examples
   Background Image
   Image in DIV
   Image CENTER, LEFT, RIGHT, TOP, BOTTOM, etc.
 */
//Library - Minim
//
//Global Variables
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
//
void setup() {
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
  //DIVs
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  //
} //End setup
//
void draw() {
  //
  //Background Image
  //Image in DIV
  //Image CENTER, LEFT, RIGHT, TOP, BOTTOM, etc.
  //
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program

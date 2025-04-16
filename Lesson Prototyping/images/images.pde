//Dynamic Programming
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
//
PImage myFirstImage;
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population
  imageDivX = appWidth*1/4;
  imageDivY = appHeight*0;
  imageDivWidth = appWidth*1/2;
  imageDivHeight = appHeight;
  //
  //Image Aspect Ratio Algorithm
  String myFirstImagePathway = "Images/Landscape/bike.jpg";
  myFirstImage = loadImage( myFirstImagePathway );
  int myFirstImageWidth = 860;
  int myFirstImageHeight = 529;
  float imageAspectRatio_GreaterOne = ( myFirstImageWidth >= myFirstImageHeight ) ? float(myFirstImageWidth)/float(myFirstImageHeight) : float(myFirstImageHeight)/float(myFirstImageWidth) ; // Choice x / for bigger or smaller
  println(imageAspectRatio_GreaterOne);
  
  
  
  //Landscape includes square
  
  //CONTINUE HERE
  //imageWidthChanged, imageHeightChanged
  //
  //DIV
  rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
  //
  //Prototype Images
  //image( myFirstImage, imageDivX, imageDivY, imageWidthChanged, imageHeightChanged );
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

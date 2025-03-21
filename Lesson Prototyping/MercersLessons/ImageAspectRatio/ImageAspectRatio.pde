/* Purpose: Image Aspect Ratio
 - An algorithm for replicating the exact image
 - Allows other algorithms to be known and compared
 - Uses computer's compression algoirthm
 - Uses alogiorthm of drawing a square in a rectangle, comparing sides
 - Examples
 Background Image: ball is not circular, this is what compression means
 Image in DIV
 Image CENTER, LEFT, RIGHT, TOP, BOTTOM, etc.
 Advanced: ZOOM and Cropping (Wild Emails)
 */
//Library - Minim
//
//Global Variables
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
PImage backgroundImage, bikeImage;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float bikeX, bikeY, bikeImageWidth, bikeImageHeight;
float bikeX_Changed, bikeY_Changed, bikeImageWidthChanged, bikeImageHeightChanged;
//
void setup() {
  fullScreen();
  println(displayWidth, displayHeight);
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //Image Loading
  String open = "/";
  String fileTypeJPG = ".jpg";
  String imageFolder = "Images";
  String imageGeomterySquare = "Square";
  String imageGeomteryLandscape = "Landscape";
  String imageGeomteryPortrait = "";
  String soccerBall = "SoccerBall";
  String bike = "bike";
  String file = imageFolder + open + imageGeomterySquare + open + soccerBall + fileTypeJPG;
  backgroundImage = loadImage(file);
  file = imageFolder + open + imageGeomteryLandscape + open + bike + fileTypeJPG;
  bikeImage = loadImage(file);
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1; //Note boarder of rect() & counting of pixels
  backgroundImageHeight = appHeight-1; //Note boarder of rect() & counting of pixels
  imageDivX = appWidth*1/4;
  imageDivY = appHeight*1/5;
  imageDivWidth = appWidth*1/2;
  imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
  bikeX_Changed = bikeX = imageDivX;
  bikeY_Changed = bikeY = imageDivY;
  bikeImageWidthChanged = bikeImageWidth = 860;
  bikeImageHeightChanged = bikeImageHeight = 529;
  //
  /* Algorithm to change variables of Image
  - Establish Landscape (square) or Portrait of DIV: smaller side
  - Establish Landscape (square) or Portrait of Image: larger side
  - If both same, verify it fits, shrink if necessary
  - If both different, larger image dimension to smaller rect(dimension), will always work
  - Note: need a more complicated algorithm to show more image vs. blank rect() surface area
  - Aspect Ratio Common Sense Algorithm: Hardcode if ratio will be >1 or <1 ... influences * or /
  */
  //
  //CONTINUE HERE WITH Images.pde
  //
  //DIVs
  //rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  //
} //End setup
//
void draw() {
  //
  //Background Image
  image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  /* Background Image Question: Is the ball circular? Explain using the numbers the computer sees
   - ANS: this is compression
   */
  //Image in DIV
  image( bikeImage, bikeX, bikeY, imageDivWidth, imageDivHeight );
  image( bikeImage, bikeX_Changed, bikeY_Changed, bikeImageWidthChanged, bikeImageHeightChanged );
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

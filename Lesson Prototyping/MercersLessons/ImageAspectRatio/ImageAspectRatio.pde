/* Purpose: Image Aspect Ratio
 - An algorithm for replicating the exact image
 - Allows other algorithms to be known and compared
 - Uses computer's compression algoirthm
 - Uses alogiorthm of drawing a square in a rectangle, comparing sides
 - Examples
 Background Image: ball is not circular, this is what compression means
 Image in DIV
 Intermediate CENTER, LEFT, RIGHT, TOP, BOTTOM, etc.
 Advanced: ZOOM and Cropping (Wild Emails)
 
 Work through Cousins Example?: fit you into a DIV
 - ID imageWidth & imageHeight
   Note: divWidth & divHeight already identified in rect(DIV)
 - Calculate Ratio: declare >1 ( or <1 )
   float imageAspectRatio ( w > h ) ? w/h : h/w ;
 - ID imageLandscape or portrait using ternary structure (true and false)
   Boolean image Landscape ( w > h ) ? true : false ;
 - ID DIV structure using ternary structure
   Boolean divLandscape ( w > h ) ? true : false ;
 - Compare two rectangle geometries
   Same: pick width, calculate height
   Different
     - Landscape: pick width, calculate height
     - Portrait: pick height, calculate width
 - Compare imageWidth to divWidth (or imageHeight to divHeight): is this bigger or smaller
   Do we mutliply or divide (also depends on ratio we are using, easier to declare which ratio we are using)
 - Calculate missing dimension
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
  bikeImageWidthChanged = bikeImageWidth = 860.0; //without .0 may truncate
  bikeImageHeightChanged = bikeImageHeight = 529.0; //without .0 may truncate
  //
  /* Algorithm to change variables of Image
   - REQUIRED: truth table & paperfolding to understand
   - Establish Landscape (square) or Portrait of DIV: smaller side
   - Establish Landscape (square) or Portrait of Image: larger side
   - If SAME, verify fit, shrink if necessary
   - If DIFFERENT, larger image dimension to smaller rect(dimension), will always work
   - CAUTION: Square Geometry means SAME might not fit and should be included in DIFFERENT
   - Note: need a more complicated algorithm to show more image vs. blank rect() surface area
   - Aspect Ratio Common Sense Algorithm: Hardcode if ratio will be >1 or <1 ... influences * or /
   */
  //
  //CONTINUE ALGORITHM HERE
  //Develop Testing Cases: develop testing programs to verify paper work
  //See Images Program, note ERRORs with it
  //
  Boolean rectLandscape = ( imageDivWidth > imageDivHeight ) ? true : false ;
  Boolean imageLandscape = ( bikeImageWidth > bikeImageHeight ) ? true : false ;
  float ratioGreaterThanOne = ( imageLandscape == true ) ? bikeImageWidth/bikeImageHeight : bikeImageHeight/bikeImageWidth;
  if ( rectLandscape == imageLandscape ) {
    //Larger DIV dimension to larger iamge dimenson (the changed value)
    //
    if ( rectLandscape == true ) { //Landscape
      boolean scaledLarger = ( bikeImageWidthChanged < imageDivWidth ) ? true : false ; //TRUE = Mutliple >1
      bikeImageWidthChanged = imageDivWidth;
      bikeImageHeightChanged = ( scaledLarger == true ) ? bikeImageWidthChanged *ratioGreaterThanOne : bikeImageWidthChanged /ratioGreaterThanOne ;
      float i = 1.0;
      float accuracy = 0.01; // add zeros if necessary, see text-flat algorithm (CS-Introduction)
      while ( bikeImageHeightChanged > imageDivHeight ) {
        i = 1 - accuracy;
        bikeImageHeightChanged = bikeImageHeightChanged*i;
        bikeImageWidthChanged = bikeImageWidthChanged*i;
      }
    }
    if ( rectLandscape == false ) { //Portrait
      boolean scaledLarger = ( bikeImageHeightChanged < imageDivHeight ) ? true : false ; //TRUE = Mutliple >1
      bikeImageHeightChanged = imageDivHeight;
      bikeImageWidthChanged = ( scaledLarger == true ) ? bikeImageHeightChanged *ratioGreaterThanOne : bikeImageHeightChanged /ratioGreaterThanOne ;
      //while() {}
    }
  } else {
  }
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

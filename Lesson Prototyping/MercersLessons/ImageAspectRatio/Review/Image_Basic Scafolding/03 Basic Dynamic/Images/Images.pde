//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float bikeX, bikeY, bikeWidth, bikeHeight;
PImage picBackground, picBike;
int picBikeWidth, picBikeHeight;
float bikeX_Changed, bikeY_Changed;
float picBikeWidthChanged, picBikeHeightChanged;
//
void setup() {
  size( 500, 700 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../../Images/Square/SoccerBall.jpg");
  bikeX_Changed = bikeX = appWidth * 1/4;
  bikeY_Changed = bikeY = appHeight * 1/4;
  bikeWidth = appWidth * 1/2;
  bikeHeight = appHeight * 1/2;
  picBike = loadImage("../../../../Images/Landscape/bike.jpg");
  picBikeWidthChanged = picBikeWidth = 860;
  picBikeHeightChanged = picBikeHeight = 529;
  //
  //Image Compression
  float biggerSide = ( picBikeWidth > picBikeHeight ) ? picBikeWidth : picBikeHeight ;
  float smallerSide = ( picBikeHeight < picBikeWidth ) ? picBikeHeight : picBikeWidth ;
  float ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  /* Algorithm
  - Establish Landscape or Portrait of DIV
  - Note: I always fill smaller side of DIV, then calculate larger side of DIV
  - Hardcode if ratio will be >1 or <1 ... influences * or /
  - In the image, decide if calculating the larger side or the smaller side
  */
  if ( bikeWidth > bikeHeight ) { //DIV Landscape, find larger side
    picBikeHeightChanged = bikeHeight;
    picBikeWidthChanged = ( picBikeWidth > picBikeHeight ) ? picBikeWidthChanged / ratio : picBikeWidthChanged * ratio;
    println( "Inside If-true:", picBikeWidthChanged );
  } else { //DIV Portrait
    picBikeWidthChanged = bikeWidth;
    picBikeHeightChanged = ( picBikeWidth > picBikeHeight ) ? picBikeWidthChanged / ratio : picBikeWidthChanged * ratio;
    println( "Inside If-false:", picBikeHeightChanged );
  }
  println( "Changed Width:", picBikeWidthChanged, "\tChanged Height:", picBikeHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( bikeX, bikeY, bikeWidth, bikeHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picBike, bikeX_Changed, bikeY_Changed, picBikeWidthChanged, picBikeHeightChanged );
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//End MAIN

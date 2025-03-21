//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float bikeX, bikeY, bikeWidth, bikeHeight;
PImage picBackground, picBike;
int picBikeWidth, picBikeHeight;
float bikeX_Changed, bikeY_Changed;
float picBikeWidthChanged, picBikeHeightChanged;
//
Boolean nightMode=false; //Note: clock could turn on automatically, see intermediate algorithm
//
void setup() {
  size( 500, 700 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Clock Setting Night Mode
  int hourNightMode = hour(); //24-hour clock
  println("Is is", hourNightMode, "hours");
  int nightModeOn = 17; //5PM
  int nightModeOff = 8; //8AM
  if ( hourNightMode > nightModeOn ) { //Note: change hard code to test clock function
    nightMode=true;
  } else if ( hourNightMode < nightModeOff ) {
    nightMode=true;
  } else {
    nightMode=false;
  }
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../../../Images/Square/SoccerBall.jpg");
  bikeX_Changed = bikeX = appWidth * 1/4;
  bikeY_Changed = bikeY = appHeight * 1/4;
  bikeWidth = appWidth * 1/2;
  bikeHeight = appHeight * 1/2;
  picBike = loadImage("../../../../../Images/Landscape/bike.jpg");
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
    //println( "Inside If-true:", picBikeWidthChanged );
  } else { //DIV Portrait
    picBikeWidthChanged = bikeWidth;
    picBikeHeightChanged = ( picBikeWidth > picBikeHeight ) ? picBikeWidthChanged / ratio : picBikeWidthChanged * ratio;
    //println( "Inside If-false:", picBikeHeightChanged );
  }
  //println( "Changed Width:", picBikeWidthChanged, "\tChanged Height:", picBikeHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( bikeX, bikeY, bikeWidth, bikeHeight );
}
//
void draw() {
  /* Image Formating: night mode
  Single Line IF: if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 64/256=1/4)
  */
  //
  if ( nightMode==true ) {
    tint ( 64, 64, 40 ); //RGB
    //println(nightMode); //Debugging KeyPressed
  } else {
    noTint(); //See Processing DOC
    //println(nightMode); //Debugging KeyPressed
  }
  //
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picBike, bikeX_Changed, bikeY_Changed, picBikeWidthChanged, picBikeHeightChanged );
}
//
void mousePressed() {
}
//
void keyPressed() {
  //
  if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightMode==true ) {
      nightMode = false;
    } else {
      nightMode = true;
    }
  }
  //
}
//
//End MAIN

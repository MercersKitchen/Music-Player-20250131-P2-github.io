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
Boolean brightnessControl=false;
int brightnessNumber=128; //Hard Coded Default
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
  /* Image Formating: brightness option with Night Mode
   - Single Line IF: if ( [BRIGHTNESS, see keyPressed] ) tint (255, 128); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
   - CAUTION: Brightness uses BLUE, thus overwritten by tint() since tint() executes 2nd
   - NOTE: NOT OS or Display Brightness, Processing Birghtness
   */
  if ( nightMode==true ) {
    //If Night Mode TRUE, overwrites brightness in this algorithm
    //CUATION: brightness uses BLUE, must consider more developed algorithm
    tint ( 64, 64, 40 ); //RGB
    //println(nightMode); //Debugging KeyPressed
  } else if ( nightMode==false && brightnessControl==true ) {
    if ( brightnessNumber<1 ) { //ERROR Catch for negative brightness number
      brightnessNumber=1;
    } else if ( brightnessNumber>255 ) { //ERROR Catch for  brightness number > 255. not >=255
      brightnessNumber=255;
    } else {
      //Empty ELSE
    }
    tint (255, brightnessNumber); //will only execute if Night Mode FALSE and Brightness TURE
  } else {
    //EXecutes if Night Mode false only, redundant if Brightness is FALSE
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
  if ( key=='b' || key=='B' ) { //Brightness Option
    if ( brightnessControl==true ) {
      brightnessControl = false;
    } else {
      brightnessControl = true;
    }
    println("Night Mode", nightMode, "\tBrightness Control", brightnessControl, "Brightness Number", brightnessNumber );
  }
  //
  /* Brightness: ARROWS will have no effect if brightnessControl=false
   - ARROWS will affect number though unless brightnessControl used below as well as shortcut nested IF
   - NOTE: Nightmode does turn off
   */
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //Brightness keybind
    if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber+1
    if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ; //brightnessNumber-=1
    //CONTINUE HERE with brightness toggles
    println( "Brightness Number", brightnessNumber );
  }
  //
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

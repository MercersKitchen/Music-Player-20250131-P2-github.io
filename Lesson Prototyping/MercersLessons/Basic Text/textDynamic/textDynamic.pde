// Text: Dynamic
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
PFont appFont;
float fontSize;
//
float titleX, titleY, titleWidth, titleHeight;
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  int shorterSide = ( appWidth >= appHeight ) ? appHeight : appWidth ; //Landscape, Portrait, & Square
  //
  minim = new Minim(this);
  String musicPathway = "Music/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String song = "groove";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../" + musicPathway;
  String file = musicDirectory + song + fileExtension_mp3; //relative pathway or directory
  println( file );
  //Create a FOR loop to loadFile() a changing songName
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
  //Music Testing
  playList[currentSong].play();
  //
  /*Fonts from OS
   println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  fontSize = shorterSide; //changed int to float for strongly formatted language
  appFont = createFont("Harrington", fontSize);
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug ( not loadFont() )
  //
  //Population
  titleX = appWidth*1/4;
  titleY = appHeight*1/4;
  titleWidth = appWidth*1/2;
  titleHeight = appHeight*1/10;
  //
  //DIVs
  rect(titleX, titleY, titleWidth, titleHeight);
  //
  //Font Size Algorithm
  float harringtonAspectRatio = 1.04; //AR = fontSize / rect(Height), unique for each font
  fontSize = titleHeight * harringtonAspectRatio; //Extra Value "Cuts the Mullet OFF"
  textFont(appFont, fontSize); //see variable note
  println( textWidth( playListMetaData[currentSong].title() ), titleWidth );
  while ( textWidth( playListMetaData[currentSong].title() ) > titleWidth  ) {
    fontSize = fontSize * 0.99;
    textFont(appFont, fontSize); //see variable note
    println( "Step:", textWidth( playListMetaData[currentSong].title() ), titleWidth );
  }
  //
  //Code before Drawing Text
  color purpleInk = #2C08FF;
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(appFont, fontSize); //see variable note
  //textFont() has option to combine font declaration with textSize()
  //Drawing Text
  text( playListMetaData[currentSong].title() , titleX, titleY, titleWidth, titleHeight);
  color whiteInk = #FFFFFF;
  fill(whiteInk); //reset
  //
} //End Setup
//
void draw() {
  //EMPTY Draw
} //End Draw
//
void mousePressed() {} //End Mouse Pressed
//
void keyPressed() {} //End Key Pressed
//
//End of MAIN

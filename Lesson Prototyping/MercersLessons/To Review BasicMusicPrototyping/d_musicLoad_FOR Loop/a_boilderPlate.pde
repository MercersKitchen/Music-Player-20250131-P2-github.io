import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
int numberOfSongs = 8; //Able to Autodetect based on Pathway
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
void setup()
{
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String ghostWalk = "Ghost_Walk";
  String groove = "groove";
  String newsroom = "Newsroom";
  String startYourEngines = "Start_Your_Engines";
  String theSimplest = "The_Simplest";
  //
  //Add Reading into Array
  String directory = "../../" + musicPathway;
  String file = directory + groove + mp3FileName;
  /* Repeated Code
   file = directory + SONG NAME + mp3FileName;
   song[currentSong] = minim.loadFile( file ); //Minim not installed, ERROR should be seen here
   */
  for (int i=0; i<numberOfSongs; i++) {
    if (i==0) file = directory + groove + mp3FileName;
    if (i==1) file = directory + startYourEngines + mp3FileName;
    if (i==2) file = directory + beatYourCompetition + mp3FileName;
    if (i==3) file = directory + cycles + mp3FileName;
    if (i==4) file = directory + eureka + mp3FileName;
    if (i==5) file = directory + ghostWalk + mp3FileName;
    if (i==6) file = directory + newsroom + mp3FileName;
    if (i==7) file = directory + theSimplest + mp3FileName;
    playList[i] = minim.loadFile( file );
  }
  //
  currentSong = 0; //Purpose: song testing
  //
  song[currentSong].play(); //Purpose: song testing
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

// Text: Static
//
String title = "Wahoo! Mullets are Awesome.";
//
//Display
//fullScreen();
size(700, 500);
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//
//Fonts from OS
println("Starty of Console");
String[] fontList = PFont.list(); //To list all fonts available on system
printArray(fontList); //For listing all possible fonts to choose, then createFont
//Population
float titleX, titleY, titleWidth, titleHeight;
titleX = appWidth*1/4;
titleY = appHeight*1/4;
titleWidth = appWidth*1/2;
titleHeight = appHeight*1/10;
//
//DIVs
rect(titleX, titleY, titleWidth, titleHeight);
//
//text(title, titleX, titleY, titleWidth, titleHeight);

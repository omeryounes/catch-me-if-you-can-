//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false, splashScreenStart=false;
Boolean nightMode=false; //Bonus #1: populate with sytem clock
//Ultimate Bonus, Gr 11: use API-sunrise for system clock start, API-sunset for system clock end
//Hint: https://processing.org/reference/hour_.html
color resetDefaultInk=#FFFFFF, white=#FFFFFF, purple=#FF00FF;
/* Night Mode Comment
 Purple not for Night Mode, full BLUE
 resetDefaultInk is Night Mode friendly
 */
//
void setup() {
  size(600, 600);
    noStroke(); // remove the border around the squares
    colorMode(HSB);
  //fullScreen(); //displayWidth, displayHeight
    // hour = hour();
    // brightness = map(time);
    //  minute = minute();
// second = second();
  appWidth = width;
  appHeight = height;
  //Display Algorithm from Hello World
  display(); //Purpose: CANVAS fits in monitor & dimension size is known
  //smaller & larger dimension from Display Algorithm
  println("Smaller Dimension is", smallerDimension, "Larger Dimension is", largerDimension);
  population(); //Values based on DISPLAY
  textSetup();
  imageSetup();
}//End setup
//
void draw() {
  //Assignemnt #2: OS Level Mouse CLick and Splash Screen
  if ( OS_On==true && splashScreenStart==false ) splashScreen(); //OS Level MOUSE Click
  if ( splashScreenStart==true ) homeScreen();
   for(int i = 0; i < 3; i++) { // loop through each row
   for(int j = 0; j < 3; j++) { // loop through each column
    rect(i * 200, j * 200, 200, 200); // draw a 100x100 pixel square at the current row and column
//for int time = hour * 60 + minute; // convert the current time to minutes
//for int brightness = map(time, 0, 1440, 0, 100); // map the time to a range between 0 and 100
//background(0, 0, brightness); // set the background color to the mapped brightness value

// draw the clock face
// ...
  // Draw the images in a 3x3 grid
  image(img1, 0, 0, 200, 200);
  image(img2, 200, 0, 200, 200);
  image(img3, 400, 0, 200, 200);
  
  image(img4, 0, 200, 200, 200);
  image(img5, 200, 200, 200, 200);
  image(img6, 400, 200, 200, 200);
  
  image(img7, 0, 400, 200, 200);
  image(img8, 200, 400, 200, 200);
  image(img9, 400, 400, 200, 200);
    }
  }
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_On==true && key==' ' ) {
    splashScreenStart = true;
    backgroundImage();
  }//End Splash Screen SPACE Bar
  //
  //Key Board Short Cuts
  if ( key==CODED || keyCode==ESC ) exit();
  if ( key=='Q' || key=='q' ) exit();
  if ( key=='N' || key=='n' ) {
    if ( nightMode==false ) { 
      nightMode = true;
      backgroundImage();
      //Reminder: must redraw all of rectangles too, and Home Screen
    } else { 
      nightMode = false;
      backgroundImage();
      //Reminder: must redraw all of rectangles too, and Home Screen
    }
  }
  //
}//End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if ( OS_On==false ) OS_On=true;//End OS Level MouseClick
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) exit();
  //
}//End mousePressed
//
//End MAIN Program

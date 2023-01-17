//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
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
    //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../FreeWare Music/MusicDownload/Cycles.mp3");//able to pass absolute path, file name & extension, and URL
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
  
  fill(white); 
  rect ( 150.0, 200.0, 50.0, 30.0); 
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("hi",  150.0, 200.0, 50.0, 30.0);
   
  fill(white); 
  rect(150.0, 400.0, 50.0, 30.0);
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("rrr",  150.0, 400.0, 50.0, 30.0); 
    
  fill(white); 
  rect( 350.0, 0.0, 50.0, 30.0);
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("1562",  350.0, 0.0, 50.0, 30.0); 
   
  fill(white); 
  rect( 350.0, 200.0, 50.0, 30.0);
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("10062",  350.0, 200.0, 50.0, 30.0);
        // text 5
  fill(white); 
  rect( 350.0, 400.0, 50.0, 30.0);
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("02",  350.0, 400.0, 50.0, 30.0); 
          // text 6
  fill(white); 
 rect( 550.0, 0.0, 50.0, 30.0);
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("787",  550.0, 0.0, 50.0, 30.0); 
    // text 7
  fill(white); 
 rect( 550.0, 200.0, 50.0, 30.0);
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("787",  550.0, 200.0, 50.0, 30.0); 
   // text 8
  fill(white); 
  rect( 550.0, 400.0, 50.0, 30.0);
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("787",  550.0, 400.0, 50.0, 30.0); 
    // text 9
  fill(white); 
  rect( 150.0, 0.0, 50.0, 30.0);
  fill(0, 0, 0); 
  textAlign(CENTER, CENTER); 
  text("787",  150.0, 0.0, 50.0, 30.0); 
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
} 
{
  if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  if ( key=='P' || key=='p' ) {//Play Pause Stop Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }//End Play Pause STop Button
  int loopNum = 2; //Local Variable plays once and loops twice
  if ( key=='L' || key=='l' ) song1.loop(loopNum-1); //Parameter is Parameter is number of repeats
  if ( key=='I' || key=='i' ) song1.loop(-1); //Parameter is for infinite loops
  if ( key=='F' || key=='f' ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( key=='R' || key=='r' ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  if ( key=='M' || key=='m' ) {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button
  if ( key=='S' || key=='s' ) {//STOP Button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); //Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song position is at the end of the file
    }
  }//End STOP Button
}//End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if ( OS_On==false ) OS_On=true;//End OS Level MouseClick
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) exit();
  //
}//End mousePressed
//
void mouseClicked() {
}//End mousePressed
//
//End MAIN Program

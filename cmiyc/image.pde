PImage backgroundImage, quitButtonImage, img1, img2, img3, img4, img5, img6, img7, img8, img9;
//
void imageSetup() {//Image Population
  backgroundImage=loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/Titus.jpg");
            img1 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/african-lion-2888519__340.jpg");
            img2 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/2dd53ec71fbc22e12c9521598d6e4da8.jpg");
            img3 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/71YiwchP4LL._AC_SX679_.jpg");
            img4 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/104816608_10158737944484170_1345544167221525333_n.jpg");
            img5 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/af56092b-35e1-4227-b13a-7f54a5928c77_560_373.jpg");
            img6 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/BrookfieldZooLions_0401.jpg");
            img7 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/e845e26c7867c1e388e3e2e7293053ed.jpg");
            img8 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/H_Zawadi-cubs-lions.jpg");
            img9 = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/catch-me-if-you-can-/image/r0_15_3273_1855_w1200_h678_fmax.jpg");
  //quitButtonImage is loaded here if different
}//End imageSetup
//
void quitButtonImage() {
  quitButtonImage = backgroundImage;
  //
  //Image Dimensions
  float quitButtonImageWidth=1707, quitButtonImageHeight=2560;
  //rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //Following vars must be populated or debugger error
  float quitButtonImageWidth_Adjusted=0.0, quitButtonImageHeight_Adjusted=0.0;
  float quitButtonImageWidth_Calculated=0.0, quitButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0; 
  //
  if ( quitButtonImageWidth >= quitButtonImageHeight ) {//Image's largest dimension, Landscape or Square
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    //Image's matching dimension to rectangle's matching dimension
    quitButtonImageWidth_Adjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageHeight_Calculated = imageHeightRatio * quitButtonImageRectWidth;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Adjusted * 1/2;
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated );
    //
  } else {//Portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    //Image's matching dimension to rectangle's matching dimension
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageWidth_Calculated = imageWidthRatio * quitButtonImageRectHeight;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Calculated * 1/2;
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Calculated, quitButtonImageHeight_Adjusted );
    //
  }
}//End quitButtonImage
//
//End Image Subprogram

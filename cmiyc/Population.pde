void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  //
  quitWidth = appWidth * 1/9; //Origonal 1/3, debugging to adjust
  quitHeight = appHeight * 1/10;
  quitX = centerX - quitWidth * 1/2;
  quitY = centerY - 4*quitHeight ;
  //
  quitButtonImageRectX = quitX;
  quitButtonImageRectY = quitY;
  quitButtonImageRectWidth = quitWidth * 5/6; //Origonal needs debugging to adjust
  quitButtonImageRectHeight = quitHeight;
  //
}//End Population
//
//ENd Population Subprogram

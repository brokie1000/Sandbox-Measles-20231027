//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDimater;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
  //
  void setup() {
  size( 600, 400); //fullScreen;
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //Ternary Operator
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println("Smaller Dimension is", smallerDimension);
  //
  //Population
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerDimension;
  backgroundX = faceX - faceDiameter*1/2;
  backgroundY = faceY - faceDiameter*1/2;
  backgroundWidth = faceDiameter;
  backgroundHeight = faceDiameter;
  /*
  leftEyeX = ;
  leftEyeY = ; 
  leftEyeDiameter = ; 
  leftEyeDiameter = ;
  rightEyeX = ; 
  rightEyeY = ; 
  rightEyeDiameter = ; 
  rightEyeDiameter = ;
  noseX1 = ; 
  noseY1 = ; 
  noseX2 = ; 
  noseY2 = ; 
  noseX3 = ; 
  noseY3 = ;
  mouthX1 = ; 
  mouthY1 = ; 
  mouthX2 = ; 
  mouthY2 = ;
  /*
 //
  //DIVs
  //4 Inscribed buttons between on the background square not on the circle
  //Solve Isoceles leg length to find rect() width and height
  //
} //End setup
//
void draw() {
  //rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight ); //Circle ONLY
  //ellipse( faceX, faceY, faceDiameter, faceDiameter );
  //ellipse ( leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter ); //Left Eye
  //ellipse ( rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter ); //Right Eye
  //triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3 ); //Nose
  //line( mouthX1, mouthY1, mouthX2, mouthY2 ); //mouth
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program

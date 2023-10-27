//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
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
  //faceDiameter = ;
  faceDiameter = smallerDimension;
  //
  //DIVs
  //
} //End setup
//
void draw() {
  ellipse( faceX, faceY, faceDiameter, faceDiameter );
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program

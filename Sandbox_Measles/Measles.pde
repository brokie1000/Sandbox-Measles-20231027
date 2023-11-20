 void mealsesProgram() {
  //Text Code

  //ERROR Coded, hoverover allows measles into other buttons
  //Only START has is fixed
  if ( mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide ) { //Buton 1
    hoverOverColour = yellow;
    fill( hoverOverColour );
    rect( button1X, button1Y, buttonSide, buttonSide );
    fill( resetColour );
  } else if ( mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide ) { //Button 2
    hoverOverColour = yellow;
    fill( hoverOverColour );
    rect( button2X, button2Y, buttonSide, buttonSide );
  } else if ( mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide ) { //button 3
    hoverOverColour = purple;
    fill( hoverOverColour );
    rect( button3X, button3Y, buttonSide, buttonSide );
  } else { //No Buttons
    hoverOverColour = resetColour;
    fill( hoverOverColour );
    rect( button1X, button1Y, buttonSide, buttonSide );
    rect( button2X, button2Y, buttonSide, buttonSide );
    rect( button3X, button3Y, buttonSide, buttonSide );
  }
  //
  fill(blackInk);
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 21;
  textFont(buttonFont, size);
  text( start, button1X, button1Y, buttonSide, buttonSide);
  text( stop, button2X, button2Y, buttonSide, buttonSide);
  text( quit, button3X, button3Y, buttonSide, buttonSide);
  //
  ellipse ( leftEyeX, leftEyeY, eyeDimater, eyeDimater ); //Left Eye
  ellipse ( rightEyeX, rightEyeY, eyeDimater, eyeDimater ); //Right Eye
  triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3 ); //Nose
  strokeWeight(mouthOpen);
  line( mouthX1, mouthY1, mouthX2, mouthY2 ); //mouth
  strokeWeight(mouthReset); //1=reset
  //
  color measleColour = color( 255, random(0, 84), random(0, 103) );
  fill(measleColour);
  measleDiameter = random( smallerDimension*1/100, smallerDimension*1/30 );
  measleX = random( backgroundX+(measleDiameter/2), (backgroundX+backgroundWidth)-(measleDiameter/2) );
  measleY = random( backgroundY+(measleDiameter/2), (backgroundY+backgroundHeight)-(measleDiameter/2) );
  //IF runs once, but computer can randomly choose a measlesX that is error
  //WHILE will repeat until the randomly chosen variable fits
  while ( measleX <= button1X+buttonSide+(measleDiameter/2) && measleY <= button1Y+buttonSide+(measleDiameter/2)) {
    measleX = random( button1X+buttonSide+(measleDiameter/2), (backgroundX+backgroundWidth)-(measleDiameter/2) );
    // This only works for one button
    // How would this change for all buttons
  }
  //WHILE only works for BUTTON1, must be repeated for other buttons
  noStroke();
  if ( ((measleX-faceX)*(measleX-faceX))+((measleY-faceY)*(measleY-faceY)) < sq( ((faceDiameter/2)-(measleDiameter/2)) ) ) { //Measle on Circle
    if ( measlesON==true ) ellipse( measleX, measleY, measleDiameter, measleDiameter );
    //ERROR: need to redraw program start for measles to disappear
  } // End Measle on Circle

  stroke(1); //default is 1
  fill(resetColour);
} //End Mealses Program

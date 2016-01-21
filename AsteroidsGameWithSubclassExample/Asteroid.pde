class Asteroid {

  /* 
   
   You should be used to the types of varibles and methods we use in here, as well as the constructor. 
   There's nothing new to talk about that you shouldn't lready have done in the particle stuff we looked at.
   
   */

  float positionOnAxisX;
  float positionOnAxisY;
  float speedInX;
  float speedInY;
  float asteroidColor;
  float asteroidWidth;
  float asteroidHeight;

  float asteroidRadius;

  Asteroid (float _positionOnAxisX, float _positionOnAxisY, float _speedInX, float _speedInY, float _asteroidWidth, float _asteroidHeight, float _asteroidColor) 
  {
    positionOnAxisX = _positionOnAxisX;
    positionOnAxisY = _positionOnAxisY;
    speedInX = _speedInX;
    speedInY = _speedInY;
    asteroidWidth = _asteroidWidth;
    asteroidHeight = _asteroidHeight;
    asteroidColor = _asteroidColor;

    asteroidRadius = asteroidWidth/2;
  }

  void displayAsteroid () {
    noStroke();
    fill(asteroidColor); 
    stroke(0);
    ellipseMode(CENTER);  //first 2 parameters of ellipse are the shapes center point                                                          
    ellipse(positionOnAxisX, positionOnAxisY, asteroidWidth, asteroidHeight);
  }

  void moveAsteroid() {

    // Add the current speed to the x and y locations.

    positionOnAxisX = positionOnAxisX + speedInX;
    positionOnAxisY = positionOnAxisY + speedInY;
  }

  boolean checkBoundaryConditions () {

    // Remember, || means "or."

    if (((positionOnAxisX - asteroidRadius) > width) 
      || ((positionOnAxisX + asteroidRadius) < 0)
      || ((positionOnAxisY - asteroidRadius) > height) 
      || ((positionOnAxisY + asteroidRadius) < 0)) 
    {
      return true;
    } else {
      return false;
    }
  }

  boolean checkIfAsteroidClicked () { 

    if (mouseX > positionOnAxisX - asteroidWidth/2 && mouseX < positionOnAxisX + asteroidWidth/2 && 
      mouseY > positionOnAxisY - asteroidHeight/2 && mouseY < positionOnAxisX + asteroidHeight/2 && speedInX > 0) {

      //Stops movement
      speedInX = 0;
      speedInY = 0;

      return true;
    } else {
      return false;
    }
  }

           //in progress

  //boolean removeWhenClickedTwice () { 

  //  if (mouseX > positionOnAxisX - asteroidWidth/2 && mouseX < positionOnAxisX + asteroidWidth/2 && 
  //    mouseY > positionOnAxisY - asteroidHeight/2 && mouseY < positionOnAxisX + asteroidHeight/2 && speedInX == 0) {

  //    return true;
  //  } else {
  //    return false;
  //  }
  //}
} // end of class
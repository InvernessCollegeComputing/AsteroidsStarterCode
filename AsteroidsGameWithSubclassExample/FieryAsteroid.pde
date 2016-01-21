class FieryAsteroid extends Asteroid {

  /* 
   
   This class 'extends' Asteroid, meaning it inherits all the stuff that Asteroid contains.
   
   */

  FieryAsteroid (float _positionOnAxisX, float _positionOnAxisY, float _speedInX, float _speedInY, float _asteroidWidth, float _asteroidHeight, float _asteroidColor) 
  {

    // the constructor for FieryAsteroid simply passes all the arguments along to the 'super' constructor (the one in Asteroid)

    super(_positionOnAxisX, _positionOnAxisY, _speedInX, _speedInY, _asteroidWidth, _asteroidHeight, _asteroidColor);
  }

  // here we are 'overriding' the displayAsteroid() method to allow us to use a different colour.

  void displayAsteroid () {
    noStroke();

    colorMode(HSB, 360);

    fill(asteroidColor, 359, 359);                                                   
    ellipseMode(CENTER);                                                             
    ellipse(positionOnAxisX, positionOnAxisY, asteroidWidth, asteroidHeight);   

    colorMode(RGB, 255);
  }

  boolean checkIfAsteroidClicked () {
    return false;
  }
} // end of class
class LukesAsteroid extends Asteroid {
  
  
  /* 
  
    This class 'extends' Asteroid, meaning it inherits all the stuff that Asteroid contains.
    
  */
 
  
  LukesAsteroid (float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, float colorOfAsteroid) 
  {
    
    // the constructor for FieryAsteroid simply passes all the arguments along to the 'super' constructor (the one in Asteroid)
    
    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);
    
  }
  
  // here we are 'overriding' the displayAsteroid() method to allow us to use a different colour.
  
  void displayAsteroid () {
    strokeWeight(3);
    stroke(9);
    colorMode(HSB, 100);
    
    fill(asteroidColor, 100, 359);                                                   
    ellipseMode(CENTER);                                                             
  
    ellipse(positionOnAxisX, positionOnAxisY, 90, 600);
    colorMode(RGB, 255);
  }


  
} // end of class

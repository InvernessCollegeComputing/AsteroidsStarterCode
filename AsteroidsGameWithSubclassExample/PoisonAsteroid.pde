class PoisonAsteroid extends Asteroid {

  float lifespan;
  /*    
   This class 'extends' Asteroid, meaning it inherits all the stuff that Asteroid contains.   
   */
  PoisonAsteroid (float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, float colorOfAsteroid) 
  {

    // the constructor for PoisonAsteroid simply passes all the arguments along to the 'super' constructor (the one in Asteroid)

    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);

    lifespan = 255;
  }

  // here we are 'overriding' the displayAsteroid() method to allow us to use a different colour.

  void displayAsteroid () {
    noStroke();
    lifespan -= 2.0;


    colorMode(HSB, 360);

    fill(asteroidColor, 359, 359, lifespan);                                                   
    rectMode(CENTER);                                                             
    rect(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter);   

    colorMode(RGB, 255);
  }
} // end of class
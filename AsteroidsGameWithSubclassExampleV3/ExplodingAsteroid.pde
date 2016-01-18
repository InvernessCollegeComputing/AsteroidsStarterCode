class ExplodingAsteroid extends Asteroid {


  /* 
   
   This class 'extends' Asteroid, meaning it inherits all the stuff that Asteroid contains.
   
   */
  float color1 = random(255);
  float color2 = random(255);
  float color3 = random(255);

  ExplodingAsteroid (float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, float colorOfAsteroid) 
  {

    // the constructor for FieryAsteroid simply passes all the arguments along to the 'super' constructor (the one in Asteroid)

    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);
  }


  // here we are 'overriding' the displayAsteroid() method to allow us to use a different colour.

  void displayAsteroid () {
    if (mousePressed == true) { //if the mouse is pressed produce asteroids that rumble with the random colours picked at the top of the subclass.
      color1 = color1;
      color2 = color2;
      color3 = color3;
      asteroidDiameter = random(0, 500); // create a asteroid with random diameter between 0 -500
      asteroidDiameter = asteroidDiameter /8;  // divide the diameter by 8. These two lines give the rumbling effect.
    } else {
      asteroidDiameter = asteroidDiameter + 100; // if the mouse is not clicked increase the diamter by 100 giving exploding effect.
    }

    noStroke();

    colorMode(RGB, 360);

    fill(color1, color2, color3); //Generate random colour every frame rate 
    ellipseMode(CENTER);                                                             
    ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter + 100, asteroidDiameter + 100); // +100 pixels to the asteroidDiameter



    colorMode(RGB, 255);
  }
} // end of class
// Changes made to Asteroids
// Increased the asteroid creation chance to 10%
// Edited this subclass so that when a subclass asteroid is created it will have
// a colour chosen by the three floats below.
// As they are random the colour of the asteroids will be different each time the program is run.
// I had tried to make each new special asteroid have an individual colour however could not achieve this.

class ColourAsteroid extends Asteroid {
  
  float color1;
  float color2;
  float color3;

  ColourAsteroid (float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, float colorOfAsteroid) 
  {
    
    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);
    
    color1 = random(255);
    color2 = random(255);
    color3 = random(255);
  } 
  
  void displayAsteroid () {
    noStroke();
       
    fill(color1, color2, color3); // This is where the three color floats will be called                                                  
    ellipseMode(CENTER);                                                             
    ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter);   
 
  }


  
} // end of class
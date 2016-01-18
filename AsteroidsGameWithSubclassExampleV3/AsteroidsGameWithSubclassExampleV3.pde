
ArrayList<Asteroid> arrayListOfAsteroids;

void setup() {

  size(1000, 500);                          // set the screen size
  randomSeed(millis());                     // seed the random number generator to make it a bit more random

  arrayListOfAsteroids = new ArrayList<Asteroid>();   // calling the constructor of the ArrayList class for the arrayListOfAsteroids object
}


//-----------------------------------------------------------------------------


void draw() {

  background(255);    // refresh the background


  chanceToCreateNormalAsteroid();    // This function is defined on line 70. It checks to see if a new Asteroid should be created this frame. 
  chanceToCreateFieryAsteroid();
  chanceToCreateExplodingAsteroid();// This function is defined on line 99. It checks to see if a new FIERY Asteroid should be created this frame.

  for (int index = 0; index < arrayListOfAsteroids.size(); index ++) {              // loop through our array list

    Asteroid referenceToAsteroid = (Asteroid) arrayListOfAsteroids.get(index);      // get a reference to the current Asteroid at 'index'

    if (referenceToAsteroid.checkBoundaryConditions()) {                            // check if it's moved off screen and if so:
      arrayListOfAsteroids.remove(index);                                           // delete it
    } else {                                                                          // otherwise:
      referenceToAsteroid.moveAsteroid();                                              // update the position of the Asteroid
      referenceToAsteroid.displayAsteroid();                                           // and draw it
    }
  }

  fill(0, 200, 0);
  textSize(48);
  text(arrayListOfAsteroids.size(), 100, (height-100));      // this displays the size of our ArrayList (so it shows us how many Asteroids
  // are in memory at any one time
}


//-----------------------------------------------------------------------------


void chanceToCreateNormalAsteroid() {

  float chanceOfAsteroid = random(0, 100);    // dice roll to see if a new asteroid is created

  if (chanceOfAsteroid <= 5) {        // if it is (currently a 5% chance)

    float edge = random(0, 100);      // dice roll to see what edge to draw the asteroid at

    if (edge < 25) {          // a roll of 0-24 represents the top of the screen  

      arrayListOfAsteroids.add(new Asteroid(random(width), 0, random(-2, 2), 10, 10, random(50, 150)));
    } else if (edge < 50) {    // a roll of 25-49 represents the bottom of the screen

      arrayListOfAsteroids.add(new Asteroid(random(width), height, random(-2, 2), 10, 10, random(50, 150)));
    } else if (edge < 75) {    // a roll of 50-74 represents the left of the screen

      arrayListOfAsteroids.add(new Asteroid(0, random(height), random(0.5, 4), 10, 10, random(50, 150)));
    } else {                   // a roll of 75 and up represents the right of the screen

      arrayListOfAsteroids.add(new Asteroid(width, random(height), random(-0.5, -4), 10, 10, random(50, 150)));
    }
  }
}


void chanceToCreateExplodingAsteroid() {

  float chanceOfAsteroid = random(0, 100);    // dice roll to see if a new asteroid is created

  if (chanceOfAsteroid <= 10) {        // if it is (currently a 5% chance)

    float edge = random(0, 100);      // dice roll to see what edge to draw the asteroid at

    if (edge < 25) {          // a roll of 0-24 represents the top of the screen  

      arrayListOfAsteroids.add(new ExplodingAsteroid(random(width), 0, random(-2, 2), random(2, 6), random(25, 60), random(20, 50)));
    } else if (edge < 50) {    // a roll of 25-49 represents the bottom of the screen

      arrayListOfAsteroids.add(new ExplodingAsteroid(random(width), height, random(-2, 2), random(-2, -6), random(25, 60), random(20, 50)));
    } else if (edge < 75) {    // a roll of 50-74 represents the left of the screen

      arrayListOfAsteroids.add(new ExplodingAsteroid(0, random(height), random(2, 6), random(-2, 2), random(25, 60), random(20, 50)));
    } else {                   // a roll of 75 and up represents the right of the screen

      arrayListOfAsteroids.add(new ExplodingAsteroid(width, random(height), random(2, 6), random(-2, 2), random(25, 60), random(20, 50)));
    }
  }
}

void chanceToCreateFieryAsteroid() {

  float chanceOfAsteroid = random(0, 100);    // dice roll to see if a new asteroid is created

  if (chanceOfAsteroid <= 10) {        // if it is (currently a 5% chance)

    float edge = random(0, 100);      // dice roll to see what edge to draw the asteroid at

    if (edge < 25) {          // a roll of 0-24 represents the top of the screen  

      arrayListOfAsteroids.add(new FieryAsteroid(random(width), 0, random(-2, 2), random(2, 6), random(25, 60), random(20, 50)));
    } else if (edge < 50) {    // a roll of 25-49 represents the bottom of the screen

      arrayListOfAsteroids.add(new FieryAsteroid(random(width), height, random(-2, 2), random(-2, -6), random(25, 60), random(20, 50)));
    } else if (edge < 75) {    // a roll of 50-74 represents the left of the screen

      arrayListOfAsteroids.add(new FieryAsteroid(0, random(height), random(2, 6), random(-2, 2), random(25, 60), random(20, 50)));
    } else {                   // a roll of 75 and up represents the right of the screen

      arrayListOfAsteroids.add(new FieryAsteroid(width, random(height), random(2, 6), random(-2, 2), random(25, 60), random(20, 50)));
    }
  }
}
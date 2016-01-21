class Game {

  /* 
   
   This class exists to contain all of the game's mechanics
   
   */

  Game() {
  }

  void chanceToCreateNormalAsteroid() {

    float chanceOfAsteroid = random(0, 100);    // dice roll to see if a new asteroid is created

    if (chanceOfAsteroid <= 5) {        // if it is (currently a 5% chance)

      float edge = random(0, 100);      // dice roll to see what edge to draw the asteroid at

      if (edge < 25) {          // a roll of 0-24 represents the top of the screen  

        arrayListOfAsteroids.add(new Asteroid(random(width), 0, random(-2, 2), random(0.5, 4), 50,50, random(50, 150)));
      } else if (edge < 50) {    // a roll of 25-49 represents the bottom of the screen

        arrayListOfAsteroids.add(new Asteroid(random(width), height, random(-2, 2), random(-0.5, -4), 50,50, random(50, 150)));
      } else if (edge < 75) {    // a roll of 50-74 represents the left of the screen

        arrayListOfAsteroids.add(new Asteroid(0, random(height), random(0.5, 4), random(-2, 2), 50,50, random(50, 150)));
      } else {                   // a roll of 75 and up represents the right of the screen

        arrayListOfAsteroids.add(new Asteroid(width, random(height), random(-0.5, -4), random(-2, 2), 50,50, random(50, 150)));
      }
    }
  }

  void chanceToCreateFieryAsteroid() {

    float chanceOfAsteroid = random(0, 100);    // dice roll to see if a new asteroid is created

    if (chanceOfAsteroid <= 10) {        // if it is (currently a 5% chance)

      float edge = random(0, 100);      // dice roll to see what edge to draw the asteroid at

      if (edge < 25) {          // a roll of 0-24 represents the top of the screen  

        arrayListOfAsteroids.add(new FieryAsteroid(random(width), 0, random(-2, 2), random(2, 6), random(25, 60), random(25, 60), random(20, 50)));
      } else if (edge < 50) {    // a roll of 25-49 represents the bottom of the screen

        arrayListOfAsteroids.add(new FieryAsteroid(random(width), height, random(-2, 2), random(-2, -6), random(25, 60), random(25, 60), random(20, 50)));
      } else if (edge < 75) {    // a roll of 50-74 represents the left of the screen

        arrayListOfAsteroids.add(new FieryAsteroid(0, random(height), random(2, 6), random(-2, 2), random(25, 60), random(25, 60), random(20, 50)));
      } else {                   // a roll of 75 and up represents the right of the screen

        arrayListOfAsteroids.add(new FieryAsteroid(width, random(height), random(2, 6), random(-2, 2), random(25, 60), random(25, 60), random(20, 50)));
      }
    }
  }

  void chanceToCreatePoisonAsteroid() {

    float chanceOfAsteroid = random(0, 100);    // dice roll to see if a new asteroid is created

    if (chanceOfAsteroid <= 10) {        // if it is (currently a 5% chance)

      float edge = random(0, 100);      // dice roll to see what edge to draw the asteroid at

      if (edge < 25) {          // a roll of 0-24 represents the top of the screen  

        arrayListOfAsteroids.add(new PoisonAsteroid(random(width), 0, random(-2, 2), random(2, 6), random(25, 60), random(25, 60), random(100, 150)));
      } else if (edge < 50) {    // a roll of 25-49 represents the bottom of the screen

        arrayListOfAsteroids.add(new PoisonAsteroid(random(width), height, random(-2, 2), random(-2, -6), random(25, 60), random(25, 60), random(100, 150)));
      } else if (edge < 75) {    // a roll of 50-74 represents the left of the screen

        arrayListOfAsteroids.add(new PoisonAsteroid(0, random(height), random(2, 6), random(-2, 2), random(25, 60), random(25, 60), random(100, 150)));
      } else {                   // a roll of 75 and up represents the right of the screen

        arrayListOfAsteroids.add(new PoisonAsteroid(width, random(height), random(2, 6), random(-2, 2), random(25, 60), random(25, 60), random(100, 150)));
      }
    }
  }
}
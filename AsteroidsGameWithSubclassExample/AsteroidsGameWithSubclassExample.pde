/*

 to add - Click on the basic asteroids they stop, click again - they are removed
 
 This program is the beginnings of recreating the classic Arcade game Asteroids.
 
 So far it does the following:
 
 In setup, we define an ArrayList that will hold Asteroid objects.
 
 Every frame, we:
 - check to see if a new Asteroid will be created (and create one if the result is true).
 - then loop round any Ateroids that currently exist and:
 - checking to see if they have moved off the screen (and removing them if they have)
 - update the position of the Asteroids
 - draw them in their new positions
 
 If an Asteroid is created, we first choose which edge of the screen it will appear along, and then create a new Asteroid
 with random colour, size and speed.
 
 */

Game GameMechanics = new Game();

ArrayList<Asteroid> arrayListOfAsteroids;

void setup() {

  size(1000, 500);                          // set the screen size
  randomSeed(millis());                     // seed the random number generator to make it a bit more random

  arrayListOfAsteroids = new ArrayList<Asteroid>();   // calling the constructor of the ArrayList class for the arrayListOfAsteroids object
}

//-----------------------------------------------------------------------------

void draw() {

  background(255);    // refresh the background

  GameMechanics.chanceToCreateNormalAsteroid();    // This function is defined on line 70. It checks to see if a new Asteroid should be created this frame. 
  GameMechanics.chanceToCreateFieryAsteroid();     // This function is defined on line 99. It checks to see if a new FIERY Asteroid should be created this frame.
  GameMechanics.chanceToCreatePoisonAsteroid();     // This function is defined on line 99. It checks to see if a new FIERY Asteroid should be created this frame.

  for (int index = 0; index < arrayListOfAsteroids.size(); index ++) {              // loop through our array list

    Asteroid referenceToAsteroid = (Asteroid) arrayListOfAsteroids.get(index);      // get a reference to the current Asteroid at 'index'

    if (referenceToAsteroid.checkBoundaryConditions()) {                            // check if it's moved off screen and if so:
      arrayListOfAsteroids.remove(index);
    } else {                                                                          // otherwise:
      referenceToAsteroid.moveAsteroid();                                              // update the position of the Asteroid
      referenceToAsteroid.displayAsteroid();
    }

    if (mousePressed) {
      if (referenceToAsteroid.checkIfAsteroidClicked()) {                            
        //arrayListOfAsteroids.remove(index);
      }
      //if (mousePressed) {
      //  if (referenceToAsteroid.removeWhenClickedTwice()) {                            
      //    arrayListOfAsteroids.remove(index);
      //  }
      //}
    }

    fill(0, 200, 0);
    textSize(48);
    text(arrayListOfAsteroids.size(), 100, (height-100));      // this displays the size of our ArrayList (so it shows us how many Asteroids
    // are in memory at any one time
  }
}
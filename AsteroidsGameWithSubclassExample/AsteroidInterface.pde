

  
interface AsteroidInterface {
  
  
 void displayAsteroid(float Stroke, color asteroidColor, String  ellipseMode, float positionOnAxisX, float positionOnAxisY, float asteroidDiameter);

 /** displayAsteroid draws the asteroid on the screen 
 
 */

 void moveAsteroid(float positionOnAxisX, float positionOnAxisY, float speedInX, float speedInY);

 /** moveAsteroid moves the asteroid on the screen 
 
 */
  
 boolean checkBoundryConditions(float positionOnAxisX, float positionOnAxisY, float asteroidRadius); 

  /** checkBoundryConditions checks to see whether the asteroid is within the boundaries of the screen 
 
 */
  
}

class AsteroidClass implements AsteroidInterface {

  
 void displayAsteroid(float Stroke, color asteroidColor, String  ellipseMode, float positionOnAxisX, float positionOnAxisY, float asteroidDiameter){
   
    println("the asteroid is displayed");
   
    noStroke();
    fill(asteroidColor);                                                             
    ellipseMode(CENTER);                                                            
    ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter); 
   
 }

 void moveAsteroid(float positionOnAxisX, float positionOnAxisY, float speedInX, float speedInY){
   
    println("the asteroid is moving");
   
    positionOnAxisX = positionOnAxisX + speedInX;
    positionOnAxisY = positionOnAxisY + speedInY;
   
 }

 boolean checkBoundryConditions(float positionOnAxisX, float positionOnAxisY, float asteroidRadius){
   
    println("the asteroid is off the screen");
     
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
 
 
} 
  

  
 /** DisplayAsteroid draws the asteroid on the screen 
 
 */

// what it does and why you want to call it and when

  /** Display Asteroid does some stuff...
  
  @param takesAnArgument  This is aa description of what sort of values you
                          should pass in to this argument and what it does  
  
  */

 
  
  


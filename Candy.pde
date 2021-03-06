class Candy extends Char
{
  //declaring the variables
  int W,H;
  int speed=5;
  float x,y;
  
  //Creating a construct  for the class
  Candy(float x,float y,int W, int H)
  {
    this.x = x;
    this.y = y;
    this.W = W;
    this.H = H;
  }
  
  //A method that draws the candy
  void drawCandy()
  {
    fill(0,255,0);
    stroke(0,0,150);
    ellipse(x,y,W,H);
  }
  
  //method that updates the candy position
  void updateCandy()
  {
    //spawn only one candy per every 4 projectiles
    if(signal == 4)
    {
      go = 1;
    }
    
    if( go == 1)
    {
      y = y+speed;
    }
    
    //if the candy reaches the bottom then reset it
    if(isDead())
    {
      y = -20;
    }
    
    
  }
  
  //A method that checks if the candy has collided with the character
  void candyCollision()
  {
    if(character.xpos +30> x - 10 && character.xpos < x + 10 && y > height - 100)
    {
      //if collision occurs then the score is incremented by 25
       score += 25;
       y = -25;
       x = random(40,width-40);
       go =0;
       signal = 0;
    }
  }
  
  // a function the resets the variables of the candy if the user chooses to play again
  void resetCandy()
  {
      x = random(50,width-50);
      y = -20;
  }
  
  //a function that resets the coordinates of the candy if it goes to the bottom of the screen
  Boolean isDead()
  {
    if(y ==height)
    {
      go = 0;
      signal =0;
      return true;
    }
    return false;
  }
}
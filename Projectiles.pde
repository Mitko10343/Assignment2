class Projectile extends Char
{
  //declaring the variables
  float x,y;
  float W,H;
  float speed = 5;
  
  //creating a construct for the projectile class
  Projectile(float x, float y, int W,int H)
  {
    this.x = x;
    this.y = y;
    this.W =W;
    this.H =H;
  }
  
  //drawing the projectile
  void drawProjectile()
  {
    fill(255,0,0);
    stroke(170);
    ellipse(x,y,W,H);
  }
  
  //Updating the position of the projectile
  void updateProjectile()
  {
    y = y+speed;
    
    //If the projectile touchest the bottom of the screen its position is reset to the top
   if(isDead())
    {
      y = -25;
      x = random(40,width-40);
    }
     
     //if the max level is reached the projectiles are given a random speed every 2 seconds
     //this is a sort of progression
     if(level == max_level)
     {
         if(frameCount %120 ==0)
         {
           speed = random(5,15);
         }
     }
     //if its not the max level then it goes into the else statement
     else
     {
        //if the speed is less than 10 then the speed is incremented by 0.5 every 2 seconds
        if(speed < 10)
        {
          if(frameCount %120 == 0)
          {
            speed +=0.5;
          }
        }
        //if the speed is 10 ,but the level is less than the max level then the level is incremented and speed is reset to 5
        if(speed==10 && level <max_level)
        {
           level++;
           speed =5;
        }
     }
  }
  
  void projectileCollision()
  {
   
    if(character.xpos +30> x - 10 && character.xpos < x + 10 && y > height - 100)
    {
       resetProjectile();
       gamestate = 4;
    }
   
  }
  
  
  void resetProjectile()
  {
       y=-25;
       xpos = width/2;
       speed = 5;
  }
  
  Boolean isDead()
  {  
    if(y > height)
    {
      signal++;
      return true;
      
    }
    return false;
  }
 
}
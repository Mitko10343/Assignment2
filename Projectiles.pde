class Projectile extends Char
{
  float x,y;
  float W,H;
  float speed = 5;
  
  Projectile(float x, float y, int W,int H)
  {
    this.x = x;
    this.y = y;
    this.W =W;
    this.H =H;
  }
  
  void drawProjectile()
  {
    fill(255,0,0);
    stroke(170);
    ellipse(x,y,W,H);
  }
  
  void updateProjectile()
  {
    y = y+speed;

   if(isDead())
    {
      y = -25;
      x = random(40,width-40);
    }
    println(speed);
    
    if(frameCount %120 == 0)
    {
      speed +=0.5;
    }
  }
  
  void projectileCollision()
  {
   
    if(character.xpos +30> x - 10 && character.xpos < x + 10 && y > height - 100)
    {
       gamestate = 4;
    }
   
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